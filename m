Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D37188713
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770521634; cv=none; b=X/lizl77akY7fEc8R/OtbLaVdm4o7IJgLpbMwFxO8xdfowdVPZa5SnCyKIoASsYE0oEKwvWN+OiU8VKAZ3S0RQUKMLDWXSQwKTKQTJtmZHS1uyadL7e1fnNROe6iEIYp/ZiJitd8eB0UUrNP2WwZwJKX5XBcsexkZAS8cCP8y0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770521634; c=relaxed/simple;
	bh=aPN1Riw/tlsyH8A/MHvaOA1HamTxwB/VfXTAHHX1IbU=;
	h=To:Subject:From:Message-Id:Date; b=bDKPV37ksIy7qq38DW3VS3i0p5z7cT8SJ07ue4bu0LxCL6fRZUNMvWo1RVOk83/+fzGv0x+xypchwKwg4478DzQI86Am1gHVAknx6dxk4v/zvzlFuDd4vW/3BBMEMwC/DZetnHcbzLYko/C92ARWOthwx9D3b4djxbPOHDQnboA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JE6vV7vg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JE6vV7vg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA83CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770521633;
	bh=aPN1Riw/tlsyH8A/MHvaOA1HamTxwB/VfXTAHHX1IbU=;
	h=To:Subject:From:Date:From;
	b=JE6vV7vgEbB96zdunSU4B+SfErqNPqFuIV/LXbccj3GlngSNZ0qWJ1sobYncSgwqg
	 aWEjI6lsddkQ0WKceJJhl38I9mvr4JxcsajU9ino4YCJXDtUc8R5p8dmsDouH40fLT
	 nGBMaCseY7rZ5NxvC/60MWW+KKdMEi0N+EP5441+2+b//QJ+HOm2lDanFRHQlvySUb
	 dcgw3W5glwdW9OCPVFpxPV0RRvWykctFsxcZVNFzPirVik+CRYaQCVODix5chetwlf
	 wgRdpGipR1jjNIFTCp4LBgan2uAdAGrABH7KrhWYPxPpVarrWPKcVbuV3LZw8ZFH+1
	 SPXYPgkzH7lAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C61EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052163359.19514.3441041631733381575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3005f5e040e9c3e3de07cc8ba9d6288ac4a1fdb3dece659218bbc313ce8794a4
Date: Sun, 08 Feb 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770521633
