Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCC4306B1B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764169374; cv=none; b=IODlFtbS24YO1m5TguLlYy2hnixQ4hm/Ca5l5GhfIhjZaJM92/fZpwACbpnSMzgawQmNOnyqfx+oAKHaSFrEjH+06X1mlohDS6SiMwi+xt4U7Rt+oOEP0RTj37K4SM71QfmAI6Id+dv0TJjEuOxur0rQ/Fw/0cMnC0M67U5OR0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764169374; c=relaxed/simple;
	bh=Ir7bZzJEqQ88fRPAine4ctODdYxLtsh2SIJRdgCfXgg=;
	h=To:Subject:From:Message-Id:Date; b=b0WpcYlt1FdZDsC3y028AeTIoYqvwaR2rJnSxi761nnBITM7KneA1h+mf1hUB3cKSym5cb6zoJoPKPZeQi8U26/XNJZVdp8GZXOXu8LBJ13WLHZHtyioBrE5qIacFX8F6VkGSj0ID4/tz/Ils8LwgcNgy9uA6cIVav0dFtZwQUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnF9deil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnF9deil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0F6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764169373;
	bh=Ir7bZzJEqQ88fRPAine4ctODdYxLtsh2SIJRdgCfXgg=;
	h=To:Subject:From:Date:From;
	b=JnF9deilSNE5o6Ta/ZU1OTksFPmi5VU57h7TdKQ+SMj5/6q3HtlvmwCIJ2dqiFEL0
	 xGm816rD8LXg3bILoQqO5CQpL0b/Qhlbpv36DwauaHMYUCVo/3dHiPSPLKJPcZ3H59
	 /N8i6IJqs4vA3Zl5hXIhuhROdYZtwcP+a618bfK05/DyO8s+zWhcKe2d4yiMafJcZC
	 d/TN4itWoQzOZVSRg5Y/ET4HynoaoAqKWAnHKShP/BNS5K9lPGop9NQgsYuIGVkqXd
	 twfhw5eXR+X8/+JsEvj53IcACPikqsvarRPGE6SfSeonip6l6njAaOXzzQoM/ATtYp
	 el1GwwTiBVqsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A549D10F5D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416937361.28574.4219240095566719506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da47f4b6236acbf77123c3ddbf25a3dc4bf4edb0fcae5827db77c73117bae2fd
Date: Wed, 26 Nov 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764169373
