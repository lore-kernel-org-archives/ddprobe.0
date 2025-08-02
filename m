Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ED73207
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754177994; cv=none; b=BkjieJ4EYRKouyFThC5aoQw9LdDF0ro018eNI/UjPQIN0wv9QCQjpApQ6E0LQQ1QI1RTF3Boz/B0PRphMRZ6Cl/PRjdCt5B9elfU1IAEFxyN5JfLFlmNLZA2hD7kuz2mKTWV7lI6NPlsHpq+C42aUl6NAiqTbrckSBOYAAu9EWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754177994; c=relaxed/simple;
	bh=vs/OtNv10j9GkrMEII/1aeAQvMCs0jeJhvHEyWSL6WM=;
	h=To:Subject:From:Message-Id:Date; b=Dks/akNxV0iikJvMjWTM8j8WB6JPx0sZHwqrYGOUnzGgwqtDWXXCuoph9BGKnSvXh7rfjEBLLkCePsalPBEKoX5vxTaQFS5XdMH1wsBu2DFMZvzXjpu8D+wy00rI6gCUrdUV11SR6gCc5sa/J7M7xXzgDmbehV13FYZWZryNbCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSMtpuk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSMtpuk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3741C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754177993;
	bh=vs/OtNv10j9GkrMEII/1aeAQvMCs0jeJhvHEyWSL6WM=;
	h=To:Subject:From:Date:From;
	b=oSMtpuk16A6mbCWnqxNsxc7eHOLpMZvq8yR/sieGyoXLMbL3mXsJgV08w7FrOo6gN
	 RfHhQkaZ3jlyxE2tm9yQ3RJ6TuVz7yBDn+39hw/P0gUtftMWTByu/FyYh820RMZmu2
	 y5nPlJ3RZpOV7tUKcHW22m++brnK5HHV7851cylCfCwP6DoOaAiIahquSEnS+b+eSj
	 D6IdUdpmRozTZfVSNKEcHyQUKv1Fl6VCJ3iRd2+JKmtVG4lY6goSkKLZDNaFjY/y/m
	 75J3eNAVg25XELQF8yFBKqvkNwYhAC8WDOANlmoY2jk72kPRbgCQ8BmbzFnUbCr65C
	 bJR0OnMyiU7AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C77C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417799358.8422.12158234959601904093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88b43d53f136522dd7a40c745f5c10defef96a2017211463c98ba14d1b30419
Date: Sat, 02 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754177993
