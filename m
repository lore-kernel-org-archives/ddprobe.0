Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44127139E
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728015954; cv=none; b=L3DiTj6aktdlEfkMm4MfdKJBXh/iEco9dXzSNzvaQE9jBH67mFi4cf1ym3SrKoTQmlb7CzL45g106JhKGg3ChIRGDdmERE62CEgi3GNAw1qiChW3NC//H7urs/eRd61wnLB4TPw6vKnoDqPGZYyG3ZU7JyM4zw/qBnGwotGKy7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728015954; c=relaxed/simple;
	bh=vGiyuOeARZcitIrphVAROvQmSJyqNf6N4eQqFm5m7Tg=;
	h=To:Subject:From:Message-Id:Date; b=tkLTixk1LBN43JPivSXsRA8RcwP/JWDguUdaW/ESyy1KA7jfrjnAxOKR2az7fPT0D6+xCK0ixPs1aXix6GAiv/VyjG7OGChjFSTpw0C0ksTMLy/YXqY+BegINQhZ0lO2Z0BP91BDd6hYCdT/af/nb7Yo8G05vZxKD3+BUArFNgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLJbOHFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLJbOHFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE1FC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728015953;
	bh=vGiyuOeARZcitIrphVAROvQmSJyqNf6N4eQqFm5m7Tg=;
	h=To:Subject:From:Date:From;
	b=nLJbOHFmC5S4Ss5s/XdB58hrWKS+QfxWem65ELnq/95z7VjiKfs/N7KOAqoCei+Jd
	 U+FIwNvjIs/7LMR+iDkoKN8UL0eHqcpIAtFBkDH6EqrvUHepCQoJJqtYrBGwZ57YbE
	 VXTDwOWfAO9NDG93YzbVmd584TVeX7idkngXKwyXdHQ8l8iAZlr4hXLUO69Z7q9tzU
	 Orvw17Ig9jSr1DjYIxiP1ntPv3OSi6qhKdGoVRfPQhGNtd/2lPEkTfFVZZP5eGHEp0
	 WkwG6joYxN1anr8gc3/SPw9nOSTbFAn5mYnM2gP3FANpLrLLaXwm7epFKNHbAmPwaG
	 EcrD4+CtfCbPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22C4CFA746
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172801595365.2988.1191606984625670462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fd34ce07992f81f213caf49ba15275f17ab6731c8362f3f463596550d476ddd
Date: Fri, 04 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728015953
