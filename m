Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2343A3502A5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762469994; cv=none; b=P8l2R7dqdsVDJSxOWgjUas9ahK3NV8MR86w1qSCPg4A6rFRkIjTWHVXWLekT3AEgYHS1Pqc2CUvPj/wkOhlG+oM1e/9YAHkmNmuRzSmw1r0PVGR6we2kolOkoLdFwyj6AwJ5hiH22WxXEceQVydYeAuoe3uFvPnqeM3sg0yrpHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762469994; c=relaxed/simple;
	bh=5CqGBeEH9WPPHzq1A1g/9Z9xMtaRD10pzLpA1pqoqAs=;
	h=To:Subject:From:Message-Id:Date; b=FuMAv9JPgZXBEqDy6M/pvv0rAM5WyBRUTopzYTaGyssvaHE9oC52GbMFmPewmRBsOmu6kAC4YcJGlIRdaJ3tHRMNTD7nUJM2CHQEZ08wAykYzdJBMR18U6s4njbo+H1rpPLWYO6li1BZ185tytRRigLFz9nRyltk90eqbrgeV4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwRmKD/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwRmKD/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0917C113D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762469993;
	bh=5CqGBeEH9WPPHzq1A1g/9Z9xMtaRD10pzLpA1pqoqAs=;
	h=To:Subject:From:Date:From;
	b=IwRmKD/4fQtwVN0vMN0ZY7HMfgms2fOKZw/1b7vSJ6n6CVxACQyF0DYbCN2NeT61q
	 FzEV/9QNDp7KAf04/Yy/AWhQ1ulxREUB5BNEcWov7Uku+tSojB2paPBc/NZMWL8PcY
	 yuFqLtwA1D27UUSRGBsF66FFn+yU+bRcVN9dYPwk82omdLmhdsBaFNJ+0q7ZcXsGdL
	 TAZxfS+AAKLHcXxE/vWDHOAd0WDC8CKq13ogkOZVoWlE/3rj//yJqZCQkTkDhaOdZl
	 2NJOMzntiS5HiIagwzpTv1mcYo8z0WIHHSTb1RfHFCmUpkw+bE+47lka70W0TI4r1U
	 K1ljgYNbcl1og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D5CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246999358.24870.8461443940841318766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c8905e26c7b1e11c1a61af2fb984b136afb24ecca0a2172515b275a3ec537b
Date: Thu, 06 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762469993
