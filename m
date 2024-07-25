Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C14139B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721875554; cv=none; b=Wy4F8HxJos9BE59D0tYEQVcVdSOX5tFgR8+/dFPWMoDUbFQ69HeW1dftLWd5N2Misus/bOtgKu/LT5G0DHvQ4dFZWss7v1L7eFhSED/OsxmWEvFvgmvnGZDMWHTAdsNdgLMzIWzuhL3tQRXSztAMZMHccDaKcxN9MtOx1bkmhys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721875554; c=relaxed/simple;
	bh=I9pTPUsXZeoFEnEVlYmUS2fiIUkCSLOCEqyBHNOGlaw=;
	h=To:Subject:From:Message-Id:Date; b=X7OYFwaqutQQd1yYLGNa5DDb9UkwzkKCkOVaYU7yGrdYC56V9r1IGwWhfHc4cydXvBHutRrFPeiXOuj62/lBSp3G6PN0Yy+Uk5ZyV5rdDOMr8qSq/Js/rFEuqbB2tLbJX088jkGoSC2SWkX8GfKz744dy7S5HLNn3XJ3MuFTMrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJIgdP10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJIgdP10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAA7C32781
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721875553;
	bh=I9pTPUsXZeoFEnEVlYmUS2fiIUkCSLOCEqyBHNOGlaw=;
	h=To:Subject:From:Date:From;
	b=nJIgdP10/LMmmZxQPPg3R6lzl0jFC5uOYvZQ0B4boAxLZmLWCdyTUD2mdtHOFJVPc
	 15cilihvrq/0hbRL4o8Y+asbcBZU+drX2B+549TRZ6mYWWTRTF1h+chK3sNsEGNYWT
	 hrSSTd5J/AJVB3VfeJli/axnPXSIkknc2t4+crcm9JA4SWlksGPwkS0A05v9loZ4sE
	 0e8h6r/Q8HPrZ+O6CF27f8pt+mBrQnO13rpY7nzs4Nq9wMQlrVIvU3YlvFbTPhPYbG
	 mnX7tsQ3XRe3fXhU0wqbkSL/maMsbjdmIfmq2+NjhZPKynnfUm0JRKYAwisQQcZ76P
	 LTqhMUqUt9Jww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A589EC3DA63
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172187555366.9293.10513962550229733191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8fb3b49705b5fb8932695e9df2116a648f265a34e5905482d16a04787f98e47
Date: Thu, 25 Jul 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721875553
