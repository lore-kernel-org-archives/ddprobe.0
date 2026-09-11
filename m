Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F1D38C42B
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789170034; cv=none; b=bu5mYk0xaeNt2ce37U3GS/+rKnjSA7NLbrsANRHJNEG1f5Jf07r0JQnzMKFkMcax5LTLy0VTvEQHERG1tMEXJFDGieOhmczImY4qbZbMqYEIHhuaE+7w20leWGFBL+fTBwtxFcvYARLKYPK7XllAYeyjXmAr5cIv8FBepold3OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789170034; c=relaxed/simple;
	bh=15LDjlGNODLpbGpc0miXQzFyVu81AkZrZHfV4GOg/WQ=;
	h=To:Subject:From:Message-Id:Date; b=uKVwvFFf0UHp5YDZFuEDAABOadafXVWd2fAMhNxm7nATuPhIasUWrvtOlCeXTHzoCB1/QubxKWCYLFZutVN4Kr1wou5zPZvxkpgS3Ku0T+0gxN/oLpLWCZ1r8QuGhXE48HDYmlL3mf2KtBU/Zzi6Nol6mqw2gWY4TiH+RSB2Avw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRII54OJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRII54OJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF902C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789170033;
	bh=15LDjlGNODLpbGpc0miXQzFyVu81AkZrZHfV4GOg/WQ=;
	h=To:Subject:From:Date:From;
	b=aRII54OJvHiyDkbppamnQ2Bwust9EboL3UEbsMjvgk9UVC1eyXWI8CmDqnHhKr3+d
	 gBZQXwegjx2ZoCarLB+Zkl9YXrVVp465+Mavu23UhwnExZmDPgFjXuabOMNkjcxFU4
	 7AkvCEJK43D6u//7zYqzOVwnyMc4y7F+e4Miq+ikFD4b6JkGD0ts6p99C3of9UZdAa
	 2U411Be6REDEtSQRmXBAWh+bcA0uRq0WKwhUnxTpjDjGqcyBaL5LiqqGBACLg94IUR
	 QJtkPdbE9JPMjjpdXOnXBSVAXA61AY+t9HEcf9o6bds2xc3aO3KWHzBwfVjN/mOBxA
	 qyVLh66IUnvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC04BC88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917003369.9164.7913772370644079751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b51fb3b755c72fe45cfa50a0e35d0a522d839a2c301c5efb482346d8ba7b1b
Date: Fri, 11 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789170033
