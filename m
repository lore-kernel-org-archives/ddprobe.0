Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6B733CD0
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707598097; cv=none; b=iIyAbrx7DYTJCIjdWe5XGhAM0SyryugLUaMz9bMbQ/SetzItPCKQA+HaMwR/NgVzJPW5filigtIu3Hxj5X/w2eM9XR9KZ+1OGOqWxecAiWHOkJwzxl3x4TzDA5UZfHPZYwr7WoO5OXWZsklTzA87mMFv+6YPfu6Fyqm1LzfSPa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707598097; c=relaxed/simple;
	bh=JxpZrgvD4l2mVW1cAvVuqZfO3FHfr4BXVBIT+HMITjU=;
	h=To:Subject:From:Message-Id:Date; b=tOIoSbdQP4IMwHR9uF3detkS807AOcGNtR4bz70blwU3pkyQezIcg5zR2Uij+2t2hKMIyWDgBoJV967Vs2t7fAdOmDXXpVvhi0Eu0i7zIXY5+bxt7ZhvJmfoGgMaUo8Ntmonqwbh3lhmwNay91NLNZMCRLhYWRe/I2huDsmBpgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neLN1wGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neLN1wGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFB3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707598096;
	bh=JxpZrgvD4l2mVW1cAvVuqZfO3FHfr4BXVBIT+HMITjU=;
	h=To:Subject:From:Date:From;
	b=neLN1wGzn6STQPsOfUKAWfX8485CgYg8wne1w0Lg5ShzepSMqR2qtkgg1zlFwK5Jq
	 iaxH53K9pJ2mpVYnrgM9EQI3pYiIJ2bGMncqSStPxeNn3hFCUn2EFUJ5tQTF2N24n1
	 juNsTMLt0IQHNfRvpMoFgffdYq14seEc6eXYkh264vvVq1lyzqBCAUf7ZOfjce2mtc
	 v5/Ik0YDEGt3VTUPTGsfwoab2cHcLVpfpBI8Yi2G3TiIVoHu7U2kDXoekDrS1DomNE
	 Lbx0GqONLbFTuJ2U2LEFzW0t2Fq7Y0J3Wz89v8mp49QyIsw/lXnW1ARGYcg9lAnfxn
	 EQNWhlz0z+R3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62149C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170759809639.10148.13445178888815029063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5e80b73bde7b5f63178ba5752f95823b4371b4753b6a7a0f19b86a84e6da3e
Date: Sat, 10 Feb 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707598096
