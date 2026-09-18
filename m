Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEEE39183C
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789715434; cv=none; b=H6KsDmwEQYVgRTyywwnuzf2g3GAY2JO0mC7jPWibb4ohjDRBec8m8NStDUe8jDSFSMO4YU/nUzOnwa8DKvl0vFR4t7Qy6dHsUyz+eMGCcebDPtwRPp7f8DKNz7kh+2MGw0lF5MApRCHFdWWfL2/YWbSgQNiDYRrgOFit+LrnZvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789715434; c=relaxed/simple;
	bh=9zRXJOuUdGGwgGOKw0A4n10HSkQaydtfM8Hin+48yXk=;
	h=To:Subject:From:Message-Id:Date; b=cX7AzqHGIsGjWopPBEpFOsMFWCdX3LZHMY+5QCKD0M75R2Xz6CYO2vd2qCR8+uVaYo+jbh8PZyr8hAzRsjgwM2Fwb6u4k9zj5BWlFREwJ2Ro0DmBu+peP/Agms90XfPmFIRr2YAU8x+Mxkq3Q3vwfSHZJkMT80Xn/BvHlzy+05k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuazbCJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuazbCJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4815C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789715433;
	bh=9zRXJOuUdGGwgGOKw0A4n10HSkQaydtfM8Hin+48yXk=;
	h=To:Subject:From:Date:From;
	b=TuazbCJEP2T0HWFrLzLNOn89cfQ9Yb81ANfYwu6mWwEwhU2n8d/Q2UeiOSKoVEVv2
	 tjXvVRgYx9rMoKvticg4awFsy341FraoTfBlrixBRA6S2NaK3suQ8BnDGyYU8b5siH
	 jxLrKi8BcWi/zvYOLemJ4sTh5KJGCbv0WwIGL7ymRyaUBEaocO4SzTaaRaUZyK0Pqc
	 oW+myRG6+FEXKhkAtXlMSiaZQ9tQNPqbwLyRmR8AdDpefCTdPLidD1YfzqcYbOL1BW
	 QhJgvwAQjKLb4dfKn6YEpxNe/OmWt3sRnFu+tU+8AMygDbSclq0g/p1ecfZq6hfOlZ
	 nR3P3Yp/dol6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCFEC88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971543370.9298.7079367831647143268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29a3dbe325cbf614e8d47b14176f8e96c73e815dd6c89f528e8b39a06f7bedd
Date: Fri, 18 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789715433
