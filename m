Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25C9D502
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705745297; cv=none; b=XmKCHROPig5iWa9EfgOIkp/kF3zP+ayiV+RwewvytZIw6QHYBusTrtz5WBCLCi9SHcvABVwBgr7s/pau353Hf5oz1JkO6xEoxAWFBepilSbgP/+R7QPrQNmkKOagb6Y1Soyv25KxRP1iBP6xb2ShyDDz35639jICfH0eZTEcjLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705745297; c=relaxed/simple;
	bh=wLvN9K3OJfyeW4kVu06bAzyzehyT0yP43GU7mCFkPLc=;
	h=To:Subject:From:Message-Id:Date; b=KqT2QooqBRNkWW1PrpHEEaMpge+w3CnfgsWVuRER/7nbzp7EnAfHruFW8FZq911f8RfkFsvGwPuTOQLe4CI4iMzMwoJGXZ+Nqwt2eBWGTeFu49F/Hv1avsF4nAoUgviUVC6o51/k3TJcjRiZvfzgpDOwePaW+LbxkVETe4TeQY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQz9srSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQz9srSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F25C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705745296;
	bh=wLvN9K3OJfyeW4kVu06bAzyzehyT0yP43GU7mCFkPLc=;
	h=To:Subject:From:Date:From;
	b=UQz9srSuEQpnhp0vda1dE1e83ginSLcOVHDRSd5x6Qbf1OakScFWz3iwg6PiauSof
	 MSLZn0hfKf3IjPp7UHfsyjnNZQhrSUjKQLJ5vFBXJcHvu+FbkD29eakhlihcjaJzOw
	 NDUXNu3WrHeEzFsiv0ylWsATtIOieJc4ci2ExZdPmyUACkfIkiJPWskJObTkhvJmiP
	 /SjB8nYjTBR12rIVw3adtICB30NMdBFUhoJhtedC2Rg21V1rpA5ZM7XWIv7XZY48QO
	 bTLLULHlLVrCg2BaKzVwbmF10g5P3OpY1Ud6/KRRHHFnP+IWgF9ShXP7afbrV/E7Z0
	 DRToOn43yhmxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B673C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170574529636.26882.5255608094346523564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ce13a3cf6e3f419271c80a7a2c9d5dfcbb29df838dd13553b05d04644fef0b
Date: Sat, 20 Jan 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705745296
