Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0934F1F7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705667296; cv=none; b=FDTsmtBrj4WlpWpD/4OCyHHrG3j4IdzGxt5GYoYnZyIywewps/5+g5gBAyC3hmocm44VpxnQ/uYExNxnC0Hnnp8xb+2zw7XqYZ7mydqp+qR95N8G1ItXmDgzmAzsJ3lLJv0gJhaKrjho7ftnRieZqTisRHyMwnEK4iU0+rubxV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705667296; c=relaxed/simple;
	bh=GHmOycJht1ZykG3nyDoaslvInb4vP65GgOOicT4DZkU=;
	h=To:Subject:From:Message-Id:Date; b=OZRpfA6dNDyowkKTNeyhNcmHcQCuCa8zq7oOVBCE9FQSzQ8mx4r3Jznxyku29R6NUa8jkqQcgAbVoq/CKXGahQaAqccTh2tcGWW6ga3zGjJG1xzp4ReukZSdTowNA9n7YJAAEnAYeFnUrQMl0dvnwxT2mc1LxElNQuDDOOn3cWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDJadDY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDJadDY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CF0C433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705667296;
	bh=GHmOycJht1ZykG3nyDoaslvInb4vP65GgOOicT4DZkU=;
	h=To:Subject:From:Date:From;
	b=PDJadDY/OISMyR46h1QM7yoTI/u5TWgEphl0JdZ94aWQ6C86zgjyF2Wrk0v4oP0ds
	 Bzg0kIdoq6AY8g06HexI3dRyzlL5s9h33C7H2VCIiXaJ2gW2bHwj6OwZ9W6uYW+pnB
	 Ls70IbfN2xAL8Tdrj5dKVrZm3SJTqOtedKFmixUuXtVsZDk4PHNWj86IK/sRuB2w57
	 ry+xTZgGlWslcdiBv0SyeLA68Q2k9c6VodutzjZnseveDcPJtyVsZ+OOooUgot7nBQ
	 Jot0a9RWPPWLrSIY8ZLjETJ6jr0fNpvpcJVnspblS55uRAINWJsVGgPP/vZjRd7kxE
	 txrAvyXAGOckA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B78EC4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170566729636.29548.12518576107965704603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21230109ba7385ba0ec7274aa72104c103e46cffcd327f3a47c748cc3d80bffd
Date: Fri, 19 Jan 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705667296
