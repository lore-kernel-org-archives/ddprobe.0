Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327A5E555
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744983594; cv=none; b=IX2NyGnvDsgHTBdVqzgLS87CcVs6YlmAt++LftTmLy8oTLBKFDrfjeNYMItWuOuVGu9nes6ZT/PVDbh9BUIOAsxaLjeT/eS6Au3rogq/WGZ/rDZJySZwH71m4cD0gHGfk/NKXPH8At5u4RYy/y/Ptyv4euPLN1cA4C6Z6Zkj2Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744983594; c=relaxed/simple;
	bh=QGrqOSypPjWKSiSB4BCOxpcyJr2tppDe+342eNkCK2s=;
	h=To:Subject:From:Message-Id:Date; b=bOahMMszFGfdHBXEdAvDmTFJxPBHIBk2eI900sw+aQJ6VxbbbaBOMxddCvXJFY8YJurN0aYpI5eHljFYMCAH+lH86PknCLKpXN9aiQd4f5mdKaVMd9Kjz9seuRwV54BfnFfjfoILLIxAr5C+hmPm/ExHDa/UnZUy2EXiTGULQK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCwueKP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCwueKP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9FEC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744983593;
	bh=QGrqOSypPjWKSiSB4BCOxpcyJr2tppDe+342eNkCK2s=;
	h=To:Subject:From:Date:From;
	b=jCwueKP6zNqUN8xo+1JI/2YMnd45tvHNRQK/+69HP1sm+C5z6RjAaouAafYjnJI5f
	 lfzpEnFLR0hkxf9UwnAL4TbSXv2y2ZUNLqMgQ31BNWwdlinDfEYpb8GbLz56lWVqFN
	 NyDsTzquUu1fFS1Tvqn0O9iyv88yu256ta7j+/3mA2te5Hg2cy9uv78RibkdClCnyl
	 Fvu3b8rbjfwqNNkbPuZBO554hvIKufb+QJEGchsdspHO6ugpHVZjTKuR2g+X4yBrGq
	 Qi7hKR8GP1jZ/MlJT2paM3qb9PYv/Zv1AHP77I0OEyN0ddfULjbX4j6nauGVRkHTze
	 QcD8syXBYI2PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B27BC369CF
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498359361.24728.18206797611106178164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36e013a0a12cb6c1b00ab5e7eff53997796a9eaf953d221580081ec1318bda7
Date: Fri, 18 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744983593
