Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207C02D8780
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773269694; cv=none; b=bTmcJSiJcuEIpT8AKUkNtsri3KPCQGRFtmmitlVxlVhdhdA3RoPEWRXdofpEi+c4sHq9yitgrZUxnEXDaH+QZpKviFbw07Jq3wGhXaQVvdpmG/asuWa7Zl5nX8FQ57CjBMap6iqzMLfUq/YsgrrOWhEI49KdFvWhD6myo2QDH0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773269694; c=relaxed/simple;
	bh=QDbfMgIP8UVbkjGwzgveFnYDSxxjOoZ5/hIhfdS1WyU=;
	h=To:Subject:From:Message-Id:Date; b=KH1rJ3UsoKaeogi7vrv8fhGl20yZL1tLmQm8GngzlfoLTpGokUfvhi2+9LaRXQG0Q4kjF06TXJreWffgvlRaCmj7vL8n7izIC2mMIgBPFrqJBirukprsA6DjcTVLNLdTVyvTdCYOg5Yh592fTGxOsR90RAD9ZBUKSkgj7fI92kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLB+oH1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLB+oH1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773269693;
	bh=QDbfMgIP8UVbkjGwzgveFnYDSxxjOoZ5/hIhfdS1WyU=;
	h=To:Subject:From:Date:From;
	b=aLB+oH1u4h6fOWNP0fUeSY21LSulPsH43LeE5/CwWKk9dk4l+58RiWz02zVWnc1US
	 XrQtvKqsvllCnKw2QWTuwWtaB5llxhC2b6Z8HFX0CJXTaTHCNXjcnrcUU3VnHI1EId
	 8HQ1VfFpg5+Dh+sT+EjF55s69nbRMt1EyoZk8JWF5E8/DuwkTwZo2WjONoomIhcOU6
	 IrH8+MThKuBgj0LCUZElqF5McCmdJBPl52MQZWTGlM/R7AlpmOUgyGOkBjedSiZ/vO
	 qluhrjGtw+PnXNElAFUVTWAEMWjCoQWNbdjfuJIHpi0ADfRKrtjwBuXnpxZEPkajPM
	 rH2zgIGGk/EoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908DC103E2EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326969358.14033.10314388029784953528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ef9ac9fbd63c96861fd2a0e33f478a4b58cba899413682e764b951d41cfdd8
Date: Wed, 11 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773269693
