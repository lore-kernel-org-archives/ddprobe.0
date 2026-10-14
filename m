Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB855012BF
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791982234; cv=none; b=qshToUoPxVASbss0sAoPnY38eTltx3RhPWkdZc8AF81z10Wp/Qmso/lPGHS0P59ESgJNsJXrFoT5qh5NuEzjW73E07KFaR93yngrS9TgiZro/vY1VXA808YFujNGsmqupjxw4Kp4wktm0eDrMF0L6LrOseQ7JYUerdgvLHHVZTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791982234; c=relaxed/simple;
	bh=nyCrGkM5jRdRlqFyiGDC9fnZRnGmZnjCjc5CefVuNAs=;
	h=To:Subject:From:Message-Id:Date; b=Idkdvx+CkKO0VuWeVaiU2GgE5SQdQYVJy+UEvRkj1dOZlTQOuzGt04v9T8CKQ8Ji4lkqvjmYOpGRtPcEC4Z9uCUFewXudhpluTJcU1iapD3KGfl1WQMzBSxtBfrqcgntIozKgkpIRSQwfMRMXklWwIpZgu/vcGLLggFizyoMH28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ysq/yNaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ysq/yNaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED95C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791982233;
	bh=nyCrGkM5jRdRlqFyiGDC9fnZRnGmZnjCjc5CefVuNAs=;
	h=To:Subject:From:Date:From;
	b=Ysq/yNaAFAlI58TVOm1U4inx55Y4gA25l9n9Yl3/TnCbgmSJbr/iSd1duJkklD6XJ
	 CoQ+2XmNZSFcM1/5P8yYMI+6Ka3XlztrcdVJefsZBYYwIBXVnbIuKULA8cvxpvgNlb
	 maVDizeMTT1pgWrLJZYU/EYItYqdrqYRk8Isif3onyduxWoh7Ta/4LlFTRrfW3t4l1
	 VDoC0Bfn/d6I/LkkndI9H6gC6xG1LmjrOV2Znef7AvZi4wAcJg6UVkhVN6oD0v/BYd
	 NMZTp0C/6Wjy9WeSnUzVFrhz3b4O8pLKeTy5AKfmLbGFitmHSoCBIv9tyhOnmYol1e
	 pbvmo9OVOIepQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7DACC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198223369.17997.15255325972804722836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b8e56001677db310e68c6413907274764b6588a511282d86a32fccfca919e9
Date: Wed, 14 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791982233
