Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B03225791
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785822634; cv=none; b=R1uO5WpJ9pvA1qJVXgE+327/hIUY2KL/1CvgrD1pfSuloB9nepNI1OXlcWLoN5pfTpgbt7dWa76HYnZJ/jt3RimOuE7PC+otkb+CBeHlAN9SSSgqyCBhW7oL7hCAZSXSUoFiTFndQiNRXYGbrQDzJ+TjO+trQZGKcijRIKB7zls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785822634; c=relaxed/simple;
	bh=LKWFSHCeRaaBzZYWUdHQqWE+WBs1sPzIvOknO2kTiYg=;
	h=To:Subject:From:Message-Id:Date; b=OrVa6UW1aBXbUTYrl9eqIo5Z4E3NqKh2MLsmrM7MPDyEQjssCEAbaXDVHWQiM+QWRHjzHB1YrNsi+jivgoGoilKkMzdld9Qqajttc+Tvz+zG0P3eXaX4l6vbQbdfIxwIX2DK4d5yOol8RSy+F0lP0am39UC7Z9QcpLroq5gpt5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUNdjesu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUNdjesu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A68C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785822633;
	bh=LKWFSHCeRaaBzZYWUdHQqWE+WBs1sPzIvOknO2kTiYg=;
	h=To:Subject:From:Date:From;
	b=aUNdjesuWEkS16senrJbvZC3KSZBOiMgRQ6hmachFjchqIvcenUkEYhSClrBgHSZj
	 j9KcTQRFFseRCwVn+LLuSmq8wxQWSJrH4WhJOLinIHo+ejk3HNH+LikSDjZFGSL0jk
	 BsNSCJoZwI4zFrCkFQUaKKDnqYC1nHEXS5SJ4Y1ZeEPDZujs0FSVCSQVZ5l29CR+gr
	 f6LSG0ogxL1dSn0NhAKHIkm2SMQSiHqnJe58wORwFQ/nO1+UVOOw3X+Kr7oZwXxpnC
	 C+C6HmwvSZXyKUKkkz2Q8hVS9ZkCTrOhhNlI8Zs9lVgo0wSxCwSA2jrV3GqcQuSII1
	 gs63ZcmNVmdJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE864C55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582263370.5618.8111779440838516619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0061f80b9df423ed0ef62964e8c5305d661621793701c9d582e21b6658bdccc
Date: Tue, 04 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785822633
