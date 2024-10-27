Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D02538A
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730072754; cv=none; b=UzrCUnz4oO7jTZaZ3WFThS4VG1AcNRaTsjiLcfJA9sGBrSbeksoIWobzBrmSUqzStl0XNWfDqIVz7Ux1gj+7C4MHiCn/INr8+oef5d0YuaoLBoVSkaBIPJAPj+Yi13D+pjqR02hv5dJhlWT0cjCFJOQxxtGu8g8i/q2NGkf2fhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730072754; c=relaxed/simple;
	bh=VCsa3VU/nriueXpzhNfP3PMTq4qyk7poYvuxMTapObU=;
	h=To:Subject:From:Message-Id:Date; b=rk77q4YexBqTcVux0WcKf7JXrhBi4hU8vZyMgPWl1bkQi6p72qFI9lMB0TLqzRQhXU4THnAHhW26BSJ9iEJIMBn8mOv/fvd/4LaLFBGPh/fqZ/eTDWwWTNwocSJPLPOLoGNcEBfvJYTb0N1HEaVa+jjJLVdj1HXDIBWV5PFEx7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXq7+oq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXq7+oq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA448C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730072753;
	bh=VCsa3VU/nriueXpzhNfP3PMTq4qyk7poYvuxMTapObU=;
	h=To:Subject:From:Date:From;
	b=cXq7+oq0Wtp464dYpzED1M7PiGi9cAuaAnbY1yQnBeV4E80bl16wf9bT97dcQ/aDh
	 T9X7GlROoxuBvUYTXL9U9hNok/h53XzQF5iifoAb7FuwFD+tMplf/Pgn6iCe9Yatu1
	 k7l2djnZo5lXWEBQCxiGSGdnIj0wT+4pLyYQgaBpcTTMBkHxX7RfIOMnTfpqjD4RzQ
	 NY+Ny8ibzXPVn9IEbtyMu9i4Huehy7SeUNYafQ0peFNTA1MLGmDIWBFPPFCCMNr/0w
	 Yzp4D05e7NvUV04/l6TXSo/Jr/OGPx0bZ7PBY+YEW4fG2IdWxNpGppEmEYx45PAatG
	 iSpbr224tGzDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C34D1358A
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173007275358.23229.12430805882973872657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e369ea58db26333db1de91d53911bd9ceea61bf3baa4c9abfd98ca673678ae3
Date: Sun, 27 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730072753
