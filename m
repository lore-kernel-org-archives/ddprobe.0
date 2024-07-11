Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D03116D32D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 13:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720703243; cv=none; b=fQclSEhaCTAL8ug7uzNzOXLFrRvIgNry4jwJNkhkRAqrTERvnUqVehdtb8Dgj8uwDMjVcuB+mq77j87NqPO0qR11t1vFGUX7QLaX9QE7wexfiokqVuupUWum8QfFcjnWNM/e+GtyCO+B6Yx+XDQhgItYmtCyIbH4smNTOrqqV2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720703243; c=relaxed/simple;
	bh=Q3IPHpmbZK0cRlDAY2tzJ2DEafaN/nJemeSsT27JYPI=;
	h=To:Subject:From:Message-Id:Date; b=rgmRrISBgspPNFqMwNOoWubfArdlxPUn/DuIo671p7JntecIkHbOjWR8gYvDHo/sXbqNeZ63dD6ijvsfuhf/E6JuqC2Bc4WcVEm0pD5UwB6U6QvCBRGF02ORc0v6N+9sPbkxRXSUtoIykOenl3csJ7ICTMwkwOfaCfSTlS95vNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Avv0IPMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Avv0IPMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D51C32786
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 13:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720703242;
	bh=Q3IPHpmbZK0cRlDAY2tzJ2DEafaN/nJemeSsT27JYPI=;
	h=To:Subject:From:Date:From;
	b=Avv0IPMcN+Bp57zItoPNRBZzEgn1sabqofAhiZxeHECbTc4dqqD0kz55Eir7ZQu7U
	 hCTz5eePFVz3+4xTHCu75SjtAQnurrs4sLlP2OUaweL8WJaWGBVoxlXKRTFQrKFMQA
	 nJwWEoFVDyzUwiAhJoxfbjENUX0RzSM9E37qwwsaeHTwm/2hMRCAAs2XvnUoQHpeOp
	 PTpr5nI3eHo842IKpFyNIsHmt+ohz4yLRErGzFU6At4tUcxkWBL8ugNDKE0LOwJZrC
	 VEoixzT3E5eO1LdCEzEEHqv2IOpKuI1qafOIscRtOBqNdAc9b2FW3VdN1G7S/Tl9oP
	 uVceXXwRosFMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD62AC3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 13:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172070324282.8426.8798637273858600942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 824006a76952401d17be65e559aaf76087b7e4dfe7c6ee07512f67b0a577638e
Date: Thu, 11 Jul 2024 13:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720703242
