Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B342D05E
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742738995; cv=none; b=gphJf92AGVM+ShwfvLWTbkSRXwAwpQeLSrpBG3yi4bjoXsIgwDBiVEaa7trDVnWrPhwGFnYCWOJxREQWdEpR8T6/LuW4HNx4CxfmwYjEB7dWnsD+ZXu65tyzv0ax90J9QExzSc0PNNzGGnH5dV0ywm6rEoFiaM3iNiwF8GzJ8RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742738995; c=relaxed/simple;
	bh=GeNj2nvIq29qExO4bIv0KNN/DAdD+lfCJiqEmVIdwaA=;
	h=To:Subject:From:Message-Id:Date; b=iX28Gw9csY7U5g8fiwc6AAiw6gSWjHuNDZsV9PSucB+E8VE5cTRvifFVI3mdKhIrUjr1gYIdsxalzyDpRw8SWmW0BBGF+ObHh8UthKtiI0jloPy28AJPVkvtV8ABNMwSO4cn854e/Yo+p3cVlFqDQIpJUYcGg0yNjsNIWrw4ovc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEkpnHN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEkpnHN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CA2C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742738993;
	bh=GeNj2nvIq29qExO4bIv0KNN/DAdD+lfCJiqEmVIdwaA=;
	h=To:Subject:From:Date:From;
	b=MEkpnHN6RQN37PKqefmJHmdXJ+VgwlRRBSU0C+SkAtQsKbK1cOF/A1us9MBmWMJFC
	 raDfh31aqscbzzn1qRjbfBIyp3TsdmJTH+S067oMuwFmGThxB6cI0OULEEASSySITw
	 KzBMpjQvzMcGE+gy70Vz5ZvMLaKjKsLrHeFry9KZ4xxAZLnIrjd0eeYhL9qMtlIt+2
	 sW8Rpc/UitygoRBZ3taqefgqhnSzYl6ZfbBb6y16A/BZC4UP+imuCLpOoFCxtf0otL
	 gjT4kVNwz+jnIC/DMx82RkpkpfXdL0s6tBXL6MU6/QlOGrexw8fhApjMG4wlFXOmwZ
	 mYmNyedQHV8ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD04DC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273899367.558.1101522261895421274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a516090d427ce0051a00b0c2fc22cc6aa7415fa6d9367c5e860a04071ba9f07e
Date: Sun, 23 Mar 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742738993
