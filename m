Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703AB377AAC
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790347834; cv=none; b=QAHbVAExFdQL4U3Y1Ig8LsbFPBns6QPoenLCYhf7wxApzrCp4i7YeS5+SCuY60jfH/ZrLJvKfVaWilS7JtM12UWG4U2j00yaogXCCtmfRnTS2RM8SMO+nZvmKEluf77uHZkby+Zd9pz0C3oEpMU9J07/+lNtCleVUHP+KdLaDtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790347834; c=relaxed/simple;
	bh=UnPfFQWRU0Scy06ELe0tsPZFZRUYfY+SJl6DZyWael0=;
	h=To:Subject:From:Message-Id:Date; b=WtmKUXFQKv4/PE9GLpQ6X15/I/uN4fcUJn/XoUzsA7gwxpQUtCjZJY8MkM9eMYJUjWUg8+6TUgm9/gr6jjhNq2TV2NJ7Suc8zWQqSA5Yhv1soqP3pV5W1NGuuptU7IJLIcSNwxthHOIwd1KIP51aL6BnQIPosaxkCSGsmU37ICE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOpmoO3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOpmoO3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9679C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790347833;
	bh=UnPfFQWRU0Scy06ELe0tsPZFZRUYfY+SJl6DZyWael0=;
	h=To:Subject:From:Date:From;
	b=kOpmoO3tOTLlKFfXR/RjWonuVmVphYW30ezjoGNHUuOVMXUeQjcIWZVMZFJ3vmu5w
	 wa3spwnQaM6WtFwj9/ShdtUV9yarYT7+Y526WHez1jYBhfxqy5b4coRoXeGX6/Sfec
	 1uGrt/pg/xy5aEn4KRpJP51T5yTiJpU9XKsbxeVFf6cSawKLXeXARNAshq4p5WzrCy
	 nPve3F1dfIvD8nLWP1+psegmnDDF/9mDsq7HmsP9Wzgxr7FnnkQFnBjHNSIxs9CP3L
	 ot2DUtmU4IO9hhBl0RqXNbR9KuBGq220ZlrKMslWqorsHwwJQItyR8A936YQ5tsLKu
	 lxWJit/gREYBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FC6C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034783369.16360.7132692816669315167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1ec89050f7539a254ea05c3c29d23e5e615febf143b9c7c02ffb9f6119785a
Date: Fri, 25 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790347833
