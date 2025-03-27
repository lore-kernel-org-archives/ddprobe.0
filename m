Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463EF214A8C
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743096594; cv=none; b=IfJ6k2c7J7VImCRHUM/vxNVuuWndzB2l1VhlSh1tizJsFZfsglbOWrkSrOd10645cGdkxBy37ab24g6jQzMerlPa68q/hCMbONdljOzKSmAHUF6Zay+5fSErtuV3uEvbSVwRrzSzuHoLMppJIS+2bSF6MKPVi4tMyMR4XqiTUIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743096594; c=relaxed/simple;
	bh=xItBI+iwuvX2l+rBBS5EYJ9r49CzgFFlpkDr6BCksCs=;
	h=To:Subject:From:Message-Id:Date; b=vA3zGp1BL+eoM7LE9nuNP6OcjZUsutgmMNg6GWSKsR4L+ANlnI/d2++rOepCv3cXkOZqjlZwMknzburBgDbvILrItkvNcbx7mkPU91lucrkP47oXheXVbaxY5+dhcB2IaJ0vdg3jgw69N8RanbhW3sfkyZLxsJfIMK4Fr7ju15s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bldjjK5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bldjjK5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D45C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743096593;
	bh=xItBI+iwuvX2l+rBBS5EYJ9r49CzgFFlpkDr6BCksCs=;
	h=To:Subject:From:Date:From;
	b=bldjjK5vuSQpVmOzKnSVsWbRcIqHHgPbaI1JNvple+QFFepD0fSGOOLogKK1hLjFl
	 EWuxHzbGQi6mFyoTePa8GWbDTzpO9rFp9Kp4IhxE3KS1HaPhS2f5dWdTMovG35xj/X
	 rZl3tieYRee1Tt4GOFmevv4z+0yZIhOd8mwWG/KdN60Pum2E2hUifLkEKT2Jgy1K1/
	 qi2bIGTOL7iLM6VVsoBhvCnO2KViKH8HERZVSz3S68td3A10jIC5BlzxbyYiBeapiI
	 VgTsJijLBIGklTBt3D5FX6X8UTRNhMhTw4qGb6SSWZT+sjLLCPx1WBouNGhQ6xWII1
	 GbjuNLb0TBLlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A50D9C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174309659365.20302.8262328778929712880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79d1e598526f4ffad78a807492d54a87e1e14e0a471d8fa9f6570037735ba72
Date: Thu, 27 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743096593
