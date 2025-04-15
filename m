Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562886FC5
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744678194; cv=none; b=ABiVJc+rnp+11bl5SecPlxSGc+dREQDGyUUHfhLPSsjF6fkwFLQdN6NDzzWM5DZGzLSEUeBEqrdxUH7GD8OUThInnV4M9/NQAKUL52qvYrSJaZTO2orKu+NXk4LAQfWaP53KQKO9LPgfE4AJoH1YXPTVpw1TS5J/F/4dfyfrIGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744678194; c=relaxed/simple;
	bh=O9GAso/tS/+RkLK5Vn8JoKFgUtggrhODHq7+th96pVk=;
	h=To:Subject:From:Message-Id:Date; b=F+CfajMIK8Cb0y1jMRthOWz/8vsTrvwC8cl56emDATU+k46m0EGS/kA+gZRFTBsmJynd2CyxZVJ/iXHPuceIpLzf5WRzxRLYepOw9/ZFzJeScGLVEjRBUf0bHz+Yc4dzmZVkkHZ/V7ym9Ot8uRUGRZgQ58QXKJNogxO4D0gHlWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtLcAypL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtLcAypL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C56C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744678193;
	bh=O9GAso/tS/+RkLK5Vn8JoKFgUtggrhODHq7+th96pVk=;
	h=To:Subject:From:Date:From;
	b=MtLcAypLp//lxDVZIPZejbMOAZ/Dr9dMGBppUvwR7RQx7UcAFRB8Km85UYwMIArFK
	 kJ3KOwbTH4IibIOpQQ2DbMm65p7z5IblO7XfvNo+g80xPyoRR5pDeOZB8hOyNPUhy0
	 42ayhpJ2JCTR5h/qdPzsOEIcB/ED/BQN0MnLoF8nyEgeAKYW7w7v3kuuUhQD4dp9iJ
	 BlR1uohz9XflfMUcIO2K1nQa7ZjQ3tcwpmJFoVRkNm48X07DEPF8rJGjvLqIqfIhPG
	 k3lWb22a8Dr7EnMeXstSczREU/1QYJWPxjCbHOnEbCEcV+itEafIq4Avv2sC95Rmch
	 GeIT8mFqS71tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A74C369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467819360.18945.8310621210009490244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebbe848c1b220b8a18e86453945913820ff126f7b6013d02947642c15efccc18
Date: Tue, 15 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744678193
