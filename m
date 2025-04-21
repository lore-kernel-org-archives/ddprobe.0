Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BB820E711
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745269794; cv=none; b=QOyCPpKvA+UmqteKdT4IJn4nxX0xErmE/vXnDH2u9Qq6xPJq5fTV6x6EyMhHuXaRFNS1fCIhtyXNBYcu4c+2bUUkn5i3ZiGGlrgpORXuXVFXbE04big0GBJX4UpmaAFSMGslguy9XmVz84vhH0TFuj3K4dpztTR2dpPs1+6KQR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745269794; c=relaxed/simple;
	bh=wGcXusrqu/qIBVdXnuMTBfVo6XADVw+R+BpR+2D6p2c=;
	h=To:Subject:From:Message-Id:Date; b=lEUVzF2wyntIMXwXPaSObqKPCW3XFliX3zdQRxlBIpsOn3fniZY4/vrRUEjIexbsO1hvrET79vqZ9nDPGwVBYdfxnIUnd7iM9DeCNl/NaoE5rfPpp+I0eL/cL00IgqxS95JqBJrCO5J5/d62IFn7pIoOVqno2hLICIBPwXpAQog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7XBEdBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7XBEdBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A577CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745269793;
	bh=wGcXusrqu/qIBVdXnuMTBfVo6XADVw+R+BpR+2D6p2c=;
	h=To:Subject:From:Date:From;
	b=K7XBEdBsfkmpTZbfzbO6k53E1UuhwgXIJ2QF4VWCUU1rYIYtvvP2izujfVWcMyDLf
	 3uJUXTGB2odW06y2ov8ko1Nwbah0k/BpXz9xHc3K040KM5O++UrdX1XyxL250DPlGk
	 VmcDTo2OlNaoaODERnjNfNEWukJhI5HlzrjmZ2KkUAv3kSkYCW8Tt8aX2JyWonyXuQ
	 Mwl2BnkdHTGF6QUphtNWrBD37kNwP1/6+eaxTQwN735h84dYBztws5InJSla0AfmrX
	 CJ1ZYeYVbRiqWuLH47AzraEgvxq1uFUAoS4YJlZ6B/sbqscMQV7/QuzPOBL7BgJ7yU
	 eJUPh/lL93Tbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94800C369D3
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526979359.28825.892398659260014087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feec71a7c2a1561d38bb2f46a6c1feb00a256a9e7a71c42460f6c0d3329b65fd
Date: Mon, 21 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745269793
