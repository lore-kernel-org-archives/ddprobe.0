Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF520219E0
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726517754; cv=none; b=rxkFoVO7w/IHwFQUGBKIoUo3KvcWwBcxgKoL4+HlyGfI1vKAu7F6Ucx/HWeahd3TSxmiVW6C7yf0M+UKaz7Opi/g3E04aKwGpKMdmpeU1AgRih2Wmx3reha1UBRUHvhrzfUezNbz1nzBs5NFQNsJRVkJPxhDeiWYtrXlNJNMJzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726517754; c=relaxed/simple;
	bh=yUExYxI5VVPmWhOQTUgBSdiOxGm6xXlWl1XXrLyHnUc=;
	h=To:Subject:From:Message-Id:Date; b=QbHAPx6laj47uagj9NtsXMp1UL5REfU7ZwsOvEPA7vuNaTrXwnBdJxOHf4K15TgfMXAPexIo98LWhmfnLP83H8MUGjoCkARsPt9g+fndZgvqJ2x5JncdAi6rEVsW761vzE4R2DSUclci0DId78pDQXo0HPcsaTtHJBI6uYzkh04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sk2ejDE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sk2ejDE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDF5C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726517753;
	bh=yUExYxI5VVPmWhOQTUgBSdiOxGm6xXlWl1XXrLyHnUc=;
	h=To:Subject:From:Date:From;
	b=Sk2ejDE2SlYLut0IwCEh55YvpbkXzpX86d+q5sSW5WSTZLtPHlDuioy9EQh5TvQZ7
	 UMCAIQDiadiB95+WLjv1h4igfzMjDhkVAqiEcHIA/9guULfr0cCSiyTg6lJJE9LxEq
	 x6zjExuBWwyhMXTjI1buasY1dzdb6meHrvGMqUgR1rV6dek/gYvhBqL9pMb9f3F/NT
	 RGxAcRk15YFRtXCo5a6ujuuNA2nRapF+4wYNX5PdxaFwqDSVH4P0gqef6XoukYVz/N
	 2isUj9N9f/GCEUzQt/z44T/XZ72gCtFadwEoRki1rKb+5K4OcY4fU7AIwFJ1xHgsET
	 8QlloGA+h5d0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9114DC3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172651775358.30280.2015477354250833944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0c4f29119e2cf5dfca34dfa80c539d7849051533c364d48a9675ff5f15f8fe
Date: Mon, 16 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726517753
