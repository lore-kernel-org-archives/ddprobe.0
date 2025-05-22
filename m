Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381DC2914
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747909194; cv=none; b=MDrko35TiyFM6hAa9LvsrhuPvooYR2oZn5Iiug/Ts+lixTAgzISSfOCAcXPyKaj1aCb3KqDMWQn3rjppbw/O8ujvI0QNir8Z/bTyoTKK3F+++Xq6bPKQ9iJYva3yUATFL93XnTy7fXws6C9VrdekNk1djFsLFrRp8t0Uixacgus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747909194; c=relaxed/simple;
	bh=SeiA4CwetQbJh0jVSOtxVmiuseiVNGfqT+8BA2nOgDo=;
	h=To:Subject:From:Message-Id:Date; b=qPXIywaaUkcWYljJm9eleZs8yEYFfYX0CCS5OEVb9AMkHI12sGL2Cbalg3lHlJiyHpwDk09L3Gpdacm4wgNCKiuQ3OZjHXI4pqLdjOQarbxanIPmCAliRP6CBB6FaDUCLgM9sOwtZyGcUeoT83xqMqRqAapazdql47aSfXPz5PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxExDBI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxExDBI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A9C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747909193;
	bh=SeiA4CwetQbJh0jVSOtxVmiuseiVNGfqT+8BA2nOgDo=;
	h=To:Subject:From:Date:From;
	b=bxExDBI0BovSLUWE5JdNM+59bOZoCEEl1VJgUqotHfKSV9b2Y7DHSjFpbIs8t/JsU
	 WR7nFUFksCfHj21A8gnLEYrvrF5bipOi0pKvsG4t/uot+Du0zGAwMyJMjErqdiOB/2
	 hYFLIodOgli9NUzrqSlb86sU75KidANrmV03UehJMgpzA/FcQHJ2enDAb4HPYLoYXd
	 Nh6rCKMiyoqE1A6XNp0JJKdU0CG1zyDEDnQnBlNpKKbvGq1x0Uf9SoQhHntw9akvUD
	 FSNBPM7xvOkDq1B358u/PNS3nzW+gi/KiappVwsYPI1z81Dlv4ljN9P2/LyIm6gh8f
	 ZL+jWb1TJ/7Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E878C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790919357.30594.15210517364002541083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee7de2ed5231a4584afaf4d25601f49ca715dfcc59ac3e82ec6909190b23fb0
Date: Thu, 22 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747909193
