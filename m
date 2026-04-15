Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E47DB3E51D7
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776271654; cv=none; b=Hc4yDCd7qEGFo4gGm0ofMgnNWkyVp8tV229k9rYg8dA0sjLTf19Q1ZE4EjSYmENNDAEWQ5k7dd4A+1KumNr8U9BSI0kvIMb1KQyXXIHclrK3W3DuzjY3TOaUOXdWr9aInWviOF2dsv5mzy6t4Z/wZZwzRut/ZVK5gItavMeOwxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776271654; c=relaxed/simple;
	bh=K9zWGYoqZ76eV/aU3hgRpcv6A7zIc3rHFY19IYaKG34=;
	h=To:Subject:From:Message-Id:Date; b=vGIKSWL305XwlVSm2i9UI06QZb9o4D8Cf2P2l3fyyXElsuX/OyeysHEydEWMnU4M4QA/festV775gRuWM5mUleY5pOGGSyHlpXr95MVWEik3rdK5wNZMg7qm6JTGDwhHkBHdQP7cGr3bEYHZZW1MnBGheTP2MWqG2DRODdf4imQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTRFzYMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTRFzYMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28F0C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776271653;
	bh=K9zWGYoqZ76eV/aU3hgRpcv6A7zIc3rHFY19IYaKG34=;
	h=To:Subject:From:Date:From;
	b=RTRFzYMRPva/iAbRdJum1yEECFXc0TEl/5lxhYi6Dnd2zpTrPin+/6hY8jjf3d+8Z
	 k7WXQrgJI/iU0zUNY80HAZRwHznL6R2RHIgguwg2GGcSKMjoiNWyptfrZXFpO0hyBN
	 CDdNnAwTb0LgC9TF3g/6uz6b8VbWBp9r+PLm18Q+tvomdH/TaZDm42++HUDmhwRhMX
	 /jwx7JKjlRc9Vub3Vt3G3qef8mUAD0xIxyt1iW2AYMdQQXRT3s6gygr1/NsQ0oH32F
	 HqlO7h1sUBwPHXfR0GyJp9htFS6PIEOXAqMNJLOLrQ4zKdpjlvPD4A1lTldd+6msVi
	 sFjAt6HRetzAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1337F43858
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627165368.7998.2891944530754056882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651825af7cfa95d2b4189ee8d112b0c891e630c07064247535efb6aa1b24e6ea
Date: Wed, 15 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776271653
