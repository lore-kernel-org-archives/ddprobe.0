Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F51B3D76
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746923394; cv=none; b=rQ7ijiHL8nsZFR9XxWAsrp2Nub4FlPjn1wAe9gRM6v2zrnfzLYlUZmXCsJ/hH8mJMfO9ogPQTOcaB/PDgyMfOIUBmEeC/9I345ZZRD0cgdbpFrguEhBYfUfZFVXfsWCkmW3ouNjnGrHBCfM1YAqdYftGxzOe5nXHsiTa1CkXxAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746923394; c=relaxed/simple;
	bh=ScDsakTEUFDtKs7noukvlVSIMLQ5VCuXDQsf/VADu3I=;
	h=To:Subject:From:Message-Id:Date; b=TWPgwuzWkFzC73ijYHF4zh/SI7PGG+LFNsvfAHFhduUgZlzW61z1dKJ4IMhSOFTIOKhhXMoFdgVYcvN0eguc86IzQKZu/FzBn86dkVYC9dVc+dRXjBshZ1pr0/0hmRMFHSqFM9Ypg0lZcVENZExnve2mIIwIT12GtBRfJEosk4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMPuXJh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMPuXJh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A781CC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746923393;
	bh=ScDsakTEUFDtKs7noukvlVSIMLQ5VCuXDQsf/VADu3I=;
	h=To:Subject:From:Date:From;
	b=kMPuXJh0fJ+gozparPxEXBIyNbGLqQtdDaVURc6is941nmOc0kBgiDGTiJHywmRdx
	 +v3QgD7BpwzHlHfEUDSyXH29e54W0ZC31khfKehqBpgEh2lEy/1Oa0gOezU9iypdPZ
	 SWda3hW2+Gcpm4r8npFdQQmP2zd+idExZ/pv7/yHm2Wxt6wvnHcA5UqotJg2Qszb4D
	 Idt6IlmpQHlGav8zFsruPUingCDcvNgOZTk07vawNM/PUw2iOHCoyCiXWQqc4mQWYm
	 VmymLeHAiv85FsbcO+ogFYKkQP5FvdIxSsUiLQWmfi9LSoVNOpO8oOwznodLG5AJKY
	 x8ViRnFtu0EpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9353DC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692339357.9254.13769995666331138181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7fdc71b728e9fbda04b0d603313101748299f6ecbcf3ceca7bf25df34316ce
Date: Sun, 11 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746923393
