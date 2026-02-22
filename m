Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBEF520F067
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771778093; cv=none; b=Kt5XGpPm960zQTequ7IJ3WEXRppxKgJdY51CjX4ir10FVvscgJO3cOw0c5ci8q8N+k40Zr5dCuwPnx1q1WlSmuZRp27d7aP0HsijjDhGXVAExmux3m3cUAXYXsZOQS3p1p/rHpFoAE5UOIowYGNrN6oxpSfe0IVMwSBytffwbAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771778093; c=relaxed/simple;
	bh=cTROvQ/rNQ3ti1Zsks1K5KtNzgrIRi01VzBMFcFInOA=;
	h=To:Subject:From:Message-Id:Date; b=uhefaSDIuHvn6wSxiq/WTdSKiu+zdaNepwzDBjo9sJNmsphw/+M5ArO8/DaOMUmATMo63SR3YQlXzMIDoARpw3fa9Roly1PMVaD2wK6ALTmFi3Npxm2aeUJ5S2gNqPOtED8YYePbAMrYm3nLB5mPxbmbFVJWqibOyhHfg5v45i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGBvTB8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGBvTB8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB10CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771778093;
	bh=cTROvQ/rNQ3ti1Zsks1K5KtNzgrIRi01VzBMFcFInOA=;
	h=To:Subject:From:Date:From;
	b=hGBvTB8GzvNvbf6OflitY54pkePvUmZ72DzBtNGH5nUsMqxQsM5RCJ5uq5OE48gxS
	 4uihk3vz4WkhagdiFBYgdOBsV706u0WHib2bfA+90sb8Iam615mV6nN8IZWSyYlWuc
	 XwrCxsMC/adUrqmLBVnsY3rVJ+hSgYjNrzugmun0xteAp9TJYRAvQr/cpkCpqyChFA
	 A97YCtwyOmU43J/SZnbStUw+UA3+CD/d3GI0UuUTwLPvzFVpNI4mkjFrRZPdiY0jyf
	 45cQEuzUOtlLCK05magEupDQL7RlQEv403YsJXPHPZDIU0AuE42Wl2IS1lL5AVJKN1
	 OQi96Yie3/yHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9592CC6369F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177809358.12655.13384212431408650175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea0c89b4b538b232e46f7b55b0f0bdf948a1f0deafabc4a557983e27fd890e68
Date: Sun, 22 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771778093
