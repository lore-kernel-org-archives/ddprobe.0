Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1040441A8F
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762928994; cv=none; b=aD+VtmggpDdHJ4/t+krO8dDUW66LPASHQ5KoVyr4BNpwNPyNBJcBeaQiUC8jbLKde81IUkTNciZoB10SNQQOAEtKHhe90lv9bWjFbycNeAdKyE3fl9ri21mn5xJ2d2uzFPyGMnbSWxc2eiqqXmuLf78RmTG0sp20DliW65DJ+Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762928994; c=relaxed/simple;
	bh=xNojT3YYun7O35cKin3c20LE1oUs8ati0tsc5LKLL8I=;
	h=To:Subject:From:Message-Id:Date; b=JKQZmK/sg/Qv6Y2/2IfZjWFmyK4hDvHPGN0dNb68FtLlaLAZMD3o1VltpP1L2891k31Phz/uwNTDX/+BZUH5lV5zMyGHszFoeI06JJDvA6NC2/2TJz+6sWcZ7E42rpYwXTGx+FBHN4boaxWXaRW5ofwDCdr90/KOA5Nt1gKBdjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCHnfAvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCHnfAvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 993B3C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762928993;
	bh=xNojT3YYun7O35cKin3c20LE1oUs8ati0tsc5LKLL8I=;
	h=To:Subject:From:Date:From;
	b=JCHnfAvTx+MwHN5YmwjM13gCPplZ0vEBv9nO++lSv7hxu8QJULWAtHiHDXLy7X3gn
	 AgdLNC+kMMhIIblVe27q1mfW/l62AON4rdA+q9ZEMOflOrpYPq8JMoFHWY8r0wp5SK
	 waK+j4Qfti7WdhVupPHbnbmqpUjqiXi2wPXUVjAJxG655MMMklGSZgv72PSQw0NP2s
	 sni8Y70IyGECcwDF0Fw80X+Y0KWedn5v3+ZWx3AcumtAiWrgNZqVen/flOB3+IElsF
	 by4zG4yacUpDe0+y1OoGuYYFR9FS2A9g0BrLCdNDnc3c/BBXUe7moaa3l2FTWOJGu+
	 OXNzU6AySibXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A1CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292899357.1341.2135856644778364262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b6b5ba9fc90ff292b23f257536fa476d5898d9ebb5bfd665547af0e0c5ff6ad
Date: Wed, 12 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762928993
