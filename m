Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C338C76026
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769871833; cv=none; b=AtRF8ZWBbb3jh5MGLkGk0l5MoQYSH7iPvXFwAQl6ErgvJpQdTN58DbS7oOpbOMxJD5qe/Hp2PvOlTHTxkXc9j1HjHOrcnkyoxbWuhgE/la9BxlM4D25yKGFqhiLIXFNJwxnOI5WXohoUHiUuIugq+CgGtmwhCkENWVXzk46MOZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769871833; c=relaxed/simple;
	bh=ooJsVi9eOvDJqrqMXwz6qAZNxlcW2QEWKkJGuP8sfr4=;
	h=To:Subject:From:Message-Id:Date; b=uo65t/jki456vMLO8MFR/LIPSs/bu5CvcvB2y8DPMGdN+zBolHfIGBZpVEoBm3XAJ45dg4zz6sKt9jS1SD4g5okyfQf0qENOaXsCdenIx80bSlIr0vTfoVkX+zZexzsvebup5dIPYfVx5Fdr/fLdPNhdoQ/QZHPF0gt8phTKqts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1eIp4xL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1eIp4xL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4421C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769871833;
	bh=ooJsVi9eOvDJqrqMXwz6qAZNxlcW2QEWKkJGuP8sfr4=;
	h=To:Subject:From:Date:From;
	b=D1eIp4xLFAAx9mNzIWEc+fRo+rlsXBcAAlr2Qrg7BWvblT7qZmzyKEsOgPFXWL3ki
	 z4LJ2sjVFKufdjhdIXf4MWBgCtwHFJjlyurifqJYAcjvPqu5WGOuyYH//1TjxHgrkO
	 o1sYjMCVXPsq8Ps7M1doTJIQLVPsMXNcbOXMMR1rumgFG9Y45X/g7mzfVYaVXtYJgo
	 d/iUW0zi8sM9ylAs27OpbY8hmHa9SobhlRBHZ93Tp4Hv4cEBTAvdZrqvf0N/lP+1pR
	 ciJGldwJ/t5KLApY6QpBDzYSYd8P1eSEfY6MQIOW0lAzglCN2YwLdS1vq7DOZ9XTJs
	 3rc4SX80uNLag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A2BD79779
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987183358.29455.11792135289454102370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66756830f960b391b124b4d95a5f09b9d292e96d121890e0ec37c767a6f6142f
Date: Sat, 31 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769871833
