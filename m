Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484CF2F850
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750376394; cv=none; b=flHpd6kcL+Hpb+YwF7gQ1/xN4GWZ9NG032ZVF7Sncu+CRpKdo3MSLTqYZmRpj/ORW3vyeifJpHI9D58ccQeFxm8IE55Qt6q+yKvVmDrFhyBojnioiJBKTSqCf44U25mT3e3+RCJ2apVGFBYNK1LWb2kEN2utEx4d92TxDnsCeD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750376394; c=relaxed/simple;
	bh=J9irF3V23ht4G2aeEHKwgd1AzvbPDhauAZKIB9DDXNI=;
	h=To:Subject:From:Message-Id:Date; b=sGVUqsLZhe2yMJMLcXJdE2qNeODPPB9Rt2C65cCmTod5V7TYlJFpRWNg2L2gr+6jpFXNPymxLne96BfiIwyFFkT7kEuxRtIX161U0C9Q3BByDDawEtOFpmLZxfy0holyOc+pRtrixEIVk0CbAgYpY8HaESC4vv1/skMgCyMnRQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1j9yZMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1j9yZMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F75C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750376393;
	bh=J9irF3V23ht4G2aeEHKwgd1AzvbPDhauAZKIB9DDXNI=;
	h=To:Subject:From:Date:From;
	b=a1j9yZMoffGc8HVBdh2HgpAZObQusDtqE7cnoNFrcK9aLw37TfOgzv/8eSpYwQsKK
	 vreq1kZpjfSci6iJYTut/jRjl5JgUxfCLaTijFR2gYfA4+U8kTkK8DzxkYCE50pcHS
	 XCeLrJB0w4pXpnW+2/s4RJQ4jp4Hi4WYzvm04Kt8UWTWa8wKbj/J17G5O1Oqg5Zfux
	 18Tb8qfaa7NV0ALVVzYmrBiz/2XaX0B7meVQRH7FtyLQFHHFKDDd1i8gkpr62wEjP6
	 DgIh+ctbVd60HVuVMSKIjBM/4Btte0OlCd118rXrXHPInLIBxw5Ka/yhCrDFG6w/L0
	 dAQrOY7igIu+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D2C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037639358.32139.17049664385462636969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228852007853d9c91a5a7f75eaa4ce0333fe30547a36722ffa21db6d53082e85
Date: Thu, 19 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750376393
