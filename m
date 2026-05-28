Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B99E36CE06
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780008154; cv=none; b=GzsU2beNMtNghtSqu/p9VUD/wfTnw5UQW2lqNiTAePyfK236vAUqxuOLSMBNtNhEx02zPaD7aoU2JWDNWD+ePAB6hv1Ff1N3NeXxcHiCHEtEwv6Dn13APd0XeH9kHdLS5UhGJrdmfiXUpPOin3YTgkK9iz2kDO1//AL8BCQgZvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780008154; c=relaxed/simple;
	bh=2mvfWzDF9lAOzkvg2nW/ctB35dmWi1S1aQMkX8PP7hc=;
	h=To:Subject:From:Message-Id:Date; b=Ze0NbTZ+B8HHrqEEZXRRCn8znpyVhCrwEZ1Zvbs1yEUDQTEi26DnlA7MY/+1+YOurBBo1POqrfg1EkuCp1YhLY15lokT+wDg8CQK7i3FMQZ4eUPnj0TfoycgzgJHed7AEPo29IUzYqbcYEQWc2bSz7Ja0IDduvhBgHR5D2Nf5HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jn8eQ3rM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jn8eQ3rM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEB1C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780008153;
	bh=2mvfWzDF9lAOzkvg2nW/ctB35dmWi1S1aQMkX8PP7hc=;
	h=To:Subject:From:Date:From;
	b=jn8eQ3rMD38vjLTtWFoU7xDTh7uIhkaiuIxupzTnhGXQ4PoT3xs3tbvVjwDVfDxCQ
	 nFvhJnwH/Q5g42Y4M+GAwz6n3eK/JbEjEeP9i+kAz0ruabh5Zxjlqf0Oeojd1w05I0
	 1Q2uh12Zk3OBQ2fEVb7vslAzJD0f9Vstfg7hvX0oepJmNxnj8hYFOsopnrSS0mvCc/
	 LUfGb2CO2ZsHcr+QBohudFP55+nlnnfamT08ZCReJvtUvWFZgMD/R+OvRVV6d7VH68
	 uxHGV+p1oLJZAp5DL6l5hqBM4G4irYD0na/obx5HAVaZDOZTu8GzrwaD6kNEr5TQoI
	 M1mhzzuq/Hejw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF5BCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000815368.4007.3933056636239282423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49d6842fcd62f7ea6290bdd79de659ef9a9fc2db93310f3ed66e840350849bc
Date: Thu, 28 May 2026 22:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780008153
