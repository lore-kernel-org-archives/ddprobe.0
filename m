Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B5B1F03D8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759758594; cv=none; b=YsoVy4atNxx7+VQcyQXMx+Y5oJ9jyf5h380ONygyW1YZNTdsq/rK40iTqC5djOMehrXPgtkgDrkpocGRIElCUiuNJ2NStfpBdT+KLZma8ZG7B0odh5H/57VQqfklBJepVpYMT2sLmSSFDUFBxj5s/7ertmH41csFfxI7LmfoiLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759758594; c=relaxed/simple;
	bh=9xxBmQ3UxVHlZkl48ZOQY2LYmiaZ75Rx4JIWNF0e3xA=;
	h=To:Subject:From:Message-Id:Date; b=rEIKU1bV+upnLes+7+nuLnSm55Q2tp9X5E+BGgD20RBoLbaRrh7gCXrpDh8VmECgZWg+0a6xsrT3+o5nT1NqldbFfnBxe3UdLFdAcWPVbmZdfTKEKRAVvTvywFHI/w8p5vPPmNpPMXmukUipwOEfvlkWzp5fmd6lKk7M0qzCxVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3L6A63Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3L6A63Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19AAC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759758593;
	bh=9xxBmQ3UxVHlZkl48ZOQY2LYmiaZ75Rx4JIWNF0e3xA=;
	h=To:Subject:From:Date:From;
	b=d3L6A63YDFEpsYhzl+64wmsNQ3ROr66ONOhb9WkOq/VAYDhqDRQs5Q5aqiZPutEMu
	 vb9i6HFgDUjR02d0gf7v9/EP7MahN3w92I2azAUOHBcobWW6j/hApe7RTBfKkwMFBl
	 oPUpjxprz5tXuhxw25wQ0MAI5fNHLw47FCa89ATsNR9z3BEeYVRO7BshC6rk1xxfoI
	 4q7GgiR324zM57gtIQ207+aE3nezi8dpOeOhLF0YeZVVNOKqdXyoeQxJLUp1myxwyT
	 s96SDiT9zelgkyZGRFyzK39iRYxSRO6p0YDg+pgM5Z+bELLR0tntRQipWLVLpUag2d
	 Kwh9+EAx9fJ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9187FCAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975859358.28641.16292204819741041265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1728f9973f65287c118f61c8e1570d90da80ee50b536f9b1b351196c24f3218b
Date: Mon, 06 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759758593
