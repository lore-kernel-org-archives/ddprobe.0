Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5D925B670
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744186194; cv=none; b=Nfw/RmSADXytk+qP1mrJmNy4RCuuFkbB1K7m+7sc623JB96zaIcZwQnxkMUklEcMY5YTp4K7/QpscUV78pUZNyIr1yAHlHscRe5lkJkR9uASJu/74VG4/LqRYKX+WYOLl+IsNr8wx/eWvrcLIgjdCLJ68LjyYUbNfnJmB6T99H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744186194; c=relaxed/simple;
	bh=2u7Yiyv16LIwxSt3JpKXiGhJ36Ptrii9iMDh6fiKlqk=;
	h=To:Subject:From:Message-Id:Date; b=so6vgVb2OMIHABgzj+4K+5MULo6IUMiVthN0lYc5tyazygo7Zav8Cku9njYKpyTmp4998BOBY1t11nQ4gxFSE2TD0lQU+0WSX14oY4/LaCtn7YYNtsnR6Z0JaCfq/c7mcHgqRtNn4bFPP8E/hJvdxeAohtVBvWzdtOaZOgKUeyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0VQJWem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0VQJWem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D32C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744186193;
	bh=2u7Yiyv16LIwxSt3JpKXiGhJ36Ptrii9iMDh6fiKlqk=;
	h=To:Subject:From:Date:From;
	b=q0VQJWemt/rZ1X6q298JM27j/GCPGbbnhedRJusTuNlwbSDzuMoymexajVLE1UWXz
	 a7D5+Y7wKQnJ0P139G/KNJqIuFt9bF7FQUPBfrgo6TrC6z8+u7nl7kmaVwrFKPXYGu
	 ujl48YpILrg3EiJZKpabBYLMMbA+hNB9ZfsC1NvMV3oP1MpQZBxdyebBENDwMNL0Hm
	 HsVFDZnO26y5htBxzqHb/0YM1O70VnlqQL0QZSh4toEhFvrfhlGGsijXql+BruWZyl
	 W1fX9j5DaAepscLywvGjsToxEHdRkPaQmIfZVmFER5ECK0fL2uQmYWecUhhM9gTn4m
	 1zfAOzVy1MkCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939E4C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418619359.13966.11871764725389765130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30844eeec9c191243a5cfa624eaeecf77391d39ea5dc2602cfad090f501172b
Date: Wed, 09 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744186193
