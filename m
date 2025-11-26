Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D87F168BD
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764178374; cv=none; b=uqC2gLx1a+tkij6VPCg1ZRgvaTju1kL9FHoO66p4DvsMIeFDE8ASdCGdFhf6f0mnjKGdJzdCYivfoSGkjMYhgJ7BkB82Mmd0q3NmPPU/DaHiFpaWyGUvqETuaBf2XqFsvWEu82YZV5uF2MO5BXgAqJmbz8GLp5TQnP8lmgywARc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764178374; c=relaxed/simple;
	bh=u6e3A2SFWFbkFsMuADEBGB2mgUobVcywcHfFCAjfJBM=;
	h=To:Subject:From:Message-Id:Date; b=rBJWkYIv9DuV3Ug62Q5ViPD/fHifQzthXmf2Rbg8hmqgqLiXRp2HTYcGHigXum5IUct4WG8/NHM9Bz5eVKt5rqiVZtPs8ffD4LW5UBxhJs2/i5V7FJWfPUPGd+7v/yOOZlEdMHp9FRrvxNefyW4dirNJHjr4p56kfvE11aIzGxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdeI4nqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdeI4nqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA3CC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764178373;
	bh=u6e3A2SFWFbkFsMuADEBGB2mgUobVcywcHfFCAjfJBM=;
	h=To:Subject:From:Date:From;
	b=NdeI4nqqcQ3tjSdBFLiifNV/Qiz+PWgF6AKl2712ZRR/+vGK5dIQ0eO8jq+3iUnzS
	 KH02ELqxU0qrcbtJy3jYSkW6688TVh8861o0U+qui4BtK1xVh2sFSf53DmqdwFu4J1
	 esJlpsGXYJgymL/lsuqcMDjAha9nXlKxQ1FOks2FDnMq1IZBrz5ukiW8vmxSumx0Og
	 fIt3uibJYhPXZax8cXXfCkVNAI5wECJrspFDoJtAyhZYBkgvvGrMyhZ0qn4OHMdhgx
	 jHWSj8n8CtIx25SKCDEb0+eXI55LKDNOSYWFti1BYiUP+OuzqQZQ6OXHNZpbmHPcDG
	 z+dld86061RQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF67D1118A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417837360.4520.14046149417084102205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3b71ffad0cb340f4a7fce080a1d413b86dd0bda84cbafc914e840727062b19
Date: Wed, 26 Nov 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764178373
