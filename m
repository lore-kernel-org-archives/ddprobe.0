Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FDB344D8D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775389534; cv=none; b=HHnWvt1rE+sUI9B5OI43j4FJeV6UwDG2K2RSdTWsXRhULBwPIhUU5nzr+SnsjlOKpE66jhco2AOKxLdcZWV7YxEsg9yzTrIZxaY/mr358HJzh1huvNvqxMxlMADwNGtJPyZLMbkMjKS3pgywjcq5RNpraV0/rpS7Ytn/uP828I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775389534; c=relaxed/simple;
	bh=E3Eojedfux+I5gyYStNV1PNxHIGjh69tCgSxkOLffa8=;
	h=To:Subject:From:Message-Id:Date; b=ml9UIXEYyspfaPiBYKGw7XwU2p3d05HwbxUxWrqRm/x7TalIEcwFg8gIdI0LSQoMqKMua/HX47dmWZvPD5baQDsukE1JrdMgYYPhsLnqsZNTmat8s7u9m//zR9TOt6AA4na7iwZYJqkzqrPNgL82J5aNdn/vD42hV0QiqVGg4/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWwIZy6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWwIZy6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82E0C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775389533;
	bh=E3Eojedfux+I5gyYStNV1PNxHIGjh69tCgSxkOLffa8=;
	h=To:Subject:From:Date:From;
	b=IWwIZy6zZlS1ZDDjiDkQYnAAORNLP+aGutO7ByXdxhrveWLQaszccXOBLwP+ekCkG
	 97wWcwtu5Rj/CMI+ONkwcXc251OV0IezO8/RqinVGCrpbUECpnjTI0/8ytyf3fsBgJ
	 QiAN32aak1mupRVqulJMMuCT+frJo0+n0ujFKvUrM5Yk0gGvBavZAWoYjQ1vs3AtaG
	 7YedHVXa2b+wzuXD+QcNGJfaNjI71JlXmgi0EDFzFUG7ZaAtggWdOoXrFQvBfSWlU4
	 fB/kMzqglmr4lROx+p3x/XVToQl7PwoISK0lfbtQgRm5P+T3TfdKjD8xHEXMH8Lila
	 egXKGkpykLO7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E0EE64019
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538953373.14094.8727925272019698552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a160c0b1a214288611d48a605993193bab72a6de91218080ad4c5ddecc2d9286
Date: Sun, 05 Apr 2026 11:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775389533
