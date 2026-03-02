Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6BC277035
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772476494; cv=none; b=ddpLCn7AUaQz7b/1xz75v3hIAAGM4rIEIqbhO97f0nWSrcDmhw3LVuRY1SUrZefbljm+FP1O5XEyXioxrjXsHhIQ68MPhViKKWBbPYuC2J67DbjB1Ut41739z4pWO/pc6jUciSn8QCBQOqizsvTLCNdQLVxZ6gXNiIuHGFsMHOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772476494; c=relaxed/simple;
	bh=X4Di8PtBc18gN8m/Vqf6hympG+GMTnlFpX871o12wC4=;
	h=To:Subject:From:Message-Id:Date; b=GEtrYcBpf6W0FSvnPZoY3pJd3Ej0csFTstkEUNPZXS1CT3x6YiE1nV+6dyN9UXmy8uPOD5BbRRBOpbz81bkVjoHxRqmwDCwDTjnwL50WVvWotjAc5fVfa4n3S3ymY9jetWXUpTMJ7CCeAxaiUUY1oQ6d3Q9ckADnBWopEP0LZYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hy1iHJfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hy1iHJfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF297C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772476493;
	bh=X4Di8PtBc18gN8m/Vqf6hympG+GMTnlFpX871o12wC4=;
	h=To:Subject:From:Date:From;
	b=hy1iHJfSvxfBGpSJ8VgL9TT6Xn+grBqb1/IxMQOS3jyPE157m7PRmrPXxZjjJ4sNv
	 DDYcVQpX8RoXmGEIJqBDAZtVOxN06AbtO7a+0XURRqt1u9uCThapJcJf1k0HN9d5Jv
	 hnXaC4B+8VrKidDoy1jTa/2Q22jaobzCbFihuhLMeVt0OOzs0aW6CAmhwAqEHWsu+O
	 b+vjHsfTYSF9e5m4PwL4hO4A4w+17xq2aXpHZZHG/s2xpRzg0iwfCz/kJz930mKcyZ
	 lqRZk0bVR6Aav+iAWS3DjfYWoQXmUYsrZzYkgenKMJhCWzkuc1xgu6CbCdXzRGPdpi
	 g4xpuGIuVueZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA6EB362B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247649358.22247.1985220407548676487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfa4d4fc1e6623953cd4c7413d02c02ea32c41a671251f17399309f905f8b23
Date: Mon, 02 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772476493
