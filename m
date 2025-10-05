Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2EE126C05
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759692594; cv=none; b=bcCZQ+1hfmHiTzJiFBZI30mzpzJo76WqHnfAZW88XcKd24RVUIMnh21W9mJjQ0pNiJt1ZXV8c3z2TMOtaNkWRRvdIpqhcg02o3MGsa6QN8HWUCRcXyUCd0EmCyADP77Zrgwky9fdJx8Yble+3MsB1VGN+Ytp62JZ6JJSkzeb9R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759692594; c=relaxed/simple;
	bh=2GDN2NMrIiWD9RoioARLbK3Aq3xyVwGAvKhm/ejc4Uc=;
	h=To:Subject:From:Message-Id:Date; b=SHiyq7a4cLx+7NW7KT+TeeSb1C1CZzkh9AF6vC0PJh19mhC73EVHIie27FmlmqFyFT7yO41Fg6GfOGbXnbhmrHIKjMBOBlQmPWvujDLvpMAFUey1EX3T9TTxYlIoompbQ4uoYGAYTF2GIp9WXc8gdG0EuZh6OtNuCZgKnwMiPRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXHJIDx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXHJIDx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6738C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759692593;
	bh=2GDN2NMrIiWD9RoioARLbK3Aq3xyVwGAvKhm/ejc4Uc=;
	h=To:Subject:From:Date:From;
	b=hXHJIDx0M0EBZZWxCUOm7JB5KvujduwoCI7SZ+pJju2OekETQVCijliqfaw6ywaGd
	 pZAPyvrG69xmTSm+iyUvQYDJBZYNbmNwB2X+i7u//VjN6qbS9/hmN5ZiCbuyeTK5N/
	 +YevMbh/Lut2FTV6w+hMrOj2F2TV6HOle7rZd9MXKDXTzMU6DbDwdQbIKZ7Q2oTrrG
	 zGoyGHzTxKP85Co4mk5zgCMDITjXSWfXnuOD8gbSeuyPF+Sef6VyUa1/7kb0hIzSSP
	 ZLXejwttHbY5wTEPZVjnWnAJk0DUj/eAdNOuqjUk8kdE41NQ7tmKOIL+oatoIMohRx
	 0Odsufa0nX1vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92508CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969259359.16854.7565364940722094920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fe68fe93678a8245ee2e625d6fab6fb8072c4335e4080c7dbb09f0b2f5b8a0
Date: Sun, 05 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759692593
