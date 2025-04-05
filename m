Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608D35C603
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743885594; cv=none; b=Tq/KNTPqPfGvML0qREeJkHlaEOrAlnsc6z5yMYY8emKHYeZM4NrjjI8jt5KviQf/MVQbWRsoV0XeQ37Aki/ZsdtrKl260UDz5aEo50Vz6m4QN7LmcMHo5CHVV4+yaeLSyATJcR2FLsHDZ4ew0SsxHjvjZbYsxWNUMjEuwisIkkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743885594; c=relaxed/simple;
	bh=0/rSGqz3MGa23lkREBlJ1JCxyeNijiD+KpImLv3Imi4=;
	h=To:Subject:From:Message-Id:Date; b=XNhZYfpEK0jxe1p+HAPo2uqsUw8Yoqfv6aHLoy/u5aE/TFdYtvTFj5uUXwG1b6wkMV8hIRU4FGkqrFHxWD5LwhBvbndvCrF64r9a7ClhmubXGAHW/prLSjGHy+g4ix0DIHbE+78URmRFCvQS2rNzsbS+L+myjSXKGtpvbTdpz74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fO4rfmuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fO4rfmuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5394C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743885593;
	bh=0/rSGqz3MGa23lkREBlJ1JCxyeNijiD+KpImLv3Imi4=;
	h=To:Subject:From:Date:From;
	b=fO4rfmuUhWh1sD+knPGycmnN9lInkb3jzNOmUUVNN3b7THBs+vZEyQ86Tooz+UtTz
	 96vchlGFWPBwRteP1BZ2VwNG6fresypSTRB7IDAS0z7vIV3iLOH93eq4hfr9btwpNm
	 AMlQa0G5n24xKFzRz1/s0kkicDHAKHvIMIA5fctqu0Iy6mv15dVT6ekaNTW/3o7HfQ
	 GAbJowlr5WARnQVWeRhfAmwYhKVAo90tYVGeJ1LKfkPVeD6njKF4ZY2+nx2nDppH2D
	 hz96T5sks4zSd+FWovJrNybcHnor2DVeGy9WlETlGUvTOzUbC/t2UKfP2itU/Zx2GS
	 NskBDLQRf4FYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0116C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388559359.1857.15407644363688486967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575965bf7882a698fd8c2698f8a491ad09dad26a894495321d979c66520f5c16
Date: Sat, 05 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743885593
