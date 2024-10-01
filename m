Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222EB19B3DA
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727779554; cv=none; b=pgFVMEdz2La+8rKOLVV3jhgOPCu7pNImZohCrI97MGLZC1tWJtIz+jJIgFe3asyqlbV1D9UxedPGXnM7kC5fNbIzLp7nFxA/eIauAqHxonB9rf8AA6rXeCQ7J7cwbwUuQd8nNQMYnIqfZI36Z/4YHjdtFRPNkUHP/beQ+hIV6sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727779554; c=relaxed/simple;
	bh=uUJZtJg6NgoMu2weg9wBtsTt6sc7AB8zyfdHeKBJ9H0=;
	h=To:Subject:From:Message-Id:Date; b=N/dYU2GN7dXqJbmFd2wmox05y1vR+ahimzYG11wUmLTyURSHCWG6FWxmn5vG6Eb+FMweg23KY1u8K/EXCmbb/W5IZZC2LDvi2c6JPzu9kPa8dzNtfLS/DAqKR/eZvs6zr700X9i9qzkFP4WERxPaeXwrtAs7EBq0/R3T4u5Slhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZHzkYVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZHzkYVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45C3C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727779553;
	bh=uUJZtJg6NgoMu2weg9wBtsTt6sc7AB8zyfdHeKBJ9H0=;
	h=To:Subject:From:Date:From;
	b=OZHzkYVl7p5cqbKIoC7rJooAglU8FUWrS2BMjfqShsY2l5uA3WmSo2OKCDsssi1BK
	 c6mnx5UNDKpG34NwbrfzTuNQPoI1U8csQL/KPBEYCZYOoQMzdYxGQVUpUaywmJGjqi
	 qxaXKKUs3gpKo0ITPFR0yANLz8MbNZV6QIIeJDHreD/4oYBchpbdyfin3qIw7bXTMb
	 7RCX9jgthb2bDyZIC8psKFJWoCVApnn/ASritsESeocdzEoS1rNYNjtY0yQD9i9CTI
	 pus9m9yB6OZy49zAGufgsw3oj/hJzfbKnvfcEtK5Wm740ugFG6pAl/Z2cZ4wd0xB63
	 nwljYGtcz2ImQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7C1CE7D0F
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777955362.19980.1145947464420666315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdae338db78ec3e1ee0bdef0afbf36ae56f0c35bb5868ff22c6f2b4d2b6638eb
Date: Tue, 01 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727779553
