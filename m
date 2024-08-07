Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3D11C9DD6
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723033554; cv=none; b=HlwDHEinz6+XXV6AFHO1E1LZ2dGkLGMG38Ihc+E1efJXMvbkQQ571ctUlciV7Gnlq2C+LUx96Y/+IFCKroFHpDDGWvHWZ/ToQ/2DqXb5re7JkPba1RwwOFv0Fizq+p70aW301cScqsuFN937eoWqtjfvplS2uGpmRf1022TK+Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723033554; c=relaxed/simple;
	bh=wpEaE+l3uE1X/4O/+TiFZ+tojV9ZrYS1vPRtNAbVaN4=;
	h=To:Subject:From:Message-Id:Date; b=oCWlVILxD4ctlQmEq1UrazvRj0xIvgB97XDqZ9ZdUkHcgFfjCHc4KeVotTWgfdUQ35IXLlM1vFsxPEqUCFyWqwuaNpxCSWm2xgxwqSO0pRfiGaCoEIPstdNbjaWlzBFABzXfr5OAJWWxxD162IaitQjZtobdiOsNVvyqUYKgNIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhPKzNdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhPKzNdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D95C4AF0B
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723033553;
	bh=wpEaE+l3uE1X/4O/+TiFZ+tojV9ZrYS1vPRtNAbVaN4=;
	h=To:Subject:From:Date:From;
	b=fhPKzNdBOL7Lin2JIfgeCiwFsB6aYfHIqAhuNDw0GNrRslizRuo0Cc1a3Rk2+oOe+
	 Jzr4r7FS042eygLhRuh57oYtVgR8PpTvuaku9FwTpKhyx0GjAbBexTwhldLKe9IkdK
	 Ogg79RqNasw/JY8CmjpKWSHAjBuctF8SamVsHWCXtKeOO19sE5UowjI9sdCValGwJQ
	 /j3jd0z/R5STSTBlNbRCiqa4z/TCv9WGjV5F2RLngNOFp0/1muR//pQ4vs1neK6Zdx
	 zVoa0NzUS1E9apeefO5DhOi48k80f+Ejw3PmXE3grAEGA2ufjT8Wd1Yx7LFjGoM14e
	 qEK4LjoxQD75Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954E1C52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172303355360.27499.4641995146033056306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646cc05aca4177e9a3cae45f38771c6f77f581a0dc72b9293d455c0758b2efbf
Date: Wed, 07 Aug 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723033553
