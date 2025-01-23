Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7B7139CEF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737673554; cv=none; b=j9MgbO0b7hbb31w3gAq+NiVA8/rv1NACI0pX6etjGOojfseFMoRVcsRh5Plqp4VSg7EE935zlX/2TsO4JvfQok+dlLwIPY7UjJxAJGnf9HDed3tOUzh1AYfUyStE6q/keJLuehXgHfFAqQ8pDXsAVScKVqgCuWy+axDUDzXsA4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737673554; c=relaxed/simple;
	bh=Y5/y0Yh9TP/e4ehnx8/69kS8M0/xnrOeiEXvI0BLNtE=;
	h=To:Subject:From:Message-Id:Date; b=gJvn/Kwh7wxK/SGlq7yPmDoxMceiUTtc03Q/+SKGewQW/XyXIiG1SaKQUZwIvN3/QmLLvpf6BnZ7aYZomz6Fsr7SWzKAcJ6mgfuMH3EsFQCOnGry8eY2KjxNji84XWkiq9iaaEQPMsLY5P+ni5w+bhmKWtFijw47UjD6OcUHl7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CI19l0z3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CI19l0z3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C360FC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737673553;
	bh=Y5/y0Yh9TP/e4ehnx8/69kS8M0/xnrOeiEXvI0BLNtE=;
	h=To:Subject:From:Date:From;
	b=CI19l0z3trV0kpuzfVaeIBlG7pJNv/Kb3l2wkTUlZ3Hdu401Hiqatu/g5M2ekmFzr
	 borIBKirWIAP3YAXehD8AtR3WGAoQHsI4k8NgDuGofSawSzw2IpkMYJ5a1tzXSs8AN
	 tezWcFZLZzir2Jnz0Tgi+4suwI7hn+GQv7C+hGT2wIwgw8Id8NIDulJM0NVkx2hp9S
	 tMpR/nPNUYCkdbRj2kMR/ELfaKiF6nXE2IrnVm4XfE8sFzt7K0PMiwWsJrRDyNMpmd
	 HuhTGN9Y9u6ha3t7mLNAR2U/G9A/YEm/mcsgVA6TFoAheTNUIeMeW/HSQ8AP9RoveO
	 Q7PqFmIvxUQhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A554FC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173767355362.15601.9519814284805705477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b48e0791eacbb46b9950c21ab8504624813449cff29a45f9d00b6c0382082c
Date: Thu, 23 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737673553
