Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDDA226CFD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771665294; cv=none; b=N5prFeq/gOp8Y+7GbHCQvKApWmQHNZwA5NQ+vNfD3jX9Lherk6+robGZEIYNu1ekUBUcM/pifrPF/JIOm3KI4BaN9Av0N+WquG41FDmmIpi+vMJlBNca11KpJtr6ET/8jiMDDpFDwZRr5ncxjaSbjEdx/q2VEIDmEfcQ/CFYSsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771665294; c=relaxed/simple;
	bh=j1UnAeoOz974lFQuPzZYLRUsilGI5/I5wT3b8Oewm7A=;
	h=To:Subject:From:Message-Id:Date; b=GL8Pe124beg/gtr8WmrUxVnFzdiUPETG6v+BaHI/PmG8AX5lJ+NiS8D7y94r3GlTG9oeznTh2iwiVuDG9gZNTRV1YjEcXZ4SDLA7UAM1VV1efC1TnG6rxdP8UkvgBFYtIZIp2boEbRzaHvYcx4TKJgoGXvMuZY5p8zWU221jTFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9w8DXvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9w8DXvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EB4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771665293;
	bh=j1UnAeoOz974lFQuPzZYLRUsilGI5/I5wT3b8Oewm7A=;
	h=To:Subject:From:Date:From;
	b=Y9w8DXvoQ8dH9Sq5avGMoCDSfCyUV111PyxG0z2MMm37EhotggSLwXdyMYAie1+CR
	 nhXOiWh3JTT1zNJI9+QHcN5O+R15QpdEOtTA10mH2wDGjcRsB86jYoDuR1eVkem7Ou
	 VkHjnpxllup/YEdcrv0YPuN/n1WiORwp8bjcS1ONUMPukAVveV01x2vberKDksR685
	 PLzr8NDHNk1Y55MiiZtpRZWODthf8SinOgF+3LvygdEKOs+BXXingtmkgpq3V67RyD
	 9B6/F0ceEmd3tsCBr15fc9MFfYMOHQeWys8i6qseRD3T44UozXnlW+yPpk7AaWB5hR
	 yfGIQpe1LWIlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FA7C61DDA
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166529358.24213.8495625010531523706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab0108995f6f4ff29712223ddd1aca406bedebf73438436975fe837f20b730b
Date: Sat, 21 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771665293
