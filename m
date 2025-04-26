Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397A02701C4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745695194; cv=none; b=Cv7opCqjAP0W1V8tbQ8nMl/9Gzi9vFAVdakg1fw6TkQxyGv8Iq1yXP11YoCx/MwRddNAz4dwisX+Y3Wapg1H/AboAwKo2MXp2ZzX7S7g3hmYQFwles05RI05VIo+YPWn9ccxp0E4IavolnAvQ4Xn7Nm7OaVJE+SnKcJflabzHZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745695194; c=relaxed/simple;
	bh=sWovmqyryPmFJs4Gzx28bA37a1Ry5MFLRDoHz0eQZOE=;
	h=To:Subject:From:Message-Id:Date; b=GWW61TgA4eakAMIZNd2v5fRHUIkFsQHyjekgJEo6rj7FbTUx5L5FVZJvpjssw7uaZzvyM2ypLhgBy+om83xxGxFInWI3PokPCL/wH0n/FCpZYbfsJ9ETRAKl2jlJvwhG0iibyUDOK4p78Gf9zCLVlJiPNu4/gReB0NaWI1iPk/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8pC/Aso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8pC/Aso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DCDC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745695193;
	bh=sWovmqyryPmFJs4Gzx28bA37a1Ry5MFLRDoHz0eQZOE=;
	h=To:Subject:From:Date:From;
	b=d8pC/AsoeqPUS17r4hN+g6661EVnO0cUa8CopwThCMjs2p3D8hqm9Y0Mfx4hmpTbC
	 twoIFxd3Eu4xiMHOk57DAYXHPdML6L09391fdH1kbiEBD2CasvL9wcBIA7vaLbQQg8
	 aibt3QLDsD7ovCdkwUazGXlun/ms+CVoK3a6Y11mv5mSvNeM5aq5rOqJdej4BE/jcL
	 kEwC+ay3RDVrR96wbaJIO+Sbe8YAp68+gU4QiicsTV79Gx+aqxdeMj+AWEtp79M0Oq
	 yZW9mAm4pe5C3vlilLKEFZ59PEpCHYKi0p0nbhjALIZrLXX6mTKLNoq4qskcE4iscP
	 cC4+/fnOBbr0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9480EC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569519357.1763.11095475005609832500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb70cf7fac6e70d2463e2b7309a21604ef1c6432e0a480276ec8d8b52cf65bb9
Date: Sat, 26 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745695193
