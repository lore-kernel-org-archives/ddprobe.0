Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2966013790B
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753494594; cv=none; b=QLxa0vhj0iV7KbGM5cTZ+s9SX3YhWr9JFyo5lgbKCFpyIUdzsBdOY4NRsnoLVJwlyceT1aKhh/gQpCpMjLsuLrjehDsqXskHAQsuFyOmHRo05dYFuELPPYlECMVlyVdAi4WkhDjJe2y1Jpp+2J5v189A9dTBLx1ieP9HnfMPl7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753494594; c=relaxed/simple;
	bh=Zk0/zEbJDjMOHaiTt1Pu/EaRe9+26u9/lzAfPoG7wDo=;
	h=To:Subject:From:Message-Id:Date; b=KODdNFQs+BLci4IOvL8UkfMtl2wKsF5HxzyPa/UAKHwIWLk8CgX7fHhyesYTkNmyZlcvJ2eh8uUrbJk4TNRcJGwj7/saApUiBS5iUwnPnEhLtaQwi91uAOdanDaoI2VIZQfmh+lgcBTnjrwovra5sN5hSTE+HIepe+R0gkn3rNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raKLXJ9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raKLXJ9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A10C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753494593;
	bh=Zk0/zEbJDjMOHaiTt1Pu/EaRe9+26u9/lzAfPoG7wDo=;
	h=To:Subject:From:Date:From;
	b=raKLXJ9rev5+5hEr2iM6mff6kVcO6gkY2mzlynBDdHc2AuY8J2k+nMFN0FUqgRW4+
	 FUIhXfMDSLRUwNiKc3KsPDaZWd+CbX3sqJg7LMiBkpb6aclObc9lJ2pIfnGvZFNbPh
	 XiypufxqiqclDtAQSCVATWuDjDoUgquNQAUwRcPO+TwCMMkOycngZhaOfmzsdzBMvv
	 cg1XFKe8BNLn64roAhRSkyMfHVdCUUS1wl+vRfzL6xJvRO3/0ghMxEgqVOGudKk86f
	 tFera1H9C5YK4VFcYgDGfCnzBczPskew7sLGpDbWQ60QlueNTvpNat3lxSxK7BJ+Ud
	 WHWJGPnCngyWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6A7C87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349459357.2249.4835942833291814491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e490919149888e4f72b2abea681a365415af46f948505a33df7e2ef1d157ab7d
Date: Sat, 26 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753494593
