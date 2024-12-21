Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3100D18A6A6
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734765954; cv=none; b=rDFZJCoeysRVvsNmMPW8dD0cxQIVuO43eT5tKhp0rnemNzuGZve0uBdCjZ/1jvuzkRisBaSdUmv/aJSyAnCZrLMXxHGVhfMQ1Ce//gIIA3lbVGyQZhm8uaOG1Oe3+79KnTno+DF4LkgJYQyxTOgArF+zzB4NZZtR4nPYGGU2eJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734765954; c=relaxed/simple;
	bh=skX7cgY0yzhOyq0FZPTnIFE2OlxvZRMpq9tBIngq7s8=;
	h=To:Subject:From:Message-Id:Date; b=Cny2fhd56Zuw3Q+rvBcRQyF+UAjufPe0DQsRnbbn3Zd73oc3GVzkfRTxzX/J1vzVJ8IYBfv2hjbVEeF0iIjdV7sAMjhFG12ANz18/cVJm4iCJMauJfKnqz4aOZnImy0xXupClkNAIV8a4Jbw1JJgKZu4OL4EYfE262Lly8FsF4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcZCb8sF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcZCb8sF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9F0C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734765953;
	bh=skX7cgY0yzhOyq0FZPTnIFE2OlxvZRMpq9tBIngq7s8=;
	h=To:Subject:From:Date:From;
	b=lcZCb8sF6QsrQiwYNcRX641h9mSvmXyDl94PzNw2yRmHo/0dA/d0PCcvRypnT7NNV
	 0InGgMSqcLODfoT/TkZ2LwQbQ/vUgsQHZSRw/HKXDDYPyBLYGlEHCcEdbEpDL0D5oW
	 OuRizEAVRI6z1uHUjJkngMKUwGxVzsz94sU9lTJC6lovg0MNvOGW7suvPkRnb8wb41
	 I7XvFGPvdpoonALGyB8ARd7T+b0kq/jnmX6iq9SSue2AU2/hbm45YWhV+nGKCKCkRC
	 u6zyqiohW5z8bdNYtQVPjZ6fM40skQjZXyUMQIpUAiRHFrxh8E1tFYDBXkg1nR6tah
	 1CeeFZzXGwZhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9390DE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173476595359.22911.11067794870090975255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63c8e523ac6d0504596dd02d5683f2e1a3782e06074a6ae62f4300a44624a52
Date: Sat, 21 Dec 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734765953
