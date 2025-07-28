Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3142326281
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753736994; cv=none; b=Wldfe2/emuJVixpnL3QR2kjh6EMVXHCdnmjU9RrDBan0F12eKPXlRgntOf/8OZjk7v1lFjkMft9D7oQB8I79OkE37a3aJ45N62j8vLx6Qq/rT6YXJI0idEjhG2A0UIhXF7ptzu5KEU+MrVFlQgYXDRy4SAeYINNrIm2OcrWMKLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753736994; c=relaxed/simple;
	bh=oF4kEU8HTdY+phe8rRn8/eFkpPc/0I/6d5bR5V63YWA=;
	h=To:Subject:From:Message-Id:Date; b=Jedqx305VHZrYI95pe2DHBZk7M7wA1P8kPB3iAcsmN+AlXN9590XCBF21wLiUIUTWCuI6lUjBr0v8CE8NhBpBhIUCrt6gr1k5E8y7nOSOE14gVDTkOBsn3QsnBwy10vJRig9gPARx+63vmmdsniP7YgLATscZfqeiK03ytzbpI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogbhU+H0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogbhU+H0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C5DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753736993;
	bh=oF4kEU8HTdY+phe8rRn8/eFkpPc/0I/6d5bR5V63YWA=;
	h=To:Subject:From:Date:From;
	b=ogbhU+H05o7NyHKxP0J17OyIflGdr1p1JRxPxghp/jhvyBZ0bJrVRtXgXEpW59Kxh
	 jny+uhRsFDwk4mexUCoUteLEaKoeyMCMKINVxGlBnjzbQG1SUiY2VtL8j07on+PO8m
	 9O8RvTJ56yaiHNAloGBlulUS68MN4d3cpau78i/4Yms4httkjMwGZHq+xJY0gI/Ztf
	 asbyl8XogMdazAwM7YqrNY8pHcf8erp7ByA5dmBv3EbopeAZzUR1SdVo5x31Hs+LQo
	 f8CdmnV4peUPenmYjDeuWiX2oxQqXl0MDUDaSBpf6RE7y63r5WTYXKqJSDqVN1BRnU
	 vJRzUWs0Ls/Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD0C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373699358.17349.3036146668293042527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2382f354fb3727503091257d58d578efce89ff4b4a60ed9b1a9730b478acc93d
Date: Mon, 28 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753736993
