Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BE48479
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737399953; cv=none; b=qydnFg0c0ONWFQs/AIK5PTxkxNPxsLIvPUqMVGx5FZnvu+1XaB2mLB4+hJ7MPIDvGJ75GbWH+iZAzWhrYQjdBKN/xxPQHixTE1cwJ8k314ilRotn6CUWtCsOkaCjBUxNuT/hufs6VIpLVhGwtJC6DkW/aYnC1XDkvVo9Xy1+Veo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737399953; c=relaxed/simple;
	bh=VGuRJ6CugF3thuQNmPmSO/96fD8f0F5953nek1QvWbM=;
	h=To:Subject:From:Message-Id:Date; b=AN+N8BstcQ36S3t3fHeDMIzzyj1kEht9nckAetEJV4MPzsHBNDgI0y7yHuiTN1/vWEXhA/AciAtU/bMcNqNNCRVi0sP6yVGOW30ABCbGgxjy7UCCWMMkj/8Pm/5AslQvIXxatN1Y0Lx8LbAj5HDv2Iuk7CKzdev1a5mJ6OxEdnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MA86fv4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MA86fv4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D92C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737399953;
	bh=VGuRJ6CugF3thuQNmPmSO/96fD8f0F5953nek1QvWbM=;
	h=To:Subject:From:Date:From;
	b=MA86fv4d9zKiFaKHsNk5kH/G/rH89WO5dFayJ/3q/pdbJ/eSYkX4Tyy5HoM0MXS0h
	 SdicEeIS7E0UYbD+Q/PTPXwsFtkYcEp9C+FchHxrtwXknCYvN9nT5CO3UoQlaLQLoh
	 g95GyLdX/Jvl/leqgYAiGqWDT+JDg8KH+FLqnXZx+alTPTvNywOZm0bGl119F8K7/D
	 242QpipRl7Bt5MZ2s5/93nU5JWslZUZ9Qk+G1GKqijJDjVutUYCyjy++YGK4afNKUz
	 HS67jn9IMTlKXHHi9ehYVRUQOhEAEsQQ0BODTsaVvIfvvUac0BsNw/KIo6zsOAy3Gi
	 ie+yKDm0eXCtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93658C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173739995359.15902.989950776962302167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c7f66c049e83052b6c1502a86c05c197f2d816d7ab7eb8e92f00d4cbad9ee45
Date: Mon, 20 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737399953
