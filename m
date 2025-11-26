Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234DF2FFDEA
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764186174; cv=none; b=RrSIjIjkkq92oyEcYEXx8NyBGBJs9ZY9J1BZIgne8TpMXbAy9tNVJJKPra2rGEhf9NNeHexED7ZpQ/4xJ2d/SMk+9p26v2GiQlcyNJJdHVk7vLX+hVCwFGB+7d5AgRYb5XbfiY+vkRWYrPKf8i/q11R5VSwuUa1Qqnp0K1Igsrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764186174; c=relaxed/simple;
	bh=cVh/N14IlCUZQ1ndEXhbnGxrJ+Zo2NaMCJjzpvyx+jY=;
	h=To:Subject:From:Message-Id:Date; b=lCMhGgQQWRlyAGf6XLPbJbYJdNmj0hDdmakN9TYAX6xQpkiDg8uxziEyNN6uMixKvLOUhpRedUhsISakzzFkb5lscoHdlvcy5rBBXhX57Ui88cTu98s3vKLha9QYD7HLIzg1SKqXFZSOLihvR8U1p7Iu5qjWSpKq6htT1oWnqKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyvAoeAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyvAoeAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4B1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764186173;
	bh=cVh/N14IlCUZQ1ndEXhbnGxrJ+Zo2NaMCJjzpvyx+jY=;
	h=To:Subject:From:Date:From;
	b=RyvAoeAxGsZfIgpVxvcEoqUaTv9KvgHLjLOiVyKvrczR2tqWgOfIZpFIli4RzdN8L
	 MaffJM0juR+u9rJpQqUuoKT/YIax2KJJ3LpEx7khQaX4ieoMdfpV5emuCRKJeA1eEd
	 pDSpiSIrN6+96Bhpqlm9VJ9timtpLclGaiLvuNKIML+uSLD+wuLkMidm+ZriwB+Yfm
	 kZZYoD7OSyemRLtUqWCq5aqHzC11gk9ZKI757UW9lz2YAWa3LI30dM35Z4fHMOlFLt
	 Q4jzdJtvxe+W+QMA5xolm8ysSVnNK+EcO7yAZuAs8wAmq3yuqxb0wDlCOyVDuFg7Hh
	 G0xd24sYslbig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CA6D11193
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418617360.10200.4913090821877934864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a364344a75404bbb6c5cac4d79fcbafa5e1fcac17155aeea350e5c19691a50b
Date: Wed, 26 Nov 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764186173
