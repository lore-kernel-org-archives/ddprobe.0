Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14579DF76
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768608234; cv=none; b=rmp/Op0oktrKIYvZAr818Qkq7zrhBmw0Z5DD9QjC+xao7M4+0KT3bAC+/5aHabut+u3miPFhgCxBWHz76Pw/BMaUeTg+7KJWWhxpj8SS59xgyRXKoHBMhXEJ9KmYG/JhboBHNrks395VtmbgIN1r7sCLTbae1GJb+py5q1A8OZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768608234; c=relaxed/simple;
	bh=llVZt8bjNxfgmZfdspqIBHdJeJV2QCRP1DJQNaXgW1E=;
	h=To:Subject:From:Message-Id:Date; b=BHb6yYr4+ixSy6FWg54s+SIamXjoO+IDj2mCeqyH9g7PgC9MuJUYJKv7ARV+cFQglkIFyyJBenlTXWYIlT6D25JgsjvMFi8BMNYyZc13/JfrZxVFLaZ1LHXyZejCNHrbwNv+oItNYlP8igD+bua9QdeKar8NCZSZea9TKTTy5Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmggYg2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmggYg2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B1EC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768608233;
	bh=llVZt8bjNxfgmZfdspqIBHdJeJV2QCRP1DJQNaXgW1E=;
	h=To:Subject:From:Date:From;
	b=NmggYg2oTEeQYbKAukmF/N0FLg4H99yjM3/0vLxCehGZXn7IZABHNh8+ohC+Fd+eI
	 ObemOlJzl1GEPfMGT9v86DL8BL8nV7sBwvNpcDp4sLd81d482mcYddmEKPR/Lz17E1
	 YOb76nfXeHeZpS6Kj8Oghb1FNroOQLpU4PHzimWU63nV9j+pkZ3p3/LxWEv8bkRloY
	 4NjBC/CbGwB5J4w0z5VN85GvixATeZbX4/WTxHcrDlABaSUzWco9CY1T71DU7an5zV
	 cek46IeCj1ex82cHffEqiPj/Yc2P9TZ2GHE88madivi6eDqiHV2Rs8kYgLO7vK7LVE
	 GCQ0xtAFetNxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933AEC9830B
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860823358.5239.956862661877449789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b012154bb52c53cc17834bb0885a3290729a31b9a8f9b57a141b55b02a219801
Date: Sat, 17 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768608233
