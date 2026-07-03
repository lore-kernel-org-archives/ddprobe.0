Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341D63090D7
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783106914; cv=none; b=fDrSUIFLEds1flzJT6Fct3K0qVV0KRT5/ZoJju4NVkUq3tejf+osNoXwLwO2YPLIxy41ezhr4Ex2Wz97gbz5RqlePv/S0hZ4WJ/5VkF25pilShaeUnOLHvtn/BJQyWEgq/yrTS3zotZyA4KoWDByvW4cfMJmyp8CV92d4Dz5P6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783106914; c=relaxed/simple;
	bh=fR+VNWpH567XvRR0R7a4qmpOj9klZIlAhhop1Xxc1hI=;
	h=To:Subject:From:Message-Id:Date; b=uXlURxx5ojir3UH1h7vughiUiOgzPENmfzir46FGO2lbW0gz2lwiYaiGCC3iTL5WncY9KjvKvRT8fJ27/qH6kxwsJtNQ53I8Xk1sdMXbbzz0fltp6yVnaTcB5EwvSBgVAkX6IbBIKcB7oiYL9nul7G2KLLN7RDnO2Z7kypyERlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQYZfGtZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQYZfGtZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19DDC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783106913;
	bh=fR+VNWpH567XvRR0R7a4qmpOj9klZIlAhhop1Xxc1hI=;
	h=To:Subject:From:Date:From;
	b=lQYZfGtZeta7WKzxaifrNMVNRmP4M7rU3uSj5dAMusQ1470XQkE7nnN9u8bhMeXPC
	 uPKVISPj6po4VEB5EB14JFiWaUvxQydoZ6BAoRvkf+epYUuF4aop3sB8RUl2vVNzA8
	 5LvatPW5mvArQ6sW05aqijTKa7c/h1MyjSNqbYMatb9TCks9scQjb0OOaYMBz22qDj
	 bLpVowJxPglheJlmEUqlnWJmoNg7OjH0Ia2ySlej5X8q/fmvSbLHINYGFfHJeAf2At
	 Sl1aR6vbJBDw1CadYasUJoHt78oiLACPX+upTAcba6R1js5jRDGYnsQhp3nBXM3MOP
	 YXj5LmMchuIyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE993C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310691368.13702.10447956629362191162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b709b31f3dd66a2e9b54db0220ad2329f4434be6dbe6a5e7c52648fee3a7f7
Date: Fri, 03 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783106913
