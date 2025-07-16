Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C315289805
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752657594; cv=none; b=lNiWPvKPg7g/ce00umQN5mh0fT4yUqUnHjFnNqB5TIX/fivgi7pmEvzEfyaFC0YBN/7CmAfD6QaGxt3uPJf/QKR4nV2wedjPRpc3h7J08+FP89bKHJVEl0htQwI4OH+QiF/9occBA8IT5w85druB1tyHFOFn2nYREmtQXVI/XQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752657594; c=relaxed/simple;
	bh=T4WVd68pckXOECuTSUQQ9J0ug3Ys4ayaIU1AEPque4M=;
	h=To:Subject:From:Message-Id:Date; b=h0sWM8LLH/pU8/Mw0ryLkZPe4gKyjAM8kclefBhYhGyvx6MGSn8hpmhuyIOOgJlaiE4n0uqjBne6CFcjT9vNaSUm+oAY7Y574S3rjkBSzR6SQGeHc4bheG45fFoIg75p2pikswBeTda0uvRZq0RQgmDHpRCnnOTTJeKXkRporYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhLFBm4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhLFBm4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D351C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752657593;
	bh=T4WVd68pckXOECuTSUQQ9J0ug3Ys4ayaIU1AEPque4M=;
	h=To:Subject:From:Date:From;
	b=QhLFBm4iHnfJQwqdrBMXlTKsCTOaKS7s/8n8rNZTUzVNofps2EsnwL/myGIlbGBsh
	 OloRmFgMxHLPMSHmey7FOYLwr73mqKAFjt9ANbVZXGcT39UxcNuxc6Cxhas3mNMmwe
	 tAtBEBdFVXXXMwZZgPfQ5HMEuu886R7BV4tRVuw145Yj6W51dQDf1P2V0Rh9aJQnOb
	 1lZbS0UnAxykkhhW8PwgytEnWfyWdCY5Aus7GXLCX6U3sGKpSsTfAdTyEtdtOpRmPr
	 B3OBxl6QGG3/87jxbCiiLDDD2JraMj68hBtTgmZfJEUMKuC8PPWlru+d2TtQU8KqTH
	 6/DHRk2S9Srpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F926C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265759358.31036.8912197822646010126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08713191cbeec399d2aec0e891cbce0917e43a71d770d67f258bff33f4f00a2
Date: Wed, 16 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752657593
