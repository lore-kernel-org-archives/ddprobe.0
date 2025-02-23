Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7442111
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 07:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740294534; cv=none; b=em4LOAfVnBR1rhjw9ZukDSgBXsXTCgVfvTw0ACLhaKAvXV7xtyFzXuq2tX7egjB/uy87X5Tkq0IliD3nLccvkr73AMas7We/9pIChmm17wgjVbFHz2pVskHf5Owlw6P14A1859dZASekSCBZOlX8ucyDWyERlJUQOIquI5rg8MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740294534; c=relaxed/simple;
	bh=s4HS/ypaY846ktYkRyA7scbv9v//1Hvl92BHwRWNbd8=;
	h=To:Subject:From:Message-Id:Date; b=BGKhdGHmTZLsi5ITJgc17gUcyOWqL2NT8CdYCjXIxarqNXHfVEqYUI/1mJdgzFzMuaTqUzQkTsIckGMZkOfMIvo4mKKNKFw3zffjFw/DD7NQ29Z+zTPN5sGlhDmgC+ds9Hs8E/jpVehXtCfFka5ldQTyQZdn71vuah4u04ANeiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4/kKI+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4/kKI+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F65C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 07:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740294533;
	bh=s4HS/ypaY846ktYkRyA7scbv9v//1Hvl92BHwRWNbd8=;
	h=To:Subject:From:Date:From;
	b=E4/kKI+K+ojhFcrPdJnBT2BpN/vQ/jA0BgXJYOwnM7NKy7QnBH3KC7S/9wsHhSj7s
	 0gNR5mtf78AfOM+koSj9+XCaSYPkzXThDnQXY82EotVYo0+g+lpQoURgvkVT8AfN7z
	 NSAEkfG+yO/y/CegkSD//ugbc3niFOymF5hmTk8+mlzswVbXJJNW3UQmn2m43LdKnM
	 pP0gdtklAT0k3Go8cbJ8h36JPctdUGAc3ehYCahP4bjPGQKO1+UroQIk86bFX1DNKb
	 V5izvFXOi7iJXrkdNIk9AFAXpP6YVkJeDW/0Swf4WUSl9kzTQutDNjat6ZS7d8WBwv
	 7ARwQbZSTZbew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CE9C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 07:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174029453359.29472.13290211386751822239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21622b3abc72b1d8b38853749a05017460cd7c2176146a3d3d8ab475984ed50
Date: Sun, 23 Feb 2025 07:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740294533
