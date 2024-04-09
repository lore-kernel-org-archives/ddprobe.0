Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9678433A1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712638096; cv=none; b=dSvDieDS4MlCnNY3bA5H/d4NfzgijccQnMk2yEiSDC3GuvBT37Irdi/pjmwyQNO+3wv81ko8jSDwU3s6fJDkraxGYKFkKn7k01SSynHjvF28zvr63qlVflj3DOt6sDfCOsuKw/YLv7/lkQhZfkYbIH32i+fmMNH94j1GGR+Gyek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712638096; c=relaxed/simple;
	bh=5BMhfOs6y8APvEpNo8daTVHM2NdSo9EHMVbA5kyBJ0c=;
	h=To:Subject:From:Message-Id:Date; b=Fzji40eRBvrrjQ6ZJmUQnory63oOiiqJNR5kb4I/vgUD64sMv83+GBe87vPY2Ow1e9Vbxccy14fAZ+vxTI50OgiwcKx3hNNDHYp/5JrGV1xdhRIe+BZndcYrYE+Ov9D5tTOK120IxM1sXcoGZBmNdZ+O7mgVKnM1Uww/ArtMveE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drlMF/FP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drlMF/FP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80690C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712638096;
	bh=5BMhfOs6y8APvEpNo8daTVHM2NdSo9EHMVbA5kyBJ0c=;
	h=To:Subject:From:Date:From;
	b=drlMF/FPEhM1OBOxzX5AVF+eH82LCc5e2jsezPUhT7+rJbnin92ahcDuBAJdnYg62
	 zvr25IIy74mQSGb6IWO4yeWPoNjZwUvuMGp7K6osvgh6Rmh1PCVUiQ3QetXhTVstee
	 vQSfv7+5NmqRsxK3myucV1PNAj3TSSd8FBH9vBIQKT0VZIWz9762ALRUjTMOVyHhnX
	 UgyDYV4KgZgnjGtR9ETj1Hh5mdyyHDC/Gz7wV6Or0F9VGAina5gkzmaTzefLdQSpO3
	 jn7t4Gq6gIDaGmvbmYwWoNMfJIy9uTK0MAwsgJwDdrKyGhM+VHEX4k78qi/UuZbIFI
	 dsmNvH6tmBd4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A9D4CD1284
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171263809642.11774.9800363205177702799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1032253bb05e8873f665786cfcb1591da1bf31ce8cca53e20aa8eb510833cb
Date: Tue, 09 Apr 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712638096
