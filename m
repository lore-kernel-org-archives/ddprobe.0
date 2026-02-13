Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E0026E6F2
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770966894; cv=none; b=m81/ZTr5GvzeOEdITev5o2XiUDb6ls2EXSuMCHamMt0GIsjFmgYC2Q7lTenJ29LDo+HzVbwY4zyB+pFCYEK0M0GhB3Iq/JzUE9EVrXozUKfDoavIDgVKDMt+XOhBCpXkl5z/iXvaAOfjwuaRBFHVbLXQiYCidCXXb6ei2SrzZ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770966894; c=relaxed/simple;
	bh=leZvamz0+mjqgZUxNvGLbHLDEyrnchH9RTCOA5hepk4=;
	h=To:Subject:From:Message-Id:Date; b=UDRIx/HEJAMHPcjEPuB6pNmcgoqz9qIvFG69yn6nLlDGrfNdAaZS5Tez34xOmqMUPBcxJD8ituGdwzeHoXG7zAQNxWmVC8vzqWUvIY6OAtmH8c6dN9oLTKJEIgUW70gaMIHEMfkHVTRv6ldet4OUZmzldo1ACYyd4SMiCWgm6sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYX6hsVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYX6hsVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4175C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770966893;
	bh=leZvamz0+mjqgZUxNvGLbHLDEyrnchH9RTCOA5hepk4=;
	h=To:Subject:From:Date:From;
	b=eYX6hsVPz61lT7TY3xaF3klA4HrgzzSsCjcluZtIxxK7jNfjJLCv96v0Ccl0aMAlT
	 RlxqQcXltFTubojgbijwA8myaPXwCl5gCvm3gf7ursrpHTauB+MpmvnnUrhwgSMR7D
	 MGSYsX6N3yztKR8cm29sIPpMY8rllJstOiaWn/i2zEvuYyzlsNAEMYml/zpu+6bZCp
	 TQxwO2RUxI2Nh/+8hsyYAdeaOnuEUGJGFZKOWcPvSuPg1FGQ2ejqse6lt88bi9pWP6
	 79xwGrfW5IBGhcENuB3eQgsHKPyeFAm960BetxFVRdMkeY9UFXkCqW//P84WMjfxmg
	 9Ogoa4/J7Vakw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35B1EF48DB
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096689362.21242.10943922164957151058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b23d1f781e46870f875549d6819f3b34d94eba8b3c5dffe9c018ae1074704e
Date: Fri, 13 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770966893
