Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4E51854
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735724754; cv=none; b=ROGK/9+TmJxl2QBIwgCvjq5a9bfZ83EXm/NAZ+ZIQSPt3h0kaRQs4XsYymcFHzZHiq3cBNJMly9nxvT7y+NTjVmkygt/M0qcu1QEiAYentvpVO1OzThhRH4omALsDa0a3PQrVzMOMBocY0yJqGiPvSspfYMe9c/vgoyQBifcgbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735724754; c=relaxed/simple;
	bh=hEBneI12Oobcm3CApaHgrk+C9S0yMuqi2JSHrXR+jjg=;
	h=To:Subject:From:Message-Id:Date; b=ihJYHmW5x5ONCAzG/Fs0vypOO/JIAPVRpfbsafc/ii8zgVttTEtP1WDRdg908lwCe6aoM2eQPejvoH7LJBV5QldLYqI8AiIKa9RswEhewGPuE/syiY9k4A75uIH9lL0XcXefMLqRdLVjaAIcvpuv1oKIwSKuLL6gEsE6h3UL9no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlmvr1Yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlmvr1Yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B1AC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735724753;
	bh=hEBneI12Oobcm3CApaHgrk+C9S0yMuqi2JSHrXR+jjg=;
	h=To:Subject:From:Date:From;
	b=nlmvr1YtiGIa1MXaYCfFry/tUeXAByXWYfO8EuhdXrMW4SYxLsezzf8wbiwSXgHbH
	 KzuYSV2498TJ6a9/tyFw1rNvWrgynFx1ZZn0y2ULPuJNjSjbLH+yR29LkRBvCf0uhp
	 9V+0fa43GcfIo6Ct107Q4hfYWUsU8FouhLD+gYul/kBESjlZfQlJytPB4zSBfNNERK
	 JCRPvhEuYpcy2N7XiGdVwPNVp0Yr6rkx+iWHwBdzJA2JPlRCUKfdX0H650rNUBw7QD
	 zRi6f7rhXgcH9Swz8XFOGdjcYv8wXC0xCZQ9mdnyr0c54wlD+NttVkb18EoMDvU5NQ
	 ziF9+w/xbNBtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9975AE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173572475361.2578.9543523249386568077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b64a6df8e66956d07900da9b2f8b9952655a13b158198f91f308691aac6bb71
Date: Wed, 01 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735724753
