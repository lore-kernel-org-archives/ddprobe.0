Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274A829BDB4
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772952294; cv=none; b=TJuJ7baV9aZiuwMR62x/Kj1srC54wVjhguUlsoH9hTfWlIknarXuDNlaWi7rLGOuy/PGuA2l0pTya38J9ov2sdbfuZ3+vbSCTX2QWFRZsC45cEYkHlLNvus1UIRH2Ys/RV2BHuu7Vn62yebLqGxYpGxweK0RmNuiVCzBZMoCEwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772952294; c=relaxed/simple;
	bh=SO8fZ86RKlvOv+MeW6iCqMSL2sPz2lYC+T8D3K0qlF4=;
	h=To:Subject:From:Message-Id:Date; b=sHzWxByc83O5h5E8//2d+opdvTL/N0igNZ2mfJXbpYcp55fRVbR+fozkKEholOFTNckHU8oQLvo6IT3xTUPcepH1B0+xjC5HqQO0EKDgnWkyshmsFFF2fIvVMiU1KA3No9sYDhhxoGLoeh0wmPIwDx+QxLTdrhlzh3hZePlnFGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGoszLFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGoszLFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F24C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772952293;
	bh=SO8fZ86RKlvOv+MeW6iCqMSL2sPz2lYC+T8D3K0qlF4=;
	h=To:Subject:From:Date:From;
	b=PGoszLFdo3BNlFBe9NGQCOZAw014hozGKGMWEXfvqY07U9MpEh/hfHVaHZSrvDcNZ
	 sa6u1auHiHyAG/ootxp3Dq9+lF1pG9IGbtdIFzPKGa6NF1EGUzMtZFrZu9/O5OQ6hn
	 ivjvDYLV6qY6fXVja8pp/iaxDP1iToHtcALxGT+fh7Gd4eQw3wjfS8TCy18K8e2vkS
	 eMNThj2jLu2b/Nf2SCSTZdmqiFTN2yaSr+EyED3QedD7u9TGMIAXosmHkVwZT+0Hgs
	 guixKlnAsuzwUcEHRmqvZEl46uWOTSZQPyXiUFV/veokWM5gfeXB6eDA2y6ZsIw0yr
	 vonNTMwv77UGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AEBF55137
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295229357.30430.15594583349320851347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd8dd7af731e272828b88d6fdc0733ed8e1e20b1abd41f09b06bc95c8d2c7b1
Date: Sun, 08 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772952293
