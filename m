Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8EF30274D
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755123594; cv=none; b=t83L4JxpdtP4U6Kr9D9kIwCRuZJZDu/XtFvc9AXoruIQAsmPFd6r25W6ymq33KOaPHHm0qhZMOkMLsBz1pPiNPx9WWujAV/LD/LyERPV0Vz73CgfqjcL0mDLkeSQ+QjEvBJe7x4Avh3V13XEqGSrGJemVP1u4vSMklUygb9HofA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755123594; c=relaxed/simple;
	bh=uKDikJ7adhEjOTs+WzaIhNiHT28PYoNzoeAo+h24fko=;
	h=To:Subject:From:Message-Id:Date; b=AK2dYDJZoYqbyuLQb+deBsplHXxyC3tXatVT1U9YZC7j1zXJHU0u/Yb3+vI6y5pH/VClPBjX42vEDwThA7wupCw/KejpLOhAcWj30OXjIy0aDfdcDgMkQ/WziTAHR+O5UoXiDNfsTIYuydIegl/9NwdVPzTCUTEf8jlSiNSpqDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ft0dKsIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ft0dKsIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C517C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755123593;
	bh=uKDikJ7adhEjOTs+WzaIhNiHT28PYoNzoeAo+h24fko=;
	h=To:Subject:From:Date:From;
	b=Ft0dKsIpo8DECiTramOdask3dl/vpSiJi4uGLFyXfYKIFdbhymnuB9POVojeH3Ggu
	 NACbn7FVkyZE8SggiwpU614MPAqq2B4DaIkgT5Oae+hxoglrcxmeBuddNvU1MvgnXj
	 oqD/pqvnX1ShrIcCnlTr1u50nVCCX8WnlEdpDcjAsjnbEe8MK3sJMjjm2jhsJpKLwO
	 YqdTEEzf7TDEznloE5Wtaw+YGKAGLkhkcqfugGNssoNbieuJYAseKqHmGtAIkDTSCB
	 Ah9F/RJPs1OYKGgn9fBAndZID8ecKXJbvwmPXuuv0Lf5a7B7lTyZRzaXlBmIFrWaSB
	 6yI2C/HXv8YVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E485C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512359357.3008.2931866237849932260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c47b02b60097053690e76b8f3554459e8c49d3980b0afca5ee74c1cad716e64
Date: Wed, 13 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755123593
