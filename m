Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B8114AA9
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754088594; cv=none; b=WSh+z/Tq33gGDzC6XKfmQAFLC9J/ytTovUZp7mRWsIeLXLFDQQ2sapZY4EBewchJT+j39qFcm3vxh47y/Iot4fJAGJ3iNPc7wA5iN2rJE8UbrIoh+0kT3D28dASAGhP0P1ixrJeARrEO2PYNlU36cIqwC474yF/09mCaZ03CDUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754088594; c=relaxed/simple;
	bh=CMYWXIRaVtOfPtPtzvc/qw2ZZx/qvSfUS1ha3H/sR6E=;
	h=To:Subject:From:Message-Id:Date; b=Td/xCwRM2lJtUF1IzzRGPVMwwMIccGGnSrXSk2xK5DpyQZ1N/IeO8NJ1T/z7HTICn/XfV+Nmi5oss24kBfmWpWxyujXQftSY16Gmjydh5i5iUCsIIN39qqGOQxh47De5gU645whtxwKIgH+BDB1wuOMjDVdWhpckSuNdS3xHEtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHRVdvkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHRVdvkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A881AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754088593;
	bh=CMYWXIRaVtOfPtPtzvc/qw2ZZx/qvSfUS1ha3H/sR6E=;
	h=To:Subject:From:Date:From;
	b=SHRVdvkB0NdtfyGW675A0QVVTv9L+2EuF1cjz8+c4+HjyAzkyyfFINpUvtC68xEtj
	 44KWgof1jUemBd8JvURjLOAftpYnaakUJ/WGmUf2SF5Emg16jBoIUIs2hwVcwdaps/
	 HWoLLyYVSitUjxP+jRL8jbY1biGuKbmbVKqC7fcdhQEdIkPXYe5QhVBOkqBQ+oBKuz
	 yum+SaqHC66ecDB3z/Gmr2b5GJcdL0BaYz7PejuFitRhza/KyBkvE3GrQnyjeLm9cL
	 Om1y0vPSElg+EQri5ljrhim4XeQWAFVMoOneemeIXmM/6t9hueTxS0ivTgDYnekZKE
	 mlleiqGPYMFBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CFDC87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408859358.20935.11799213346297590722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa716c662f19732495a37953be81fb5414a7909f678a6c51a65da1dab224f07d
Date: Fri, 01 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754088593
