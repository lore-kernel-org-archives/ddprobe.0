Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2551D6DA9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783127914; cv=none; b=RFDL36wO9p0HAFHkLJMIuJ54CZKsp6KQJjldGDn+puvxLWT+2x74NuzJI5Q8/Y8wvmmLm+5Qw4SomKAQLpUn0bVy6YTqBXFJi2/Q6LJmFEVdFhgO8n2Ks9l/BbRqlUAH3GDwVLRqTAloOYb+p5Gl7+iCWF/PNzCW/EF3ighZGGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783127914; c=relaxed/simple;
	bh=UDBFPuuXoiiLLCB9MdO5ggyHq/uUW3p1jZEInjLedDs=;
	h=To:Subject:From:Message-Id:Date; b=aT8BxLErycCcQXFbRK8aiM2P5aHl2i4TvDlhYUgBDm8TE9Hoi4vCKP4OFvW9N1vyanJgLeDUX9wTEh5ce0cOwakOZXMft5aLvkFM1ylJ7yhWSuzWMzVnEzLmFbhQDXO4rBcQHFALryUOW1inC0ZO0IlWCL9Cl0g4J1gKxd9mWMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3ulReQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3ulReQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF05C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783127913;
	bh=UDBFPuuXoiiLLCB9MdO5ggyHq/uUW3p1jZEInjLedDs=;
	h=To:Subject:From:Date:From;
	b=M3ulReQl8Xbmdr5NKAvnPQRaNVEzLfSb8792EomFv6E9bIJPv90cmn72wYwjgo5ms
	 l7zug/qk51mjRxggwIWK1mRqfvgH7nPaFxMHaDZo2n5p3s+VklsjXm5W5jvkaEBh21
	 8wveJ9akNdYsh5iQ32QnkkpEtCOw0wwpG5EjacUfA4ObQEDpFK/gGea5R9LAzzcakG
	 MnkAfA3t11egS6eW2IDjn46czREJY5pQ6S/WQYiDBeNztwu3aVevYmLH+VYAMP4gvH
	 pei+Nzhv0evLphSH5yg77b36UiFsynl9Uwr+OWVP2q6z9XlZrAd2G9aSqwW7+TeMWf
	 G3DdZIR3QZIbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC18FC43602
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312791368.11586.13784722658625894128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038bb96bbd0d05b08db7246e7576ce07c5a59005908101dfbcdc8f92a7441be8
Date: Sat, 04 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783127913
