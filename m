Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A842C11CB
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775746654; cv=none; b=teuKG2RFlc8z17Uvm1DJbzLtFJdISj+rjybCPEM3deFwTOi3gWxuZjCB4ga0yDszIFjzttbu0c804O6KYn5amiUN6avcK+83ldMHo8D0pM6OTj6dnXE+OJ+Ozu0DhzTB0E9Hp/ptgZiBgP9towHh1H026p2iEAqCAP1GdektEws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775746654; c=relaxed/simple;
	bh=w92R454Hwh/4SKjCjRPtLgmb7SuxJCVFjnog1HXCNHo=;
	h=To:Subject:From:Message-Id:Date; b=qwOIrNtSefb5GNvP8LAXyW6pth/NAIVa7sJB3sQ8rWEF/tUOCWwM+lX55USkgM2uhVPx9+a9n+Qk7vXZagTIuObkuh8ccTrSkwPY4PyPxV8fKvdWarbu7tOXETxlZcOTJ5NznLQuztApAhMXppYQ52QQ0uhjtlqQCLmE2+RWJL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVshnebe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVshnebe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 149D0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775746654;
	bh=w92R454Hwh/4SKjCjRPtLgmb7SuxJCVFjnog1HXCNHo=;
	h=To:Subject:From:Date:From;
	b=iVshnebe01cmvPaK3hcM4C7CKwoar63lcD4F2qXDv94z1jeeKLsXRUtbi7NcS7YLO
	 T4cHy4LFQLNjA5ujUeRe7iVELwqR4MvgLgGOUqRMiH7SDQlHrkO612ZDE/ESm7qDpm
	 kaqF7Q5+j1dRtCqoUP7LzrHEQ79zJIEFYXwHk8Ag8WoQL5P6+Op4BIvpQdtAbN87zw
	 l4zpMVOPq9/Q6VAjoa5MgGSUVsO9zTTxmb94flspNlEOuicK24i2d2nrVQjcqTnT0J
	 pFfYa8CkKEV9o/YVPPeS5lD8Dl2HFRHBppg77kWY+ugCamKPC3Y/BBkGITVeVj7Vgm
	 Pmoun8S0lI8kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D02B6F31E22
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574665383.7733.14839679908123231714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf65bde04efe1d6c612cc2bd790511b33a224b967cc2da1db34120cd15cd4ff
Date: Thu, 09 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775746653
