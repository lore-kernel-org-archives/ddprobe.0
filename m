Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DCD137E
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729303554; cv=none; b=Ava+PehawT+/3eFYiHHKun9wndRJ9LHOnpfUTnClpAHxtOg5uUDzioFcseYeiC0ZPjKqcXMzureSnTz1KSgpVdifwPHPzX5kXVBy2DsOijemTzv0+18rQIA9x6evvzORruIpKlwxy20/cfTPvspfo1z54/lIXwe25Wk+SZYu6E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729303554; c=relaxed/simple;
	bh=SpMy87HnglXFvb+4khnMnOI1/rKzL2sYwrd44UtcF2s=;
	h=To:Subject:From:Message-Id:Date; b=U2WZZRv6Iq2ZySw4glTiazapzhyfRqohaI3CGj1SKDF0Cz1y8K6m7HidZsvoWJ8S7L//bHdjEiYG6mriqSDpGaDssldiG5cThEWuWDxO1t8pbuiGmPZGoYFEexGASHaITI8BI3rre0bclp8XfIK0Po7yqlQV0V7JvGrNhQQSuEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXOxzI96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXOxzI96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE752C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729303553;
	bh=SpMy87HnglXFvb+4khnMnOI1/rKzL2sYwrd44UtcF2s=;
	h=To:Subject:From:Date:From;
	b=nXOxzI96RrU37eq5QPpYG/sFPmrfDupvUadh/GgRayVgKoXZuGto9FncCPHE94JjE
	 6LWCVulNOLuHnuqPlelt+I/C2UhO0H//OzDOVKqpyxVZudeIm8lbmiDKTK8fi8Is2i
	 ch2t+Q57QZYB0uwMbWABxGgX8MW7a1laSLLSAa1Kn1DJyfRQ/WOocD1nBLcnd5pQYk
	 2J1wNxqojPGZN1UZJ/LLr4PSOkrSGAzEJVj7FPjYyPk3MPH3ATnJ9solPwqLBbuj6I
	 3nw0E/osyP/Gjl6N8aEkhtKp8Knv7le3Wima7wammNbXF8jCDudplJK7w0jDKRyYcX
	 35BqXGSLzYH1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADF4D3E194
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172930355360.7933.17925692845921763239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac389e5f93a5972a9f07b0ac5fc2ef77bfe7d0d9b2b06758725f695be3e491c
Date: Sat, 19 Oct 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729303553
