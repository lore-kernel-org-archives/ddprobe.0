Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AA916D9C2
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763284854; cv=none; b=pTjyn6+lkNogVc4bWpx5MWoCHhW9naoH3yY9U2cvrZlatmLYJIisOiFdMeNJnB4i30yTfB1MZcmsUSbA30EtKGsAJA0GzqhFMP1J+KbwycOe/ids3hRsxjVsgl3UbuI/cjzd2+VRyZcU9BPXqf9/fGVHLVgmXG+7UCyo5viqSSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763284854; c=relaxed/simple;
	bh=il+22VHwfkhexVZJgArR6Y/WBas1x0qyz5XPiHeIaL0=;
	h=To:Subject:From:Message-Id:Date; b=cZw/WoJxHAzys/zWzL1ahzRp51o5wrAuEGd3+5Ic//gEilpO/DicGn3wuMsZyXPVnPn2yyPg4feNKdqyQAZKmDKWXeV1NWuHqvUxC++UbCepFhekICHBVdd6+fCljcCY1s9TXyjUKgtcbie20zwd/+oTl6bBj0umD0HQIngvBh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZ1aVEi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZ1aVEi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FE1C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763284853;
	bh=il+22VHwfkhexVZJgArR6Y/WBas1x0qyz5XPiHeIaL0=;
	h=To:Subject:From:Date:From;
	b=cZ1aVEi3XLObs+Mcsm/bS3jYP46MuOshtI58j5RMtoJ9B47smeV/NhTyKaHLFfMdO
	 pk7ukGw/Grj0UjGOqr6eLQU1xfCIRtKua2taKE19YDBmfC/G5fQo9dbxzKQ5mu07V4
	 QGZdxjvyXj+WaIdAdlYkWv95itH1IpGeB7u2oGZE0WAimWUxnyU+vjFbXB6KNEmt3V
	 o/OoFdkHFCabVbEjuhW2mfqGGPtnrVSnGVvdTXWnyWjYOjzoayzYGh1LMsSlb5XIuA
	 QadyBIJt6cbr6+AixLmg+miKHMmv+W2XwxgkT+//ylNA8zMMrVWJBHrseGpNFlij7m
	 6PITVy9CLEH6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26F6CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328485363.17910.8477341460576507099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253cdc5e0ddb41c8a23a6ce0cd72486d878e05ab284de3b12274b519a7508493
Date: Sun, 16 Nov 2025 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763284853
