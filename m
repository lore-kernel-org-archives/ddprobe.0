Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9ED4085D
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720856423; cv=none; b=aRjD+byHLs5zBAtxdu9Os0Th7Fbu8VmJYjpgoW3loo+yWWTe94V+74KLWVZ3MFtsdhirlbzT65u+wxiNV2ChWCAthUQRatLndiYp6DSbq+JGMNlIhk2P2vlUunDNJIBQ6W3I0q/cq7rWfn4TzsG98hIvvc8Oj3QFM+gYFcdQTbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720856423; c=relaxed/simple;
	bh=yFdapoocSAxzkOaprvcgHvrz6RBrtyvNc2aFoIwFS88=;
	h=To:Subject:From:Message-Id:Date; b=qf5Jv9Hy9TeSOu/Xl9k63fKLmXi/SyT1V96QmBJv9XpYh0dU1rNL0cAjSADiekTt1jBlY98v9/zlmzxvkt2MaQez5a7yKLQqLw4fUUp91fam8OgU/tzQdqnNoU1xujSD1+ryEXA428kCNYj6LWYQ9VP8l33AmkbniqlCebGngRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aN72GSdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aN72GSdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E282AC4AF0E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720856422;
	bh=yFdapoocSAxzkOaprvcgHvrz6RBrtyvNc2aFoIwFS88=;
	h=To:Subject:From:Date:From;
	b=aN72GSdCWpwLJErrNBle78sGDrgVJUhVk1GXNOVQUo89eRap6hvQr2swt2rQPcSvh
	 AfXeNw4i3JC2/4uh+MaW59zmrL1EEVjEaIhaqe1lyYvv2ufTtmW08gS8qjOojYjcyt
	 fHt2q3xuUMJK3Yho+1mpJDTqW3sVYI4nUo/EjXUhemz1ck263FSgmJGVsO30SPMSjy
	 LyC3akaJlne/oMLzipVJ5eRtkDmS4ROCBMSuyRTWx4YdTsoHXp3cgUFMRi+Q6Td6Ev
	 YoOKDllFYG47cJYBKaTFlxz/IAfMh5wE58dU1JFCftxttOB/GCpG30oc0K1LOPiYe6
	 URwCohuBwq97Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF15C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172085642281.20742.12671475302165679583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6574c4e0448937392d3f229f74bec5a29eb5d8cca8011e0eb1450128b0e0e4
Date: Sat, 13 Jul 2024 07:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720856422
