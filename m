Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205463321B7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760699994; cv=none; b=N7itmLP4gOpvAPwdMgxC7PJQnog5q4PHVCR57romRsuU5+7rESTk9W/OhL/Pok/lrQjGNbwOA586lS30Dw/VX/F+mVEqRFd2QKZxAyGsipEfRlpDa5dthDNVQgcLU5m9VcFdObOu8+BcLMyraEsrZne5bUYEl8N/WqiFZs1s0ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760699994; c=relaxed/simple;
	bh=Uf2j4N4X0PLLi5iCAagHn/YkthJBgh9uBwVQ9By/OFk=;
	h=To:Subject:From:Message-Id:Date; b=nNYWkWVgmbimuaKmYwGt4K7VHxfeKhNPgwule2D+jXH3ts/7Okw0yl/RFaH5vPYh9RSC5zdL2VIChxnUBgrbPD0mA+aO/V8cmz1HcWuJ/KLEU5IFaCcOAUwI+jFN+SJvO3jJ9sUE/WQvaWhPN10eqllCJkJm2Dcz/9iEcXtjjME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uG1u0cAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG1u0cAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30A3C4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760699993;
	bh=Uf2j4N4X0PLLi5iCAagHn/YkthJBgh9uBwVQ9By/OFk=;
	h=To:Subject:From:Date:From;
	b=uG1u0cAvNcVugMT3k/YCcusozaWLauxNlYD7PubtnC7HaweBUGpUtOMX7MbUpxo/+
	 tgydMrNMqy05GVKt6n5ehwxBipd/1DEwe9xdD2PM5mGg9uVfFJRk24yuEBWVNDXHNO
	 eNONEfIwvLN5U/45WvSPyjZhMI0JCs6xJSknH2DKW1YmpMbWxv8wZtAlqLjntYd9M4
	 7Fv+geKHJSFK71d3T/H/LyCe83uCTY4mbZGSjAdRfUxtWW4xY1EIo4QlMYUwvHgs2A
	 O+sFETP+qeuH2idfg8SfWj1EfSJWhmwg97k/CDQSRvtHcxv0PvmQ5pzmgqssFT6ENV
	 c1h8Ex9P6Hx9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCDCCCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069999358.27920.17505645565654486321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a8d539ab838340a7dcd01d12e071a1d0ac7b95e5d2a096bf1d1b8bb82d2fc2a
Date: Fri, 17 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760699993
