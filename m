Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D293376
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 04:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719202343; cv=none; b=hetP/ox0D+3M45fVniOcImryb9Zmy96eoDWTPNIBhF43dFUstQyKK5fqTuB0TvWC4IDGwDkqPuCL0Mxt1SGTpRzDaysaVlZGLOn7lYMa2fo1TGo5UTFkARHNqsrxeZQH9dk6iUsh6zFVqZf0khDKPDpaVrdMS0FRhFcjAiL9RaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719202343; c=relaxed/simple;
	bh=VaixKx1vxLq6lp8HPvMuaVFjYQPMmX7MLLemODGsrTk=;
	h=To:Subject:From:Message-Id:Date; b=C+Fb8Wh2LFgZNUFWl1ojNmZ6cvBSmraOOo/HgzxJdFort7inOl4lUYIhcAMuhWSEH+YqrZNREasQAjaTv3euHOfQ6elHzE6MiIdnQnTvJ4F+ntUHGLLmmeDcuGr5j7pcBWqObYiNS/DRQk4q2yQVoytejAOwhLy3NImKNjIS9eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYvsF3u1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYvsF3u1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E88A9C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719202342;
	bh=VaixKx1vxLq6lp8HPvMuaVFjYQPMmX7MLLemODGsrTk=;
	h=To:Subject:From:Date:From;
	b=fYvsF3u1OuaD0YRj8l0R8xih1bOPjlEpsdGF0VuICafFiuj4c72gHL1QFYc6jYIR7
	 J0SAG3dJy2RUdOp6uHNDIh0xXFK4Z3IJ6MPHDJdGHby2IdnDcqT95ECOsJaeP4+tAn
	 PUOHey3MqLViEkRidDX38Vs8V0O8KyJbssPHIpuNAn/VlPy1T4Cd12QR9acBA63UHE
	 WvYmwd8jREU8N3isl/H1sBPoXsCn+GRgOOHxxtV5QLNp994OjoHhmRO3XVl3AKJ4Fy
	 rBnXDk2gfh658wDgm7R5wmSiEAI/7FLjLcXqEXcDlDWXren0lrWUHX2O3vae2OI06z
	 T7T4HIyQjKukA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C65F2C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171920234276.31260.10442432884376240367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038b5deb0788da905a986e83548c4a44bcc38a046a616bba5bc04a081c1fc0f0
Date: Mon, 24 Jun 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719202342
