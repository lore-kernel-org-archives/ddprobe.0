Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF2E1519AB
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 04:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739507334; cv=none; b=XGOWa0W0UlyM3epUi3hAMHR0UeT51y1uLN15bb8fTIZmb7iIfp4NZ6CR88YYgmpOSIDyB3n8xd3IQutvV08/TKsqe4K81lKZxm6800SL0JlMzZWlb8DmSM2zsFga6MV8tf1Ia0Jz1wS+ozceHPcHjP3uDVpiEIVzAorVRaNjBM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739507334; c=relaxed/simple;
	bh=jty+4zkeRWe7UppP+x/fndrpqEz6DJF5djEKOS3BDg0=;
	h=To:Subject:From:Message-Id:Date; b=he/jIAm7oQOJIO0zb/WVkQ2+v4ImTmS2Z0IZsQpTjgPglISWKDA+ovGDuy1IquO01KtA6ojTUpZw2svuPOrdeklRHTE1IYEBLkCsjVqSdhaW1vo4+sjZ5eyTqCVKYwV8xQtYU1C3/mgpBfxg6bQdScowPT8tH+wcc07k7uky47U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuOkTwwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuOkTwwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B008CC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 04:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739507333;
	bh=jty+4zkeRWe7UppP+x/fndrpqEz6DJF5djEKOS3BDg0=;
	h=To:Subject:From:Date:From;
	b=NuOkTwwknWEiMbzhxQN0oyjjYeXYAlpFjLs/XjMUYqVPqGdm8CAtwI5KSElaz0rUD
	 hrkL0gnfQYoWSPa/lCDbzs0vfeM4NmHQcrFCF0wmtdvT6SXgDinVweoLN6Gp7Xr9Kf
	 8WKwAPyzM1Z3cRMsR/uizxDgr6tOXdBO2EX47bDfz0Tp9afHiu9ztqf84TEgS0HPwk
	 pfaWuAZ7sKXPNOr5SPgfccib+O+JqpMedYw3wcOFNDxg//2Pdpfod67Ho96TiIIU9T
	 xVlXBGNWhFKk0c3nkcj3e9A57/Rf/o8dsc+sgKNWqXk+oSjcAcBLZ4Fyo8n2dBHt3h
	 2Pk4g4amqDN5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962A5C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 04:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173950733360.29887.607346740211600582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28829be81435693b233db29d2a17707167165a1172e34e0032abb20970e8f1ce
Date: Fri, 14 Feb 2025 04:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739507333
