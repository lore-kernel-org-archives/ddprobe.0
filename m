Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23836372049
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780464874; cv=none; b=qg82sub6UJEZSPVr6+W2eq9xe4oE2i6BIfozguRk6935TukFUOPXZyLOdPkp4u7LjndkFkkoBs4GSkCtMjBaz2JGKUO6XPiIVSx1QhAskGmmLhb6WqPpRWMFS9voafUXmvfx9bA/vA3Zoctj0LvV0mYyfnDe13LCr1M603anXIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780464874; c=relaxed/simple;
	bh=ZfN/7QlGtapeaAwg4RjVDdOkJg70PNfCiMB3+NyZn3w=;
	h=To:Subject:From:Message-Id:Date; b=MsfC/wPB2AyOmMBzKQFWmP3/OkGBooBxmsHYzJe0XLXEFX8PGL54zS0wvRxnfqGuO5QNGcUw66E7f5WG1uUIzmdHxFP75EANOXhD4qdqm1tMICDR+WNs/iHu5s095dzfHnItV1O86GMU21zAd9BrqGmPQLuZBMQOpjfbmuEEPG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1Mnh52u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1Mnh52u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD6BC2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780464873;
	bh=ZfN/7QlGtapeaAwg4RjVDdOkJg70PNfCiMB3+NyZn3w=;
	h=To:Subject:From:Date:From;
	b=l1Mnh52uN25WvR7sCBYiDLB/hspC/tXOpG4dmcKmSYZXBIGopTSzZquEDIEWcUWsB
	 4PH32aZCI4AOn1tAHkYVZ2LyQ8uPxPMUw/XXjqbB66VrvGtJls2yz61YY7xTqTvb60
	 YsgglxVZIa3oJSmEeRHOSG+vNYB6IoREc3A0ds0Zz8n8BDJqqNOFgooP6A2EhP01uk
	 otyRWHHfjjdtRLXw0SaOWv/GENiz62hVa1Sv+0Is/0rPBDI0nf/s3FVHEIC7hc1W44
	 +Yu9w/lXBeWghMMJkqtjbXddAQQwKPAFlJ/w2F9zOSsi2/xHUbj6UzNF8YY5huoLmg
	 +Vl59w9nY9hzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED35CD6E6B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046487370.22709.15199576197214058889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 184b2c3e5cc092ce8400659af7dc28be9bbedf2b0244dbd3eb8ed6e96626ee68
Date: Wed, 03 Jun 2026 05:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780464873
