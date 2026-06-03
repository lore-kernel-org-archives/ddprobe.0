Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E72371049
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780469074; cv=none; b=mZzU0QonbmX+5hkobThomIn8GdU5BOWLcJNO9VIqrkAfOD8D70Q+tf43K0ViN+EoenEurm7WZXDjKIshB09FM+D/9+U8K+L9HXV0PpST2IMouNkMK//O1zSizbSBtmrdaBVFR0O+icXp8YsJsfRX2dXnKl22CiCVLwPbPp0JIR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780469074; c=relaxed/simple;
	bh=3aTzEeH3L2v2tlHMEgOHwsGU1BeRrgHYI8Sf/EZXAIc=;
	h=To:Subject:From:Message-Id:Date; b=Zct/zsQMxgpALtROD0jWHUoER4nsexcdiHcE+7cLW+u4MHlS35pxIstYlI8vtcUsZG00sTeQoOaoXOCZweqyoS144YXP08IpxDsw51nZWmtIfV9ZADwS9h3zczFLs0OEUJOnccuRT2obZ4UeFILRbTkepQEbDv00CUNbRGt34yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhOgTb+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhOgTb+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8409C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780469073;
	bh=3aTzEeH3L2v2tlHMEgOHwsGU1BeRrgHYI8Sf/EZXAIc=;
	h=To:Subject:From:Date:From;
	b=MhOgTb+1chvpoYODhCqhhT2yC8lWbwARIUjwKn7wm/1z7hVDq1d7kVPtB8+ozExkG
	 OVxREksdSInnnxX0MWaHqgpCzAlnaWU1KCCt/LhPxkSwI+hA62AeYSAJewEYta7flZ
	 /z2wq5zIc5txn0idPxS713JewqKLDLw/iiLZSTVjQiVa/hVSRKnlZUcKf8FDu+c3Jc
	 vX46qGHsy7jYyFitlhM3MCZZsZefhA1hltpV06LlcvmrVp10iNGehfLZJkP204geu6
	 dwJVem4eDRAohfXSGEFLYORMT1lknpLWtLoc/9XaYbQY3H56nnd8qf7ZlUI6a2jyAw
	 qggP8ep+j1EqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96DACD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046907368.26211.14691922183975911415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0add19aac9d872d8dd4750af79fda34fc1e87f8234fec2554186dd35ea5190c
Date: Wed, 03 Jun 2026 06:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780469073
