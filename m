Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC9B50276
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783644514; cv=none; b=W6RUoxnCN2STS7sZiEzqR+i8MBadPWRGTTJlgV2P229cQRAIumEX6kvGBzpPyvVNSCuYJahbxrNbtJtlUspQBLZeZkRf/fs5j9JeAcNvqOAcVLbTv1TdkfGapAUzkUYLTV0PKo36c7ZQXRatg4gYy+/h3q2Dpk3GNXOpxqhtROE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783644514; c=relaxed/simple;
	bh=FECKvrfwZLIQqbYOheJeT9BKqWWHPxzPU0m/eQc69V0=;
	h=To:Subject:From:Message-Id:Date; b=inTQmZFljN4A32PHnENixh7ihM6+TlBSyhnvCGEzTRscE0mFtE7TT5WbvUiDScL5DY3yjdmu0fgKqbgGQ40r82jjf0UAxym/dA7geSVDvVkKkR4lCUE0uMF/A1lylDrCtk4rx6dMt+ol3KgoyVYYdyORJ2J5x54eNT354wwkuvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahqnrvTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahqnrvTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF44C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783644513;
	bh=FECKvrfwZLIQqbYOheJeT9BKqWWHPxzPU0m/eQc69V0=;
	h=To:Subject:From:Date:From;
	b=ahqnrvTP9CgXzB2rAB9PZ9/S839TPj8GgH8JWWzwZmWJ3imFM3vvgq90OGiaubY4q
	 a7Eb+6Hryu9VoJri7QjO6RxFPVE7RySqLQ55KcqtXNjxMrJxymgOW7wBbxjTUMK+uH
	 shE6G8Zo2W5OS+BTaTEh4d9TFh1LK3khql3tDuYkT3bPXJz1CJUbCmKZXCIic7/Hfp
	 4pteiCzVNd1t8H+RBWvnEMq1qdnictzsOYqN1+msa91N73Lg61O9qUYZDUvES2cg2b
	 U/X7WWg97hj9mPhScGLHsoAb046frT3Zm1d+MBJClaqhGJlhY2PmwW7u9DbGO53PAq
	 /5jeixmq0f2qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD370C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364451368.8351.11576887664650159194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae3a89e44266f6ba4519356d31e318d7601fe18a112eddad4be4c82770263225
Date: Fri, 10 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783644513
