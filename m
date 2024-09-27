Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A8213635E
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727466354; cv=none; b=QVwOxCswdVDuiD66/jxuOe2Tahlg08UzQKunvhAKvdPCQmyaFakUM6sQc/Z5+QOUquOJtyyHfWSymjZwhxMerU/r/xR0QaZVYQe8/7b2uA0CQZFRCT3KI4PsvvSu9ipbYCoOXQ1yofPDpS0fYQnwdD2FkBF/7rxGaL83Hh5STIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727466354; c=relaxed/simple;
	bh=EV/k0V8ez45OyOvKSKW5sDBTk2YZda6p52RKYx3GiIo=;
	h=To:Subject:From:Message-Id:Date; b=MFXbvqtUG9poFXR+HteGBSQSdcI09tJh+eOrRok2edU+YyCuNyiYN/xtAC43Y02iyxR+AhzWcByFPkAnCMPRm2MaLp3h8Pr3dYgJFENdWNGAB6cWhjhv2WMlJuNHAFFMInaVr4RBq0pSWLbm8eo6kSNSAkg1g528E9XJ1nfu7qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3O2rM/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3O2rM/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE88C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727466353;
	bh=EV/k0V8ez45OyOvKSKW5sDBTk2YZda6p52RKYx3GiIo=;
	h=To:Subject:From:Date:From;
	b=X3O2rM/3sI8UyB7E4qhAI8K04HXpc/7+oY2N+jwFN+RMgyVz7koU8LwTnS5JvWTrH
	 6MGlY7QvIUFYUwSmECKCV2ynBqmBiGG58LaSz+BdRvr3z4pqbYJsNROxlg+6RSsQlf
	 XLnRALWcWuhNtfpmRF5Fhz0jnqM+/aEP8Im23mLRHoNIByVoYH6d5UKn6CG6SJJIkj
	 sbhGwhyKeb1RK+YdQrE4/eO6z+EWg2b61GEO4sxS4vfAe8DAB3VCfTLEzmA8TZMxwo
	 TuiH2793dnVxpggPkw0e9ajBh47PIxQVMDAWN1wfJ1mjQwoFggA0MjSqTa4q0o2GU5
	 kMmiHxt5/JJkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99867CDD1AA
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746635362.5781.8872602127841213776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4a2f1781a5ab57fce70760378c0ce70e5bb3f950a708752be0a7c622993af1
Date: Fri, 27 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727466353
