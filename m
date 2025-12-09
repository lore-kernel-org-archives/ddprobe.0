Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBA38F4A
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765243373; cv=none; b=SrFP6svh8/NPTzWnM7+k5frAcbHm51MyOEnMTPEZqnDnY5dEHiAvoWzWOydMxxZrIu8mS9wyOg0U/TYpSPufbZY/F33AGFvg53S8I7JomqZhVQU+19Q/is+/6kuBBTt2Z2u0oQEMmr7MaYSuCU7JUIqgMpm1JoHHJ/viVIAapwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765243373; c=relaxed/simple;
	bh=83EKZQAkH9Z7o4pxUOedOG/H58GS8RItYJPKvOdb59Y=;
	h=To:Subject:From:Message-Id:Date; b=koNSAi5WOaYyB2ZQ5eO3L6jVugdTw32+86nnD8bfQ6iB99HvREgNYbtXak2unnNnlbChQeGo+YoTreFe9waK8citSORsKlbuuTe1JO1txS4Oq0GAcWohW2uvKeI6G+sK6AmMYXNIHnFciS0tzehRgxURo4B09VxZr+/Pe2Z6RYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSyYcSAS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSyYcSAS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46B4C113D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765243373;
	bh=83EKZQAkH9Z7o4pxUOedOG/H58GS8RItYJPKvOdb59Y=;
	h=To:Subject:From:Date:From;
	b=fSyYcSASSLokPk7onEWBw4WDaVmwa/8vI3e18AuBNHdDwPoJW99m0qh6shx/rfaaE
	 yF8QdQalXxN6JfHb0fyGBfqcoQi76orMiZpJ55EYXSIj+O7OWEYSq3+u5BeqzD5Oxx
	 xcEZF1dxd3VPsonK3tJblDKkWc1lQH3rDSGcP/rPOvxQteMKSRUBBGg+tb9t6N7nIT
	 M5S6q5IrqsUec+dHn25Z+EeRQl15/6BIOsLFAzksUeKjg/+5yvCn3o9WBLXAjgTKwH
	 DbeQI5CdwsTThrg577yEBNMeT0sht07ZLRqGa4nArcleLO5vnH/sVNhokYK4Mp7BYf
	 XhnnVlojBANzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91984D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524337358.5619.8612755192202463580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92bd5afdd4f0b6de1b2abd60d01a1145edf2cc4b42231ad7c535ff8ab6017bfa
Date: Tue, 09 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765243373
