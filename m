Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C832772D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783814914; cv=none; b=OxgHJZJEmAMoqxeVchASQiZA7aqPj5hqJJwaiGYg0mJOr3ITTreYlYg25Ys6z9Dz8uZDZFkTVHyUyGk33LSFYgBEl9R0D+li6uZ1rjFlnXb9n7TGJfhsw24iAnYy4dhu1dMnGCxFEY2MGZL/+yjXK8efs3VBbdMTTDjcNwBxSqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783814914; c=relaxed/simple;
	bh=zNHWpcFWwU7EJ7LOLNxxFvF9fGBYx82RwxttQ+j+GKY=;
	h=To:Subject:From:Message-Id:Date; b=DVaU60Dv++bWobwDrrd6xD+J3LmJB8oiLSoLrOGFE7uBGl0IbpwGSDeBa0I9Zf31AHG5OIjj8YhLaJU37HxFdqrVgyjLUs/ewXWm3AyI+ifpD84j6GEG6VNTzPfZ05/h7WzgVeIU1wYoxMZxEyJqyGHNBIZv1aB9l0TyUZRkKus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDWSdm0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDWSdm0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0584C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783814913;
	bh=zNHWpcFWwU7EJ7LOLNxxFvF9fGBYx82RwxttQ+j+GKY=;
	h=To:Subject:From:Date:From;
	b=nDWSdm0ckC3cKnKRmA/CSB0h3kNaiXd+M8afCeTWzm2nYrA4ojtOg+Z8Vn075kQ+R
	 6Vcfn8NTpawVDLaFFvEwcKiZ8YZWcUQVi8qBV7aC+A6/mN8S6gcTyzq9BsdEHeMKMR
	 +9UVpfMpYhhJCirzabqonTu+lilw3jBwQ1+1yAK7tUuUIjfDaMQrgQgbmqxhWfb8VT
	 7DERUx7lyRRamUrTb8I6YA3oZz/wP+eZzVH08FbCFxGHq9QmPiQX7ehj5FKtTUi+9f
	 w1H6xSw2eINU7wRhLxBVAWmGyXrdJwmiVgI3c/2viSl860Uh9vyV3TZiwfCXeqrgoI
	 x3UvMIynLb03w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AEAC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381491368.5473.13854639519896009878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b34c7c9ba9321b0e9c1142e873fe6aea9c1298889f68f86ac1684747f0a514f
Date: Sun, 12 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783814913
