Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B935257855
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780728874; cv=none; b=EdY+vOLGtlufEAAvhc7C1PNgYWEVXZ23vewLzUofsWYDcpGc6cMWy92sJI9DkyOQ+TjzwzC/ni/A7WZ8uD1T84vZer1VWP4BAzJaTglIQfose3DL3gScBVb8gXniRgbkRgrz5pedQ3DPsnJlaEpTI1req1ZdgfcpvwFq8RCEYQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780728874; c=relaxed/simple;
	bh=mUE+a5NDoGJ95QRDgbP9quoCRmrFf6HP1eAKvUv5hu8=;
	h=To:Subject:From:Message-Id:Date; b=cndiG3XspPfWhdGbbfbl5Om4Rd/upI05j4/IL3aImoEaFIX5bRKnZ9VaYmY2qd+prXUxMGOcIKHKzDDCMJ0EfSFCSAeiiWqM8DsBEZFfNrzvC8j04neYe8UYlzRK+0G+JzXcInzNzfCHzjBACmgxGUJvsm2KhGJHuVPZspSFAzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRT9JXSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRT9JXSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64FAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780728873;
	bh=mUE+a5NDoGJ95QRDgbP9quoCRmrFf6HP1eAKvUv5hu8=;
	h=To:Subject:From:Date:From;
	b=QRT9JXSgMwC3+D4wlyRwOkLFVEpLlDUy+t7/BXAC4rXlWQSZOhBXLrx6gBUntrq66
	 6HBjRcE2mmV9s8z8eurVKDgN25A8V7eWPR6exKEapE27ikScPbJCupkILRYi8/V6V3
	 lFt9atoYxUu0Kt11fRDgtze1Y/kFJPx3HYmcg0+4YjBlxzQeGKthYZzc2o2YQ4epjy
	 sYK5TOH/GyPV51/C024yZQbo5+v7ULrEAB5/DkZzLp24x2NAyegbhcbkQiZmdKB8Mo
	 kBG6MnXYTx+FNcG5Jhf7g5QaFVFwK3xWQ+VkDCqNAGud9M5giqkJaPMyhZ/Hz4fNmf
	 ipuGM/JNVeUHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91A3CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072887368.8092.10636834898846167401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c92784632c4f6904f3532b8a5cf7862a344746a2f5ba0a6676a3b1a4a15166f
Date: Sat, 06 Jun 2026 06:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780728873
