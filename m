Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4176717BB21
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780808074; cv=none; b=a/AtiVWE0hvXOQFkUXVNl89VYYc0GEl4I1tq8ayHozShrDfDL93lG1PCG5RdS0o60vxAhR1+bRiOID0doxrBad7y0CbO9LIsSFeVsAsC1CHTWpqj4AsHmpT1Ourh9kVRJOC/3ET2WWVNT71XJDl1g7S5v9Wz/+V2sYShS7B2P58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780808074; c=relaxed/simple;
	bh=csZ9YWiPsECoL9nZ0Vs3lUvi9czK85XrFIydK8wKa4Q=;
	h=To:Subject:From:Message-Id:Date; b=VOeINUV/HiXS0tQlYq23OaBUVWB7+loXGBSx9NlChPri2LoZvEVU6lbwgVaoj1Z39LH57IS+ZeuM/bdQ8mcAEpyMYn0ORyK1zESefU+sFMIx4SaUfKviqt1Rd8CnK9D9gYObEGv3aaVAA2qDONTz5z3zA3viiLIuUgqvu7LHXgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ahy+CUmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ahy+CUmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B97C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780808073;
	bh=csZ9YWiPsECoL9nZ0Vs3lUvi9czK85XrFIydK8wKa4Q=;
	h=To:Subject:From:Date:From;
	b=Ahy+CUmQddqCqltgmgILs+KsjJACCJUwV4vkZtzJ2TCwyRuLoxKXf00FYrKVuegN3
	 SG1GVmPa9so6qe9vX6WopB2GLnoY8og4eqcBl5DUeEnQaiDzUp0DBFUCMpnnrlBysW
	 1WuWR4obskDl52WXF9qMBqF0jR1kMO3clFZx8ASwzHC+elc44ixvNZda5mxhvseTAU
	 C7r5YPlQEqn1yeVPa6lzjxlfDqzGjUmuq7rCGF+tCCG00imIaxriXHyeKj700nGA0c
	 M+cGPi6jdOK2IzfFHN19g2Apcj++ZuFMeL+CuhpYGrVR5DDhiAGiKyUo86RsC4gJkB
	 DmbwjvHpo3fRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53BACD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080807370.25621.5429954135696281682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba5f82f8c596b6a71ffba2dafd50375f72606dc8e4e729958e2b628866905c4
Date: Sun, 07 Jun 2026 04:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780808073
