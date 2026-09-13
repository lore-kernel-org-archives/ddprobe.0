Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D44037A493
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789271434; cv=none; b=Xfa5LioP4uVW43Ht7MPKVoythMeRKwcBfrp3ZukMFMxppMisANHCSkDZNSKB1TNojMynr0vISWYjmgr0HwT2yn3JxAJfQGe66bmcEIMmBEbj43hFfqnWtmiVrPkKo4TJvtKN3CSWZ7HdYxPnQ/v1CJq/WuqmeKIdLPigB001w3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789271434; c=relaxed/simple;
	bh=UYqjyjkb0SW8hUZbtD77uEyYS+evJEbVh3JdRLnn4oY=;
	h=To:Subject:From:Message-Id:Date; b=MpkvOa2TDSdT/66i5BY8gYKUkyZjy4XViIckqGvdYcDzTbXLz8JkuUGFuxz4z1+fMYWjejMOtam+XKTTnC0RZCma96RfTiVC6BrLrP6ymQcqrEyp1jjfDwscPbN6NCfu1tlFHpEk8OBFTMw2KU7AJeu18vbyqjk+avk/YqmH55M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnkHGdbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnkHGdbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D291DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789271433;
	bh=UYqjyjkb0SW8hUZbtD77uEyYS+evJEbVh3JdRLnn4oY=;
	h=To:Subject:From:Date:From;
	b=SnkHGdbEsJMFzT2fBOghEtAF47vs+jkGrFG98n/EDRCf0rDIhwQbsNOB4NXoaJeOg
	 f6iubf0qUKAXui0WfzBQBIBrvy5HVRpmN6OmhU0N6yhEXD/MxPeZC0HE4UeprweFQJ
	 U6d7ZK8S3ALh7H/O9un9cHUN6bcwBqPCvApphunGgvs10HtRCXLqtaaJT9ybPbzJY5
	 yjd5BrH+5tq/AYNyHZTr9tUl4M4v9p+Y1oXEDyl+IoXX2mAAHNXzCCDevlG1S52Nku
	 m5jCnPB55b7B4AfHPmxTSENKeEjEJgkAj4bVkH72efU/8Kx4aoHq67DWTs1Fg8xgXE
	 mB39jPgogH1eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF1CC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927143368.6806.4807741651163801219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84bc86000f997ec292aeb0e302443aeab91ee8017a8a927761fc537a72418fb
Date: Sun, 13 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789271433
