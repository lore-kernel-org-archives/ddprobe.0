Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8423D6684
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772035494; cv=none; b=Pb4WwO5383Ws/3dN0wFWl6u8a0JK3UOl3QXHmfXyS5QseE0QBjpdjYHJdZzywuSAUCNUy35Jd+o6ACDaq0vfX27RbON+eU4+prARtm5XccPzGBYdynwFim1U4W5Rp9KWCvEt8bi4pAej+ZzPGEMaF5+9SxU5rSn1yQ5zGv6iU0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772035494; c=relaxed/simple;
	bh=eTn9j/6ZsSj7i72BqmQwyU12S3PDN/oB2Nsv2CZF5u8=;
	h=To:Subject:From:Message-Id:Date; b=LojFcoLUVgHfXNSJXKweb/IBmjdZNpQsS7UCPyQFROx0wosfqaeGGUyzc5s0bDE8ihPBuWQa4Yt4RrR8B4p+wmPfXqgZxrXVyWah4QphIZ/1SpMn7HU2ot0guU+f1Ecr3B4DEAgLPDdPdPbAxnqyoo7C8CFsnqOWrfHroV77aZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHUDpjfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHUDpjfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE3CC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772035493;
	bh=eTn9j/6ZsSj7i72BqmQwyU12S3PDN/oB2Nsv2CZF5u8=;
	h=To:Subject:From:Date:From;
	b=pHUDpjfArscV3PzekhIitsqxAptwqNvtmJTfIHF/uCogYEJ8l1cCDRjZxFhU1rw5b
	 9DVWJiS8kEJ1zLzt52poNHMiPF8T/syxK/THHJQu8utYFrpMPMJtHAwtX/3aP2VDFy
	 wxaBIisuqvWTw5aoNAk3Wg5C83Sg1wH2fXFFSjS6dG8aCPV+NLWw2phiQIGH/9e+d2
	 8l/Xjoy/ZUQ228tVTnIXD7wFGdXPm84vRv2s6F/4MOrQOMhDn6TEC6fEjYa5eUFKll
	 IrwElXdvtdXkmtprJKg0P8tUx1tzZ5/FlgLbhlzyviO4AegQTsoLwOWakbvBOOML7M
	 Yj2ZlFgcMbc0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950C1FD376C
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203549359.25097.1879908590114191186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5575baa9b2d53aa593e9576d3d55ce9b6aaa66c8aef55a63fd2acc1bd9690a05
Date: Wed, 25 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772035493
