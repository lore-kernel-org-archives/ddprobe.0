Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7D526ED2A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769661234; cv=none; b=sL+WS31K74Q5Ky9e+XbWsUZWgkAsZDZl2MuIX3TmQtdyt1VGObSSf1OvnH+PFQtKeL+58nTsx2kzcI2cqh6abJ4iyGyj3yR9j2WwEJgBO8XxX12bPLqS83cObDNeiCqluhmncIrxajHT1jiodQLoFYKIN8AwQJySibBVRlVUUHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769661234; c=relaxed/simple;
	bh=9RRMAVR9mPv5nmtjrvfgU1NpZRJHUyD+DWmUpd6owfs=;
	h=To:Subject:From:Message-Id:Date; b=RbEEJPv8MHf3Npo8z2OBF6hQiWE5fBHtXUrp5wsUWEQSyMSCXMa+Z9RRGkYe2MKEZg9BIqrl61PxSjIgY6RA4Ia3I8JNl6zaHGX4/IXhQL5ZhNifpNyY5UDW9qHV04S3345NbXSBXVpHnABQ+Irp0DOjWapguwCrnekTqC1VnBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDTIvM4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDTIvM4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8079C19422
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769661233;
	bh=9RRMAVR9mPv5nmtjrvfgU1NpZRJHUyD+DWmUpd6owfs=;
	h=To:Subject:From:Date:From;
	b=EDTIvM4UJfLTPnfZI2Qau2PZgp6klHUP8Wx54L3LY0HCP5EQiFl4tug1dwySMHfHa
	 bgPHsoyClv7Xn7aPOw2vieOJNnBSmFvuNiNkZEZPlzpPak+s7nWd3IfGapdry102GJ
	 C/r2LstMJNLdecmCjeidV4PoMztrAMMy/5YNjtMUhu9+oTz/DzTR4wGIqygkVjHW+n
	 sv7Tm1FcDTGMvbJb8gSB5PetLlF6Vb0SzIQ14R1N8jc5KjYISLxvCWdxdHQ2ROuyQZ
	 ZrPRXAxh2rEtE966Z79AIHHMvrVyXA5xTO0ysgDocl9AhkR4RwCQA40hsqStXCmDBd
	 qHIRLeP6kGY4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BE0D3566C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966123358.13146.3129023697140883820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32eb12d2830d0c32df73df2d7aef7937d00003328fc36ebe56135761c79d563c
Date: Thu, 29 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769661233
