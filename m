Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A41D18641
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721973354; cv=none; b=tFYFfyIVV+4zq7QLpKOK07E5uHWLbItFLf053geLmrbi1c5zPHVo1l/CzONaDUBHFfv0DTde7bLTwtCHQDbW5jWqoGdN+uMlc4bLhEZWj/6qdgoCApCJFWUsv290Cq1bU8DexnLXa+f8cv1NYSVXGHEsFvNslx1Au/N0XOi/r2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721973354; c=relaxed/simple;
	bh=k5XqMesUw+sn8rFLFzNuPbsG3ni4pBt9Y79jz0TjrGs=;
	h=To:Subject:From:Message-Id:Date; b=sJUqxHpTBRV1mXl6DSxPVV1BzNW6ePKmsWTSv82RP3vWbcnFd1eR7BVplkr6OOMMtHYlEbSGdx8a4D7aTJS9vyasdx+/LiSTg6y4ID7VzoMHqnFAgS29tkzS/Fp5oHlKw5gsYHggN5b4jr9lz7ivkC+YMJlIOGZX8+i74P7+6M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gN1LpgBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gN1LpgBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1148C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721973353;
	bh=k5XqMesUw+sn8rFLFzNuPbsG3ni4pBt9Y79jz0TjrGs=;
	h=To:Subject:From:Date:From;
	b=gN1LpgBaBzJMDlkKRoAh2WGWptpCuyF5JLfEFKDvP+Lhmqrch/pPARmE3ABZOjIkc
	 3+maceYr7w9F61VJvn/3vJxNMcGO0PnSOp4X1Vk0NXIPvxw9nvT4FmDIpIqniAcSbB
	 lRG152Rpw246YVTkLi3F8swR8cyXnCNhbnb75iCVjRa3p9IgtmROFvIvdrqeDBEQMn
	 rAWbRPa3173yNFgxPZR5+UQdn6/+ktbLcbYjBR150+BuJA4GIIjJ+QzELZEyhwuxCD
	 qrvxGaWpVv8smFSPSB+LaiWbTnuLNV0hX9iN7CMmVUIfe+SETm1zUK4zqc2h51QbQy
	 qoCvYtKwErUbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F8BC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172197335368.4978.14358754337985019927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8707295f04fc51c9c437b4b54c0538c3d9901ed958fe0d14b65f69dbfdd6b6
Date: Fri, 26 Jul 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721973353
