Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFD337B022
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784291914; cv=none; b=rkpNF+bsCByR/GrI5xD7mgNWxE1IMtF8mX9mqHy2tKm3rKJ9gETfJOIRPBbEUauRXxkSUnzYP7qDpE/cTTBaCW0Csg/IITOrBRXjQyWcDGbow6Du9GVBfdHcF8AgmJxVB5il16nM5DaBLt3Q21Khf3gOmZNa1zdwfAiLX/mkgUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784291914; c=relaxed/simple;
	bh=bxWgUvypcAlmM9DCU8ZGslKXrGl9CPMTffbM7RCbyCk=;
	h=To:Subject:From:Message-Id:Date; b=amsVhDZUmcvOeUP8veXeRwTX5g6CQDLVqWZc4mh8fifcujbqv8A8fx9/HR9bcP7Vv8Ejcd2qPnd6VCJO3fftpOdBY6c6qJhZXwIaDnBHNztxLHXpsMZN0juZEpzXlksYjxEyeRXQBdrEA5SofCkh6IZ1e4zjyaPLXPTxxghH36c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKNyVIzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKNyVIzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5B6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784291913;
	bh=bxWgUvypcAlmM9DCU8ZGslKXrGl9CPMTffbM7RCbyCk=;
	h=To:Subject:From:Date:From;
	b=tKNyVIzhYKDK1VrHonN7jfLhZXvQs8LggVDyXdhWJZznvX2CaZ7vJ+/CGMT1czhWp
	 iIMpkqGMfKfCnZzXjaQ3FqDM7/pMUoaxeh1AAMgn548lPquvgvSn/fCcDxey9JhI0w
	 flma7XKbgWDW7v6Y6ZkEGNnj0/eh0xMLxVP1/e9JY8yrdcAuHFw6rO8Gz+u5IyghsI
	 k+kmvUMPUt2YJwsdBPL/ya0AikBFZlQ4qsGKWtSznpobW8SvBReD1TOZpLrgScow7C
	 z7jfSQy75NO2WVtvcZxabt0lloKCgSEbV0AVvoVO4CdKcZepTONEhXlDcKC7JFjgsl
	 WC2grdjVi5bTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5101C44520
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429191373.27945.5143059990392408227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbee1bcd9c511e195838764977b4012fb83c8db98a976cf9d4df3ab74ab0127c
Date: Fri, 17 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784291913
