Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE8A288D0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779861754; cv=none; b=JQ9iLHIXvFIRm2pn6Azl73jqoWJ00LfnmsucQd8rSM7ujZnNZBpo3sM1paGwaZ/2VFDu234vHz/2be+MUuSaFUVM6g2mUwO8ds047plCLXQJURvWH6jRpwzV6BWVp2cWw+CkgXK+C1UDnkd1oV+iYCjyHV93j0gvVZ7s3P9sAEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779861754; c=relaxed/simple;
	bh=cS+C3I/vHcdlz4BEfzj2qWhbzap1b7bXgxWkqKQ3ix8=;
	h=To:Subject:From:Message-Id:Date; b=nwkmpIKhbotEZAfAfVdBxaVzGFRuNLKzw2Xdng/TfX+sQEAdX21f38wUArzyZgthfoVG7ByzIocDelmg12tLzosJewVC3ooa0Zxw05SQyPjr6VisSZc2gRa9zFglFE6HM+kPaTmbsgJrrnflT+bgU8SiQvt6CFP2SIUcLUv32PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeysKyo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeysKyo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B9CC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779861753;
	bh=cS+C3I/vHcdlz4BEfzj2qWhbzap1b7bXgxWkqKQ3ix8=;
	h=To:Subject:From:Date:From;
	b=NeysKyo8TNPVgT79t8ZiXRMMEkCXdbpaN+i9CIX18An40yccwPI1ElqjHaG2g6hVg
	 pLXw1FTfuN6FNMO61U9q/Rac4IoGiAV3RKM+Yni+LEbeEP9SkTRydmB9Uukvnk5cSX
	 aoNgx/Fqz5YciV4Lkt4Fr6FnrG8pOkuOQp5NuhVh6zS8NJXn6EXyAVRFHhUnEqw4vz
	 0gRmylCkzB03W/6CXsr/OVps89NGqBx2ADjCH7kZUgv1neqhHB3Nlq3FGHIFEWXf8H
	 +hudcrAfYm3dWlRYJHAUsYfTz7fc3Mb5Gu/zia5ZNvsZZ3y2ja8/GqFSxPPYuen+Qp
	 NDW4riykcTBNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB7ACD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986175369.27398.7586561528716712535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e0382a72ec98118e7066e2793aa5f9294ffb02bc5d922d9088f88e41b912c3
Date: Wed, 27 May 2026 06:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779861753
