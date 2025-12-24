Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3A62C0F6F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766601234; cv=none; b=p//or9Fi7AwbzoqBt0oAmiAVtb4mrHTI23V6lw3sDEgJrk8yO/NtFFbP/5umVLUGs/hdMjgdlkPSwOJqeXFBW6sTejRdkgdPe5WL5hMdJnocV9wkUoi1Zp6I0AxPM4oPauC8NMd84w6Q7xR18n+rbqzFaOuMbNB0lXCM9Cup51k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766601234; c=relaxed/simple;
	bh=/Rfc3bXGHRZyQD2o+9MO0wTnxu+u7i0FxvrTODkhvhI=;
	h=To:Subject:From:Message-Id:Date; b=WZsv1ZeSxa0N5vFpMsIcVCYXctC/x0S3nwJcUIkZmMeNKcfLTMBpr6ow05d6lobmdHU2dyifTpLHL9R9as8g65HimiYU9UrbYgnLnX/BzlgclyRW70H9G61n71ktt60oqBPccdqBhnCebbkZhsy4wTcc0MyoitzOJl4pgDIzsm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFYVu38D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFYVu38D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A062FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766601233;
	bh=/Rfc3bXGHRZyQD2o+9MO0wTnxu+u7i0FxvrTODkhvhI=;
	h=To:Subject:From:Date:From;
	b=MFYVu38Dyyi/biG11ud6/SuT6ZVUXHU7Yti/+16PBX1JhT6+vOR9cltie01ucJqaa
	 iGfavyrA2TrOl+l0m5/CS3NDn07KbclCEV5l5Ave77E2whZPK3n5xdxvGxFgBA17Ru
	 G6kw/M1t/nlPjwO8q8i4X/X9uQV9PZLt3ZHD/75nlZE2CEIII1YZoHkgKXfbf+JwD0
	 Z5rbaFVVNM9KBqSOXFtG47ifJK8b4Mns4LUswKmJ0/6hmdQ9vYwFl1l3kLUcAw6baJ
	 SE+JCBd6WvZLzbVXDGM5kTcA3mktFCfT7dSGb65ubBSd7V8jNZm6AaFRt/VwhDwA6A
	 kIWXlEp5259zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F0E776F0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660123358.3758.17695392887885069823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de05d9cb7868615c7d3890654ba889cfe9df7a952c5303a8e8b96c4a283e51d6
Date: Wed, 24 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766601233
