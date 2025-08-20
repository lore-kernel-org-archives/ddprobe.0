Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D99D19C542
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755662994; cv=none; b=GkNWgqvXlC2hPFnm0UPlk6v0ZLY12eqaucT/zkNvgOj7P5Ocs+YG5drF1D+KZML+5N5I8Dp3CR1H8e4KXfzpc3JLxV/qpwxMAhsmTi/iDIuUGsOZvrP41lPIe/JrnAf/8zm1DJGNmpR0WI0uqYwS8d8WgObXAS++1en95ILO54g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755662994; c=relaxed/simple;
	bh=dhHR2NERpoD29J7uGCxfLBdYYUSiHgoFQ83GHXnoQ8U=;
	h=To:Subject:From:Message-Id:Date; b=qk5iRg8AcGxOkwiPcFlPqOWZEHlVqLLn+SITTRnb/kLNWnh3g+3Ez0MfrSPfIgXNFbTIfjVffngiJBp6cnp11pVfbdiyNS2xrnEHzNHLrv0/eRVLqZwobLDgh27w11t7dM5h09O2UOgVyRui+LYQHv9dRBDeYMvysmvbfxJM1YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQTNYuLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQTNYuLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3103C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755662993;
	bh=dhHR2NERpoD29J7uGCxfLBdYYUSiHgoFQ83GHXnoQ8U=;
	h=To:Subject:From:Date:From;
	b=iQTNYuLoN8jJNwwaNeReUEjoB/3y0NgZFV7IzxVK2d89PpIv8zrV1H6G2yWC9BZNQ
	 nI+JFQxtOG9Hiq8SN7bmImJ+YzqhmPjhWG1gETqtkrxo3QBw0AsE1ZHXDtyHfE6RKi
	 I1XL9cHQlHpxIrB88DxaASnqchieU1ohUHeKOPJh0f2Nw/KOn0ayO59tE+GL+9Owqc
	 rSLf8aw320fW6/krkoybmuKcEQ+4iJhyjeIJtnuRB0a/nkkd9muWS4RsjAQHH9ahij
	 NgvhnauY+Mcb6erY6ZxAYFj5oeooG6wBcGsr7nhblen+alBwdFmcrtDKbYbsHRpvu/
	 J3U77Q9UVStYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91594CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566299357.25238.9521458031651430910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a18da27e703d9bcceda154833864e06d85c5c66dface65b0654c44fcfeb5c0
Date: Wed, 20 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755662993
