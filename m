Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DC5239E8D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750312194; cv=none; b=pNN0RKm2NpiXNLivK2k0ZJa1uRxUIZBLs9f96b2DA9bIMCvnG1J4UHnXGydzx1/3DJjdsKIiABrgLbvnR0ZONMoxY/IXN6mIa3SCh5nGqQXczGLL2h6mtU3k7PKDBfqax9as7a3Xk1xrBSgkoG6ydhXP90iNuTTj+5MASQcKTWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750312194; c=relaxed/simple;
	bh=odqpomrTNIQF836SmuGMJSmytF+Uy58MYeHf95Pl5To=;
	h=To:Subject:From:Message-Id:Date; b=asRJyWRc0OBVzC5luUE/ik6gAvC57fgpfMhyhliPFNcxYSlb/6BlvQ8OIOPwFmckat19D9hJONXj7CUiVarJ63ZGzunYBP1LMZkmvJ3X6RkD0uAjLFRobfhFmNhGolsoOHF5Fx3VMOH0xs2DPkrywdehu0a+fcOFbsZO/UnSZUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OExmY6kY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OExmY6kY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2864C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750312193;
	bh=odqpomrTNIQF836SmuGMJSmytF+Uy58MYeHf95Pl5To=;
	h=To:Subject:From:Date:From;
	b=OExmY6kY/8VatW/qxZYQ7g7a11zY94k9fD9FHZ7bBbY3p/NupI544ceGe6sebF+m+
	 RwZGdaMEl8qsJWHk3/27zQzNXaBQuAduTneYIXPBozBlJu6n8dDtxAWiUSTyP+R6fF
	 nHGq8NCYKJeqymRRIS4wYTg122Er371tLzngvVcSHrN3xnJmiqygoH30bjpi6aVtU7
	 JMA2dQi6XEuve/jpIHBal3LNlfEZAoRhHJM/B/mhSRlwHY8mP1RbdOdkpjlAXCoPcy
	 NGwh9xgivR5FgtI84RJq4qgb1JVbFpaYXrpB1qV/W80UNvfNJbznrOrAw8Vky0y6mM
	 Jdo2vcRkvbG+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CCAC71159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031219358.10843.11955574581550738703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26c8abe4f21c20a194e62acb0ed4898952ed6ddc374d35d656ca065bd111fe3
Date: Thu, 19 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750312193
