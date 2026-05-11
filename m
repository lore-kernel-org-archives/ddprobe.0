Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204AB1D5CE0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778490634; cv=none; b=XR6VMHvrsKqMJWII2VW6zbUyJt2atNgNS/zA9zinR7NkorrF5xoIauijioiKZFkBJggoK4BsnT4Odz9g2rHBbo/NSrf1L8Cxpoq7Kf+UlptW8MpBxOJCUMyxcFA//y7HwWVhY2EdGteeGkpK2C81pntJ9ihthC5oAyRlz7fNU/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778490634; c=relaxed/simple;
	bh=/RYG/Ng95XGUVEeJCuosY+5nZKqTNtGn0FnDuiIlENU=;
	h=To:Subject:From:Message-Id:Date; b=s5nYB0jSfYYqFPc/U17gSN0ePVyQdo42Z1eLK4416pVbjwb8ckFe3BLNL4IJy4lYKzCaU60Dy5wVt+k36RFEu8l9vmPTPyojp20PO0KAayzIKkGCk20knwVOBmfXHkrK/9uDMBfaQfhaFl58Q4bb7dzBfnrRAgH/bEt7aHlEWtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSKCeRmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSKCeRmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97C9C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778490633;
	bh=/RYG/Ng95XGUVEeJCuosY+5nZKqTNtGn0FnDuiIlENU=;
	h=To:Subject:From:Date:From;
	b=fSKCeRmL8NEYVLl8+e9MRmP+HLEiqpwtq/444QPvN8LJRqyaw7gi95+XOcnz/mqoI
	 OjXNcrHbY+A+py8fFsudeL3yG9kJqB6Foz5u+ji4yvxuRcoGS2Zx0VQ/4OnYgGSWlS
	 FVNyjYPxJ0ANHMjVcE2/r+cgU5naUBLIMLMQMWXSLHrTsxiCPxG8aBPdF95LUKT0lM
	 WoLgX0/5XTdHoxAwWhDzHdUtOCH11W8uYReUraxt1Tc45ahiFi+HqV2r+uZxL4c5Mo
	 2qdguT+hWmM1fwY8tfRFXOCw8sjrwQt47rlpS2GziFbttDoMbnKovVmBpqyEoeG6tB
	 TrdCGl0XYByZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9FFCD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849063368.7239.18439644617779035839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1a3a3965ee99e12baee070c744b3fc00439c989c4eea2cb9416cbaee396762
Date: Mon, 11 May 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778490633
