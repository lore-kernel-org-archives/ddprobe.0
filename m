Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5308329DB65
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769691234; cv=none; b=IPLZB05yfiQTqfzE8vrUmgRIaYmFrSMeLFH9WLTNHd7NMxwTftrSsMQ+NHOqUMR2vo3GU11qh8FbOzr4RBppDzHbtdO1zoYEO53FNTrp7czjjsvsMyatCW3UfgBKhl8ZIv05nFslrNVtNa/wawHiYKLSEYETtJuR9jEya6R6A9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769691234; c=relaxed/simple;
	bh=M5D5pWE9k1Jip4Qn1uw8bCFgNO0VVT8DZREpFDGXaGE=;
	h=To:Subject:From:Message-Id:Date; b=ut70VmbnayuJg60YfhMuRrjUC61sTL6fvI4mSE5am/AF8URGTbDIvJhTFmOfV3x7fPlkdI9aei5DZxemMQCEk6k0+Ea/CcHN2q+QypiyeTXuW0z33O6TN2AqZtp56BsuRAzRTdHD8LdRZ9CV8ymMDADAMalG3Hlh5eqbIbcdE18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvqJFeGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvqJFeGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A778FC116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769691233;
	bh=M5D5pWE9k1Jip4Qn1uw8bCFgNO0VVT8DZREpFDGXaGE=;
	h=To:Subject:From:Date:From;
	b=tvqJFeGq6kcv0r2z0xh+D+pBNnsJ1t8uAQDvgPa4D9r9Td+oEp4mbMt9SIdIMqmy/
	 COfQKPU9gwdvgtLMCYHZOQBSSQVhZlvJfWe1jKLi7RCYnVkGO12S/PAilVtADfwzqM
	 9/F7z+M88lusBgUtnyyyVXuSW6OYm6F69nRiHOoWC3Ia6bs3Wo6u/dXo2y77Cmrl41
	 ZXtLiF3/XjZoiFHKmHTDDRXs+kQTFOwiJ50TRyx2DThOYpEbjpUDqdJK5dYEHBVr82
	 nplwJbqVuxMXKyYLwKlNm5gZdzHrItqM4f0RJpn74kuuQIcA/EUTFmCZCEtm0TRth2
	 kuOSYqUxKc7pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB2D61014
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969123359.7216.12411955539780780053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903964a6d2ed71ab7fa7baee353f0b1f45bc1c0443a4357a37c3ff5a419cd89e
Date: Thu, 29 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769691233
