Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84417271834
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 05:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739339454; cv=none; b=gFMzxgY7AfzoffHaj0ANrqmghUPCpVBVX6uZ4GkU1oQ35aC/uF0N6ZImIDeB2z1DM8MiF68x36Rg0TRnkHTFNoqhBpNJg5LLI/hD81t7j7Ojf1pTguxMz5as93tbQLseIBlzzT76rYBJP0zUHfxq9qEOpW9S6w3Sn0CdnpbXoKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739339454; c=relaxed/simple;
	bh=uhdNY9BBl3e40ZyIefPPvexWkrYQgqKAWN1NnWFaga8=;
	h=To:Subject:From:Message-Id:Date; b=qycZX3xhrMog4F+hzaf+hrNabPHl/F9Dq7qD7iNHbu0aXc93YnFIsttAQS4UXzMa8pK5fKeyRH8qh+2rO+igcAXgC3iBm0I97AFdJnNexHYeTtcck/O1iBwcd+SReJ2d/eMzfVn2mJ6jx/BQrh6Npu/GyvNeRwHIOWdhiBW1ELA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7lJdGwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7lJdGwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E740FC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739339453;
	bh=uhdNY9BBl3e40ZyIefPPvexWkrYQgqKAWN1NnWFaga8=;
	h=To:Subject:From:Date:From;
	b=s7lJdGwIBK1BfQatvDZMS3yJ8+3S7T03B8eepwvHQCEG/L5p0YCS+8gkd5VwvC2oB
	 L90tfeLdkSQRoIp5YNQwy5GP4fGj+lR3Yw+WCVc8gTD0KPxwcn9+68KIoHkB0aEhCl
	 xMQrzoG+w/u3c0ff8kchlI9QKhp+LPs4yiCdx25mH9hi19pf+n7sftPF3aMTJIXhSG
	 ZKxaw2oV29Dhf7Xj71GCZX4x8e6iDyNP67JK2KQ66TbUjGI9IIin/lp64n7GgscWjo
	 1QEjyc0fphSiUoJCUIn3FWllL+H1O6+cB8/nLwBon7l37bL8caVf4ErQ++v1HgyhON
	 lFJNr2d73B54A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF876C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173933945370.14745.4555553558751566442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0df2855abb8b897777a7dcece536c81e526bc00968f6c2d22394fc7b6f4c80e
Date: Wed, 12 Feb 2025 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739339453
