Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81081FDE14
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752732593; cv=none; b=OQesx0wDJrhifk2xHiFRlW7dhGkpyuTb1Z4wshIDdSUPSM9BcU10ti5vUJmP64pFFGNLPKhNrtOYAssa8Ke6Vjq1QgbPu4XOBwzmMynyg8/dvZs3LK95DQnrwUCEY1B/5rlxe54fYPqqqdLnN+kVi1WLsTvYnsCt0yF0F0c1mU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752732593; c=relaxed/simple;
	bh=xQR+6dTiB3DJPn2HxVRgY1tOfCXTDMnejd44t9Hj7yY=;
	h=To:Subject:From:Message-Id:Date; b=Jg+WFbk9iXmeXggndNm3XxE5SFWghojkejJ3whFtJMka7YBy73LDsXLP8O9aedlQB3pYp1TK/tsq+fweGCukO89cdCtHF0xq6WKYvEpTcyBYWOnfC/6SLZvAhCPSXViAlQt4WwMLvTs1Kjzl/fQ2/jnoQ2obLl1xf241jAE6BwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rx30Pbxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rx30Pbxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA469C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752732593;
	bh=xQR+6dTiB3DJPn2HxVRgY1tOfCXTDMnejd44t9Hj7yY=;
	h=To:Subject:From:Date:From;
	b=Rx30Pbxqj7xusPGs9/vMzgqgtCa1JYQrdRInL2iPQZlISMNzT3VP5JbsG3mwm/Nt7
	 hmeUOYb7sjmRfwvEjkEuF2f0giCxYSJNVpu9bkDgEVdii2hwm7MV+Fr9bKxHndh43n
	 cJgEKm0Ev597lzJu9XaCpgjBwmmK0YiKV0q6WVL9cpRAawOEEjGI1z7ziRIlSy6ZPG
	 w044oM9wXMuF5BLOqWe1/IyjGcZ2o43LDjDubpbmXM2B5ZTYFiVZKFH7mrZe141TQo
	 I1HaKV+M8YMetx3kifQjTX1gZMVHb0UD9yUAebinDcUEdysfnx0Qfhvs3doEMXRKh7
	 aC89eHvxq9LRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96764C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273259360.2996.7761984855903803066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe1ab338f6934a3157cdf181e7339b2526ce481f8441d46bcc61c8df1e763a0
Date: Thu, 17 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752732593
