Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2C510A32
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707545897; cv=none; b=Lzzef523sqAIVenXNz13si5Hm/nM6ffkRtAs6NG0TrZeQomBT82rL66s0HCtiBdGdOu9ktLMn2FPBbh3gUVrnwcmSWfiMsBczKYsLwjrwtPupxHOI/J3bXBzhlN4T3vH0JkH5SB/sAbJAdoXGdvKbik5JqvSlAdL/35UENHuZzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707545897; c=relaxed/simple;
	bh=XsSKAHcyDG/a3QY16aceMX5DbxQB5AHKYBp34JkpGHg=;
	h=To:Subject:From:Message-Id:Date; b=MZbYKiJzQoNIxBn5LhnkbuO4skA+VbDhuiSs4GKfECGvXjHw4BESqN/s01QVOqoDxXLy8Hl7j2QTV0Zn1cGeLhH/pmOD18RwG1wIdDDG7Y3sdBlnpJzQEPRZjlLKbWoYE3IWUdzasbjRogKPc7DAMuf7FOAndYgmAldR2tq+oz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeeEhJku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeeEhJku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83C2DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707545896;
	bh=XsSKAHcyDG/a3QY16aceMX5DbxQB5AHKYBp34JkpGHg=;
	h=To:Subject:From:Date:From;
	b=AeeEhJkuKKeEtqbR4SIFTMCX/3TyB+OcJrUyxaAtVejO1WU9fvt2tYSk44jW+AarE
	 cKhjndTvD8TdFI1JOJU1BKNrbpnVyN/M2bqPWkTb4/+Q0fEUCTFc8AKbZdOzG3Ow/k
	 sxwZThXCL6S2K600USFc5Oc77I/2bgEbMbwI9SpIZKzwqSQDP0+qwkD2yVieKTJtb8
	 vKQC+4IG0HzcLpVqceEBWAjZGFpF1J7Nynm5m7oRzxYuu9AHgNsJEJ2fWewTs6Qcnr
	 JN/zJTvP8uxxtVVhU3vXMWlptvAL6MeaWQzW7BC//n3HTc/BqIv6qEwn6B4BxvRy/n
	 AyyQtPKbn+T5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B51C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170754589639.29586.4735413721683526044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c293e0ca42008d56323f575ab8f9be14c7a6acd25239f722eccbcf47c9d754
Date: Sat, 10 Feb 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707545896
