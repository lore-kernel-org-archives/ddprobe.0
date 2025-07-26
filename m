Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281D21DE894
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753505994; cv=none; b=TOHcQdkxZHBl74GqG34UGWpmHMYHIUgVu056yWgvlbxD9rsBHGFt7HdFEqPBxr8598OmQPipJp1ScO+UA5tE8tdOJn9oa+NPH267nvev2hRvJGyb9TcZ+VKrkCEOe4Whl9EVtR2pG1MXLbuJ96TEiqxeBynJ2XQK4kgOcLTrkQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753505994; c=relaxed/simple;
	bh=/LMAUiXAqOW4yMMKnARrHnXoKmi+d05mLfXvEb8eTNo=;
	h=To:Subject:From:Message-Id:Date; b=YEGaF7RoI39WH8Oeh7/oHlyvFT25zmr+f+yVHcwFCBl15ZrdJOBHE8TvJHATgZ0fU90rF0yv2zYdQXtqTrdQyhWSwqWc+IqGuZa0yRu3N8SRY8JmMDx+vL3YDO7ulEp6KFV0C62KUf67fneIkdeu23+zkSJwfgE4Ss4dDmPmGmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bI2Nb94+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bI2Nb94+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FCCC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753505993;
	bh=/LMAUiXAqOW4yMMKnARrHnXoKmi+d05mLfXvEb8eTNo=;
	h=To:Subject:From:Date:From;
	b=bI2Nb94+6TF60fD7rK30GB6YldUp/K2PDIZX/QPVAQMPjrYbM1CnDamyLkPkAWUh4
	 4DXapn2zSGEuWr2LgsnWjAUw4IzvJl5zKOV4+Khp+gstBOHUoIoQETdWxbXBA7V2vD
	 CmOTffuv0XPFn0gmgP3ihrl0NHKdjLqTUETVCc1woxL2uG69sJXpO0yP2fux3H64K1
	 CPlJsrrirhIRynDoJc6QG1Ewb+jEPm98AU09g3Vds27ghnB7aY2mf9UE7KDCSrwArt
	 pRHjZ/YMW5htMfkX4fs2E5Q6Us8JtRYrnJ0j3fwFJOBtwiVAfQ67Mwps2D17EgPU38
	 oofBM3zbtO3lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92318C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350599358.22227.13052770374983289101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d80d1d3811dbe550adb6bfbe05db40e24da9962e7e3e1601c1c02342b68e588
Date: Sat, 26 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753505993
