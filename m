Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AD32F5A1F
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762467594; cv=none; b=AL3U8Wcrl5NPw2l4/nbxf1Wkd9HeBUbZQU0SR4oTAWxfv7CzSpT+0LYB/aPhVcSBa7HRieAFg2EG/0t+dls0lgmdoV/ARx+xuATu5Myh9ogsBWsDOOtw1X9+Dq6Ea1N24VkY8Ksy3n1S2JG/LRSiQDhnuFooRXXverUNxGEIsV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762467594; c=relaxed/simple;
	bh=k4EZsO3q6YyHJrVNknQoDV+G8rag1zKPdoyvlpMizRQ=;
	h=To:Subject:From:Message-Id:Date; b=Z10HUEsVIz7OZjGhSDZwxr7ZQBrCDJ5x/vueRyT5OQQAPvSSXf7qhWnvF150YV9VgeQv8DrvUz7s1xxaDOS1sZz8mDnrJANjSK3IQm38Q+qjAoxF79gN4wliZOq9sZ6IXTrr6b+qkx+qLJIGJaURlEqcBDeVdWcY8muXKcvquw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZOKXd1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZOKXd1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD07C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762467593;
	bh=k4EZsO3q6YyHJrVNknQoDV+G8rag1zKPdoyvlpMizRQ=;
	h=To:Subject:From:Date:From;
	b=BZOKXd1KmHc+wt6VVd+qWYVZI1E24B6iF8zcEPyQ5putd/rAf5t1jCKn2IYMi3YOi
	 5JhsRjO1qX6sGMq/E6Lvt5Uz8bHAdYlZ9weWY9BUuQjZq7hjUVC2+iXnctgEDKqux8
	 PPmGXKAJRktCVMLtvzeazwsGAZgPusWPEp2tYv1tv6VVU/QUHuo8nd/ZftQQj0/LXJ
	 kHm8KM1brmfkQ4q7lMVWfBtjFt09WAC5gwSRPxW76ta/ePLCm8UXbxT60XKZK8dQQO
	 g4zFu23zqoDKLLMck0hVe85aEFXjUrLQUzSqcRAD4uLSo98dHK1u4rIQQ2C2s1hAwO
	 hh8QevIT0YlIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF0DCCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246759361.19472.14027285353879376682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca548eb3f2bdb855af49f32e4b28856c30d766e2bf6c0ed738c7f9d6dfdd05b2
Date: Thu, 06 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762467593
