Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4402264B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756965594; cv=none; b=Dv5QMcxed6jr2b7OQsIxUMBoALIAyNDTQZ/dS4gs0XEmkv38CaVSmkdsZlRLbTxrynN2Z14o0GnL9if+o2cJIkthUHD3ReaS+6LdnVqPM6eK/Z1IfFoXIy/10Dmt2JR2ck8me6sFk25r87b9+n0hA8ZN7bUp0ceDSk2//XWqthQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756965594; c=relaxed/simple;
	bh=eOBjCf+Csb6UXsNGa78D6X5vSdRD85CvZgbQH9IFLdg=;
	h=To:Subject:From:Message-Id:Date; b=D3j2ISkbPLFpAJiwTat0UwNMR1G0UR5p69KYoi8/gJhqc0s66cHBkDTbkQ2biq10shE/3r9kNC8vTEtAzKzl8Erk5jru4M1a/aOWBmzNh84OLuTtqFMKP+X3Qj8wTFQrQ3mMOP9ulJ0dq6nHZ82axwjhMl4CIUB54lFyyS6GVVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9sevnGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9sevnGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F47BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756965593;
	bh=eOBjCf+Csb6UXsNGa78D6X5vSdRD85CvZgbQH9IFLdg=;
	h=To:Subject:From:Date:From;
	b=u9sevnGtj/3JnCDVoWXb2rsAQ/q9KXUlpjXkpgvwk5E1k7iUnLEY+dSYf76bl0MUa
	 yyDi0kVBolj4pYZLWm6/oizWh2QYVi/b2sco/FP9bbIq0y3XYyfNRg2+KxTj4rYdZJ
	 lH/OHjtHUPThI0wTahnsZMyjckUtlsbPL32gubXh1cFXAKwAgZrEUhgniVeAsvSCI3
	 9O6axHrPto/LYbR4rXiPTPHmeX+nlQbbObdfyE41MSOg9cy65RSF3v9jAGASDSSr54
	 5Cok9EsBTwyU2Eoljz7t6W/zPLhQ5oU0Dgz+33nR2y9I0mZkg0Ew1p2VHvYqR8FMqO
	 XlUsH6kvtbfrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F643CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696559357.10286.14564461941288634841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c08ad22acfba9681cf6b2a3bd46bb032ab4f7c21e138823255c738f86a9e684
Date: Thu, 04 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756965593
