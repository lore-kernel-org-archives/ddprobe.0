Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B64A1C3C18
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748242794; cv=none; b=TSyNFqLy0jl4mFEKEAi9LCD1oUzKi3KbyZ7k469YTZKirm4N2gq2Iq1dSYOX9SnuW4hFTa0CSdGMRFbpzIulKqS+n//MqY/widv6f2725qS3m8endExUFBh9/30dqHlm9vPEiqEoiU9w1619+UUxP3tnyHVxgQUADa4VdY1HVA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748242794; c=relaxed/simple;
	bh=WfhQEsky2hQ8dTG4IGF3ZNzR7DNIe1y+Pw7GIhqCGr4=;
	h=To:Subject:From:Message-Id:Date; b=uG+mOopQ7eQ7RJLwD4HbzqEeVCRmdxKk43B7qhMvZpLAT+VlL6VLREvWVJpj7tgvFSoa/v+SKh8DkAyULQ9r3ajCv8SjuciMARrShvAFUwARm44ogs8ENqEWJbGBBYJeJBJmjOT545JiFB+LOQcxGYqsp2FEfYQjPLVqW6HVgdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwlIRmS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwlIRmS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F5FC4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748242793;
	bh=WfhQEsky2hQ8dTG4IGF3ZNzR7DNIe1y+Pw7GIhqCGr4=;
	h=To:Subject:From:Date:From;
	b=AwlIRmS2YtsMtf8wC43+xvoUXFnrvzzyyjhGGQwu3/k6N3YBrc4N6xFR8dpAiLCJy
	 ktFYZoi/YY+I1AXOj8/C4WDm2ScXkebeLjAJYj+kj3iT9MjR7HFgGrWL4OPkZiGmC/
	 WPAFLxu80Njxs3A08Eue4GWnYgyS3FjkhuBg3dHRZnpKJhh34R4/N2NCvC72jDSAQG
	 aQX5bZa06HMG/lsV4vAgMyj/pR30jwtLac4bT7Mb34mNGGrfvJJX8vd7ckxlRDA4K6
	 t5Zh90sF3nRYFZllc2gLagGqc9Gj3k87WtRP2LunGkVJqFh56OBBOZ96/Jw5wkw63Z
	 ZvLgCc78//0Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F9EC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824279357.11819.3417134723069129279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8764f9f33c829b03b1149f3c715a3058cbb73e07ac8010e25d4c860fcdf85de1
Date: Mon, 26 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748242793
