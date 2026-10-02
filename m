Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0FA1D5CC9
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790913034; cv=none; b=XRsMvpcjKNanerScwi9JcI4OldvD0Gj6LfOxkg+sGCVlfOv8YYusmejWwxHQT0Nj/exlDgT9y3RP3g8pAkfajdpiKA2bNbBq9zIrsOWcWEFJyLNCyyTe+qDrh8VpbWCWT0TWVDKFB4rZ6SxiI9V985YN5UM5mzyIWDCdVRXkrbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790913034; c=relaxed/simple;
	bh=uza573UKxs8y3L68znlX6TF3E8V+lNpmX7isrc52pkA=;
	h=To:Subject:From:Message-Id:Date; b=TPUGDnYSLrP8oVrKaSXG3ACLX61mEnSjlOvX6dtam5eg/Dpbx2YFaR3eSi0IBP59BkOuEo0BK7QaebD+aI10c+z4D2GhCVFf3xCMvvbTsyIQZFDhnfyzAwKB3I1g1TgP8QGXsMf6qdAKLK8B+C7/YZRwWn4gVgcR49AXIICesWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iibK7vDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iibK7vDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD45C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790913033;
	bh=uza573UKxs8y3L68znlX6TF3E8V+lNpmX7isrc52pkA=;
	h=To:Subject:From:Date:From;
	b=iibK7vDLq4LvpTQlxbZAtmTUvtjLMW5Qghb0lWkeVCyLU6+GPkpZFo+aAfiZsjHxo
	 xvFRl9yYW7xLcctT0QFsPFTnS4OO+s6qoXyExnCy9v0lxFowxLB/AyqIFgLAineerr
	 IV4UH4nK7il40hA+ePerl4Ww8epU/w91WQdZT/iLRtg5K/wT9mnK4mCSzoeRFJ4Pb8
	 EWBmjhBpaT5vTN50NpErStckoOcBW7usWT8jYt1xOQVUY25tXVdCCymeSg6t6VX2en
	 /fWnpDU/EeH8UQJ6RBnv/mAFjN8bhSPZhYUygifZtL5aTCmJvdn5Yr0MKIvjx8KECW
	 RDYRnJuw5jfNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA119CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091303368.1993.7651010735519144558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea4a804c543addb7a18698520eaaca2272d7e37f4306e5eec93c086e32841f0
Date: Fri, 02 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790913033
