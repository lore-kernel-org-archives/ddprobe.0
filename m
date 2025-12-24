Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA271E2834
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766577234; cv=none; b=tPbkx8stqsxL8zdBmimU7Ow1FGLWY2wwCvmulvqUxevWocygSd8GwdZlH+FtVALYBYBtTf3gTkw9z5cMwN5Pq4bcuZFXcSoo+PK6y23jG2EQOLPCzsnqhGcXi76T+ZU/jTciBtNK206yGnwmR54cKHPyqY5g6K1gccvGfdpHoRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766577234; c=relaxed/simple;
	bh=i3G+DmQGv9tB7K8lWmxrlo4OB4XvajHO3gUBGPAGw00=;
	h=To:Subject:From:Message-Id:Date; b=hin8DG0BdC37aHWPz3x6HF72YL4PpQo66FOqTVoQNVDTFbcviH0J7Ix4LPm3ARVM+hZII1FBgrSktQZt6MBUzjdwxZqHsA3VL1CHijrijKwledf7axOPZ2m8XOx9zp02YH/cnwHtf9RwrqGqDoS99Dg6zgZgooaEs1sp/mLpdtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQEQj6wJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQEQj6wJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC02C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766577233;
	bh=i3G+DmQGv9tB7K8lWmxrlo4OB4XvajHO3gUBGPAGw00=;
	h=To:Subject:From:Date:From;
	b=BQEQj6wJ4Gx6JV3mMtpNYGI0cL/QOIv2h28GCgI+TDtIkqHnf7txWl9wWF5SzPRc0
	 +tvVqiM4a9Z34p2eBneszUZJqXb18aq0coeHOZNxmZixh9NN16b8C8+l8muyuN3ruF
	 VPzcONtGsrEfvFfq3JMrqtvXC59xFPGRsnFfpVrfr0UN3Bzdje9t2td+eMpi6Ow4AC
	 jwTI40lgjhjFOEumUjLg1U64FC5cwdGeLBoZbNY7E4a78zcsg6pxvLCmUtepvjZ3Hi
	 Iy52cRjn0w+3iEagY+WMEpkoeBhlc/pp5I31BlfEr6Je1NqhPRNmzh8WrDxulBCPE4
	 a6TTGMXgKc/8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F291E75448
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657723357.25548.13062831079780525164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27189df65ea554286ff57fe1a62aa440aae07a7fab7c8f403c567d0f76c5d43
Date: Wed, 24 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766577233
