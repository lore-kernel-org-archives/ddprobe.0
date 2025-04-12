Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46331190057
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744463394; cv=none; b=PPx7jdjGPYaLYRJ23c1eLeTDDhzISlqIzhcCet9CwK+6Kh+cxrtUcgqKxthot14JAhwAbKZmF13f5+Ys/q20QOOOlHe8Nz+SNndvoiowRWbzn1BcFGBiBHka6yI5sBe2FteFaQuNJ+t/zZWqoA9zAqDs+rJ1iER5DsoBJRmGGa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744463394; c=relaxed/simple;
	bh=MElM99yCwA6vX7FvGh88NgijqD/rY/7PMyTvhVyubUE=;
	h=To:Subject:From:Message-Id:Date; b=VeOn5OC/98mYizis+Hy1Yqw+koengKNZUgvTOY1rGG8pxNL8cXy1h4ub/E57T/MpcdLPBdKKkF4HDY4lGbP5SQcGMZ44NWO3XBbbkEXsYvO+IrpD6+GSoLUPoAT5AY5zmp/HNMqAvqupM17Uk8vZus4hawoKE1ZIEakNdGHWGcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+m7/ddW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+m7/ddW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEA9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744463393;
	bh=MElM99yCwA6vX7FvGh88NgijqD/rY/7PMyTvhVyubUE=;
	h=To:Subject:From:Date:From;
	b=n+m7/ddW90lClZnECAHhJ5iFtyf1QZl6cZ+pBcH/DmxopUZltJRHCZcbBYC6yEyeX
	 m7O+FNEaiuFQGad7BTaI75ACynhFFK3B4Vc9ARCf1QiNVbakuoJCnTT/3e+Z9p1qks
	 Itey/Z7LhKtiXAtmemJtjSp4+bVhNVzWg/E44qFId0WVy9DIi8js5EQoteTMtg5K0T
	 U9KILN03dyf4T3Alcuupa4jRRxqlr9FnSf3xXaQ8kn7cqx/3WaL04AzG7Y1bVfZK2H
	 QBUmj91NLnYILVWZsChp/OA07+csBla1p/13OpXXtNKC5t4t9ft4yUxw324QB/xSVi
	 7CyczMLkLQNAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C784C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446339363.30269.8877206309967611465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a7f1b81d9e16ad346cd81f1e14752d1316b55c6bed6e18b30e9aa72235d349
Date: Sat, 12 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744463393
