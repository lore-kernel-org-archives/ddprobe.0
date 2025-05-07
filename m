Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6251E0B66
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746595194; cv=none; b=kpdKlasqP37XbRf+yZFUxQ5mHorVxtGUQRkxudv0p1x+NwOCZs5kk/etx36gUQlNWQgIk3KjnCGT0bFzyKznYPuPWUKDnC3D42jLTNPRix+DU+MbBvr6HzPSRRF1sXZMm/2KjVwJeqPvak/r/DTluFVuxH3ysWGQIBP9BUF5Mxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746595194; c=relaxed/simple;
	bh=Do+5S3adoQJyeVcXv27ukB4kFYauCPQQxV0s7DvPiao=;
	h=To:Subject:From:Message-Id:Date; b=CTYNBkdSZfP1B0WjdiniElj+E/7SIHto4dfgNph3KZ8FlOTsrB+eEJ5vnemECQx/UlU95wCEho2Cn1Il80vDm8twoM8PS6e7wfeZDOL1QX4GtXkPv746HIj3XMnBTjxpXnnQzDpptXwkOHtWqoh5swOESNjgczkfkmSYyPWxd98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChYtoGf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChYtoGf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD7AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746595193;
	bh=Do+5S3adoQJyeVcXv27ukB4kFYauCPQQxV0s7DvPiao=;
	h=To:Subject:From:Date:From;
	b=ChYtoGf6QZp/n+h7HUippuqQ2hCmbzhHEv81N1uslWJYh4dJqrm8exLso6iiMsSoV
	 bXms1B31gBI2GINSchDd2zHdnFEth7Zad2R+Rvz3S7JyPcDSpF2AHxO8dI/ygjlK7P
	 ABog/nL+9isb5isBTbpUZV3Dq/f+F1NEs/ZXYjY9cPF6OtUM8LlD/Z+91R0Ch3aZY6
	 THJpPHzqBJC94cEQ3CAapYbv2/G/ZL9UIRFWQMq4n8l3mDU4tMB4xcwnD0V6c4PxBb
	 Ba3A8VirqPB0ohB/RPiBGMYh2mUV+dV28US0aoV6y4O4hK5/rteJM9X88uObUKAKLk
	 e6J2rFehc5E4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE15C369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659519357.23337.2650373732002698306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b32c60ccf4b8d3d3475fe3d7263c9e238e92ae9f2c3964b17d4af78b6ae658f
Date: Wed, 07 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746595193
