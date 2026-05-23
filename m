Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1621D6DB5
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779557554; cv=none; b=H+O3rOPcKLP2iHQr48HXxZZAEA55e2jYnLYWb/1JwuGjdu8OL3jLs8C2sbdIfcITih4WdRQ+3PncciCT7Hvxxq8YuhFXgFTjAWIaYQNlJ1iPTElfvjwpQ1ZHYMwTdNHI0m+9md/SVXqQCwvp/4fomck+3oOocyN3fCbQ9H7VFyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779557554; c=relaxed/simple;
	bh=si+Ai7wYBFZeyBzFpGG54O9JSijEmTS7FLXagNyFPH0=;
	h=To:Subject:From:Message-Id:Date; b=UN9bUagL2aQjWrKRJtFwqfpseazq3elQh1bb2sFr7Rzze6Ue35dCShGHZAw8JQbjnl4y6w7DuhDfTDQmxM/FPRTbrk1x3VH95ECAAGAp8fhSqJAQ4rjHDi9yllun4aRH+PB6m37T3dWW/OGIQy0MkrGdFFbW+GvZOe86ZCfCrmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYbbEfZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYbbEfZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63F5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779557553;
	bh=si+Ai7wYBFZeyBzFpGG54O9JSijEmTS7FLXagNyFPH0=;
	h=To:Subject:From:Date:From;
	b=UYbbEfZvIowMsx3mKFQK+yl2FrPa5+WmkHSCIZ7u/6MjT6c4cd0RKmex3XPAk0K1w
	 iz5sIb4oTndLEQagB2T5/EBbl5sHStXh53if3gA4ZuyDhx8MGYcyGyH4e3uEjnHOWi
	 4lE8y0Ci61WNzQmU0+ubfOyoozZAksN77p4TUghniM04ft7FZzsss/X0ydNiFCvQR0
	 vMZTBX6OQpIB8LDylaWwwvyzTjxutrSztXqpRlswD/S0pUqwkrJugySQQv423mhS7Y
	 blJpkBjsDq9sPnwnk/y+jyByU9ADYNnzcpY2kVCFJe3qgZTyElHI1N0pH+5aOXZRyF
	 r0SXkojVFte5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB941CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955755368.11161.8990422572339735763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736c301654ac5e2dcf28dff31e863b1391a171258316c5fedbe7b4f7a5a97de1
Date: Sat, 23 May 2026 17:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779557553
