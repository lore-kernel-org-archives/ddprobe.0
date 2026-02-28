Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158FE1448D5
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772267094; cv=none; b=QBbvMLmde45cTcibp2Uxy/o3IoSCb875YS2hyoB7LpkqTY6pgFVZgzcncpVPldQ4OpB1u79Ahfy+3W7LFyMie9DRCISr18q/P1h7h6N/SZwBs5DtKJihcY6LAdLyYPWRNf8hWNFvKvvOYxjMzqWDVQk7PnkhVaTrCf5n50sbYb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772267094; c=relaxed/simple;
	bh=NGmAuiyqXr088gNDpxBj/7yRIOqZxtWnyPFq8k5TLHg=;
	h=To:Subject:From:Message-Id:Date; b=r5a5J0TszvhM0uTuMyD5qQMq0+RojSHxfDZJfLyx79FbMu88Uu6qGz5y+To3VY0mM+lxuKCyExItMdGMPzRzBxliTs1L0TgbhpkX1elr78VSkqa4Y+lmZPITr2g9Lu6VODH00IxVLN5Bw/WutcXyRFCNP0zS7oEFRBmHbSq+OmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PApWJhxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PApWJhxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58A0C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772267093;
	bh=NGmAuiyqXr088gNDpxBj/7yRIOqZxtWnyPFq8k5TLHg=;
	h=To:Subject:From:Date:From;
	b=PApWJhxCtUevf90RdCxsQfPJt10yOnB4wjnu5rIat+3Y66YM9DPDfxfi6NI0uYkgM
	 JOoSvjpK+1cHfFM9EnxDSeEE2mbvi7iYBPEuPEVHjjztq3DGcjm2Ezvx9ATXCJI2KP
	 LtxaOIAbxu5u1/YQd+ZvcRCIljNi4XPBdNhUPzCLoUKnox6Y2BzQSTc+hEUlMFxMJT
	 E19lLaiFMIbJ0sQ5oChFZ+b8y+ZcRAjymXybts9OfiCE9ea4zF6ZUT6QrKHDxZJza0
	 S6DskX/GXdpVb7XtXu0bPrIq+LeMhR9ENfF699KliFmvpgWqQhZOIQQczTZFXlyG74
	 kzfA55tUihQZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9564EFEE4D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226709357.18333.12818627828935204894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee71cddad6c51786df99bd278e7c4861e37afc0d22f6d74dbb10a93c9aa3beb
Date: Sat, 28 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772267093
