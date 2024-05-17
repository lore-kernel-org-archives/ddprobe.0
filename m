Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC9B17BA5
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 07:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715932343; cv=none; b=lBwe7ik3aNUTa7MtxwjF6wkx4DeJOYxAoey1It2pO1qgHXfzR+bsLq1GA1gusyxc0C8pUqeoIozNpqREwRTSC8Dt6TmC4tRwHZaBaZKpMnSjDf1ERKI7ZpEJOSCJUATXz2aShe/7Ha3jxNRG3gj5zj2BXpJL8qr2Yj39wKVARVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715932343; c=relaxed/simple;
	bh=M5mepfqj/RlmUm8Vq/bZmACn5e5J4mNSILYR7cGYQY8=;
	h=To:Subject:From:Message-Id:Date; b=Q8gPy1x+a2JtCCehgtIM085acIc4IAXby/ZrXAvSM5aXDlfDsUJUo3SxlcQLysUVRGGEv1T6lJLoAlws/+CZ36PTVXOxDOaPklufNpxQxW02sqdZqZn1fm0/ppS6HvZ5a6OLTyQq70pH5OCVZi+rA60ih/QeLDq1GWeNq6HrwQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhjyUZut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhjyUZut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D404DC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715932342;
	bh=M5mepfqj/RlmUm8Vq/bZmACn5e5J4mNSILYR7cGYQY8=;
	h=To:Subject:From:Date:From;
	b=rhjyUZut6JapZwkykEEO/nibZP7B7Gcx+3IawyM8nxWUMluUWH+hYca8htwKmsaKw
	 rIBqY49BfvqrbYiswhqPZ6CCrc6sd1PR8mQ76xLgVfyuaZ4WrgoM6slFE9wWOFVJiZ
	 THoOFQ2vNc5EbBxjlJR9p5U6gk1NxNlmL7V2PwPNm445crj0T4OpCAEhzQ9qqBgYkM
	 DhiQT9LwCoGknBJp1cjexegWhka3Eoh1/xvyAiKcOCnpNHbsEQXjVrr+0dXcVra8FT
	 An+fVzGBRp/MUWjjEjhIlxmj+Seh8WedU/EdYg7mPIoeyepoeLTvr9tGYaR/i56Gvk
	 eQ0k3UbYVrVYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C054AC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171593234277.26287.11788502117376960596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04bb6b00a90246fe917ef412380578adfa89de0af36406da471686ee51a6b778
Date: Fri, 17 May 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715932342
