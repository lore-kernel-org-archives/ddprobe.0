Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4508C1AE859
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 16:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720110923; cv=none; b=itg4ZUHSmqTT5DdkVPR+8gIH9EtXP6OakQUnxgdRhbMqnTUZzGqv1OpynxAhOV4e+ZJwyZfPqSMb0SGU56p3CowxahlFIwLaRKZkgtZTwJh52HWylY+L6D1fQo6vpRQbdPXQ2TxaXZE/g9rMfT6sCAGHfZq5Fl53oXdrNoEXQtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720110923; c=relaxed/simple;
	bh=TVi1KwgX+R/pXyLt4TIANrQ5n+W3C/vWdyhpImYrojk=;
	h=To:Subject:From:Message-Id:Date; b=bO38V/n+cse56ab6IdFG651oE3d16ffIsGdEYjRZcql4Vt/ePgkYZeP0q0z6DTTQ3LZZHdp6APPOVr9QKuj8Tcp/ttQz1YnJpbiK9XRmqeu3TMIpaQ6f2B7XzW/SrU4a93TPcignMj63XleVcW5zGz5ok9BIryGqLg3u6d8ar5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ln1U6SZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ln1U6SZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BA0C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 16:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720110922;
	bh=TVi1KwgX+R/pXyLt4TIANrQ5n+W3C/vWdyhpImYrojk=;
	h=To:Subject:From:Date:From;
	b=Ln1U6SZRy8/OH06FEslbpSJb9sp+ntNzz2nyRaxncYG7z/xRQERzfqO+36VuyYOWN
	 5gyPKmUyH2WnQQPTGX38D56YQqng7gUjk9ZaOQ+vX/uAJUyQIrfsZUnbEW1tQchoC2
	 v8RjurLb03ArlyB7ZwKV9K7tG5zGnO5BVSl9GkVVmzeCH7H6VbMO+Y64nkVfghVzoa
	 JZOnANzIdX5NKEXjlJRc/HWiJcG2ealB9NtJvTIeDB0PD49gl2oU0FS6flI/UttQeQ
	 hU4DCJ4Dx6L7BEfCZ1tDC/ELj/Abew8UkwiM2iJF9A/z4AJnT83qQC7gGPS4xfmhDO
	 2ejEBc9tOCJJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6D5C3271F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 16:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172011092276.15907.1041236077761938232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465a3c92e4bd55833055ae3ae8e17f49aab8d186bfeb5287143427d6003c7313
Date: Thu, 04 Jul 2024 16:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720110922
