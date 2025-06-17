Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A69E27380D
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750138194; cv=none; b=BmIkbN7J2nAG24abChziIgOWyOSgnlnBC5DC1wXvXzx1W5qgNIytVlVERUOg+R5grdihPR5apKUPNKHhXmoRg/s77avr6vKMMwzutMvnmOK8ZMNcEDpty0SK7KPAVfBY01slrCBwbHMJbR5arD35moMA1Lz2PNRS+6nTa0gr9WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750138194; c=relaxed/simple;
	bh=QIaaG9R6iGupCq7y5HhMAD8sGxXKlgfnAORrArIpEGk=;
	h=To:Subject:From:Message-Id:Date; b=drrr3q0XCxj31Ynzfl5+iQMaRFylsDyMypEziwnHwgpFRRcYfWihyghZ/nMb8xQabCg1qBX+FSy4BOfwYjqnWqTYH9rUkyDpuTwdc14WqbgkFJA5/BlNcL0SjKveykMJ6m92ZTVSb58YXc+6Hx+VerY01B/NkuSkS90G0Y1Qdes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Klaq4DgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Klaq4DgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A9BC4CEF8
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750138193;
	bh=QIaaG9R6iGupCq7y5HhMAD8sGxXKlgfnAORrArIpEGk=;
	h=To:Subject:From:Date:From;
	b=Klaq4DgNBFNSKrD7ueQR+wFxAilrEv5Ptpp/I5hSKmZyEgxa8fJJprPG+BqSLfdHE
	 XNzUv4IFqve6fa4q8+p6k47cs8T7cW2EZKVXt39shEqLf4EjQ4afsWB8bbyDrUu+Yr
	 6mSFwrfE3WXZ71P/Qq8Wem0lckIUSwmq50fez51RAB5yDbsaqdEsI6j1qLrMIGgWSX
	 NVq1Hb3bBKhyrNG7DvtugyvId3Cm6FiJmtRUJQc7FLNf54Q0bYWv3FAYLD1dKg/HKo
	 MqTrsy8Xe9XthhPd9oc+f/PKhMD5a7uVWyNtaXPBDemoFzyLR68PctGTUPCfoh7T8X
	 j/LcMZJcs6IQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F66DC71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013819357.12457.3599425171981672412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411ec2927619e6e1c38909a83e5d2b1c05545e3fe2228b300f00aebeb5a4c0c6
Date: Tue, 17 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750138193
