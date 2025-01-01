Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9B810A1F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735713954; cv=none; b=STIXxoeUq/vp9uvNrblpr06yOmJSdDmDHMr92wZ9Jr91X/6KShNgn+8uu184NhVY1WviKUGAi1gkLJYCUlXnR6x8p+qHP61oMLZPVmGU521dEwPmR8457tjuk0gBYBI4sRO/c3725eCdL2c1VEZCqtAZIMKT/eJJXFF8ONEDr+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735713954; c=relaxed/simple;
	bh=2RpSXvPSGJTmMu4cO3pinde9GuPqinCzdaTymrpm3y8=;
	h=To:Subject:From:Message-Id:Date; b=TnCLJE0CfpTedoWvDNBEPosMhSZRPLtdDToILy3hq/ILWc7gNHfs/FN8vlTsmIHGXkajr3OE3KQd62G/E55YNNRX+10eKrwpoOGRtf4OQvpqHXn+99H0JtO8uN/C0q7+1r7RNcjrFTN5Emof01EfvD0noMHceWMqVHY8l4b9pEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZIgxCdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZIgxCdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36D8C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735713953;
	bh=2RpSXvPSGJTmMu4cO3pinde9GuPqinCzdaTymrpm3y8=;
	h=To:Subject:From:Date:From;
	b=pZIgxCdcaJ5Opcf2XnSSGVVpQVp1oXktd+T59fKNXJ4GAVwlpSTyEetpae86hTOhu
	 qNjhBvbmsXR1BsrXwTV17cF+Gq52VXYz4ihDH0DyN0RWUZ6BVVsI5kRuUcWyyvCa9z
	 HdFx1M+vExdiczRVcCE3sc0lwQ2W/U5Cs8ZwtSTB3SnF8DpypXPFY03AFOTbs8S98W
	 63aixJmGbcHGAyt11KxnzfpQsQfeq0dsuCUaXjAFXZcy+ER+yiqMJUjOsFIO8j4CsB
	 jpj4Tno1p4xhvFqZwqDwkCcnvFyppF4Z0x5vXXszZNE9y43/+VgO3WRCO817Wyd/Ao
	 D/6fu8CAQ/vBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2816E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173571395362.9769.10456731152803736998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c7bfb10a65b0d4f46476909d5458b142b188ed9eced353b178cfa280440278
Date: Wed, 01 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735713953
