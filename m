Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC2FCA64
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741999134; cv=none; b=VHz40J8RLlvrZpNThmLOYIaFeHlkNpM6Vx7x4OJWVPDVMUQzu+7KXn+2Wct/PffmzgK4xiyuAH1l3aubRb2cVMqYx2c7y0857jWof0feqM/arxXadebP+TDcp8YzHOrH6xROLqWqmR/qj/H9p8noypZt2FiRsOd55SxkSVJrh4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741999134; c=relaxed/simple;
	bh=6bBJqUo4DD4Lvh+0jirGz4tK4kdfDoQF/atiNMpoj88=;
	h=To:Subject:From:Message-Id:Date; b=SMb8mowJ5/2oxdL8n6l8UNyeIOhkw250n+g28SjOGoi/gtG7mSZPI9ph1nJgwnl2yGRJpXu2dKllldWw/16HgSfimxpOsWiKMC5zBg8FKTrgPdw7r8lXYPX1JoIj11Q3ZOpQH7U/4WEv34EftI1Vdb96PbtN2uYJLebUwOaACAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b08xI4DY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b08xI4DY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9C3C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741999133;
	bh=6bBJqUo4DD4Lvh+0jirGz4tK4kdfDoQF/atiNMpoj88=;
	h=To:Subject:From:Date:From;
	b=b08xI4DYuM3paaPjl3Xzm/fURWWuESz4LFy1d5IZ24xj4P/pzYT7gs9t+FDbDkeCH
	 Ykkh36gwKk1qK86YokOfecxzgel1TDLuk9/JGm382y4bIS1AaoeGmz2bDgZOXdNpVK
	 Qf93mQpEryMxFDYlGE8tZfrZlY1xm+TOv7loqTM9nMM2yiRGbNK8F5EjJAbPZGraSp
	 K4r4hrQPX7Tty8+CvIl4NXQC+BGIx6sOo12X4V+T1OVCz4FccurX6lQX1x4YoWAgPV
	 7SP/UFgrVP0S+kDyzVA1fPyb+zlqfyML08bvg7FUmXmzeOa2cqSc3UjrgmZ+SKsGkC
	 pCNsszENLQwjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DF3C282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174199913361.6331.17715707325301083972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8f10d6bd16ea3e37f02a3cd392ef641ff31adaf78b24b3980df2151b98c05a
Date: Sat, 15 Mar 2025 00:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741999133
