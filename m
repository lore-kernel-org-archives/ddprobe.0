Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CB429405
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757446196; cv=none; b=ogS8d9pidMlkIEmdLDsbyPFp5xyA2IfCHMF/qjWMUth6SXcgJvZ+2+eK8jxCyqq8Wc4/4Wifu1h3hn/ajjezpLNAhIxvJYSvaCa3eCNkjc6bL+gqiCz0Z1PfARIFpREwxGdVaG+Gt5oDOR/1JEhmVFONvsxLvLCrJIyhIrU4yCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757446196; c=relaxed/simple;
	bh=oHO3bAmHsjaKrJ6t6Gj0SMC8miruoS0ccrAr9CIZjxE=;
	h=To:Subject:From:Message-Id:Date; b=CIsh3+91UVDhqTLdnRGl4yocZrAsQJJqgE1mQgZfV454uS3hM2BrMB9PcbUxygLQA1CUvIFrjaTktYXdwmrLRmepJTMbeMqyAaViAVZCpZADLyXbdpoK7yZ5yAiVbdjEF8gWUek4LjVkCj5wPtxCmIgMfpT8CtynQx5BelamPE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPEz2JKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPEz2JKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A162AC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757446193;
	bh=oHO3bAmHsjaKrJ6t6Gj0SMC8miruoS0ccrAr9CIZjxE=;
	h=To:Subject:From:Date:From;
	b=uPEz2JKJCBz3xTPAgs/Dd0YW/5nN1JMYnjGru+9k5eTpG5LJI4O15WNy/ru4bNMWL
	 CrPk5ZHKh7Ij7unOdRKy2MFqbiFqATpoXJjnIHGHMBW3KI1Xb54EDa5PsrgWA0bSRk
	 sMvLD93O26Te++SArYCDNs5V3nnyrrQamo4Y2RC2hD16131yx3Yw4IXSao8wocV498
	 ino+GHKjWP5BADXcfVMpka6hwnYqSL2SwLc4zxrYdbBP9nfR4t8Wcs76pdWqnoKkKe
	 ZNUgs1SfdZYO8h6X51WJblIc6aA45GmeYcJpXKVNwNJzHHFe8SrmDVjq5HKJYx1mgw
	 WBJXsMH7kPuPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6ACA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744619358.23802.3859023760518993999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825f879d6f0a78f410b47029a839be419415e974c9c269e7bfe75fe6497018f6
Date: Tue, 09 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757446193
