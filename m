Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D18195FE8
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761487794; cv=none; b=lC3Of/6RWWJ5L9quc91OUIx30cSRHsIEsUNuXSQXCJWLtlaNwMabWtCe9teYFlmiDcPBfJwdMyJ3y7EhV+7jY4SMzPYl9CD1ayM7IqGnslnUy8ySP6BiO27GWJFNsLJpKop+psoAPvpqrP/wDGpzthIcI9wr/MUhRowaFQ/fhbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761487794; c=relaxed/simple;
	bh=LzVllKBMJP4ErCfy4TY1Zj6KVGqHLE6l7XMSnieFYK8=;
	h=To:Subject:From:Message-Id:Date; b=XarXvyE1XnNc7hRmZwlRygA6WJmzDdFmsswYP3EB0UF44Ks4QEM6yZ19QUdU/drvZK2IAWrJPVSVoV87zzJebt+bubjzUiuVjLhx5S5grrJyf14qx6EcEw1yxwP6pyXsFsNT0Mqigcb1/dx5V91S2je6+OVtMMnOydYsjCbfVoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7FFUOMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7FFUOMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5579C116B1
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761487793;
	bh=LzVllKBMJP4ErCfy4TY1Zj6KVGqHLE6l7XMSnieFYK8=;
	h=To:Subject:From:Date:From;
	b=D7FFUOMqp9VQj0LItM/SM8XmjmrNvJ+4lWjNr7O47pVJBKRz75SKoWAhQFhMSXFt6
	 3czkHOzDDkhfRJdKyw44XsbsTF5UN1BMcyju4YO8QoEV9CAY4lyKrAo19eQlQOBXXf
	 H4nhSYuX0VVEd+W09RrawELwmtY7JYXGodZymraLBGn5vEbf9CyXPUSoykmegwMGhc
	 +tg1K7DMvMJUxZieEJqSl+9pEXQrJsoX17MOjXOmxqrDX19LiCbLKSG6bXjnzHVPjf
	 zoKmPFZTH6jtRF7HCx9XVeKV7B5+1SYcamMYLKse55ghgh8Stcge7ghXqA988VC646
	 M1X7ahsjNsYgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954CBCCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148779357.28933.1183836605297754902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7143e85bb565b78319f01fe66dbf4a41ff16af50f9e934b7d193349eda54fb72
Date: Sun, 26 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761487793
