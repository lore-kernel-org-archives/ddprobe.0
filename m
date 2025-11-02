Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBCF25557
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762090794; cv=none; b=Xu1ypSTkcbelBW5Qtedojh0ZDVNWElV2ht0LBBLPCjiB4DsPPnnb2zeiAZucc8BLlLXYwDZFwwf2QFR+9lOKr0FjUo5hFC7WAcDNjY/LkH/YSKn38TX5R5LpoqL+lxjNb86DQXHXsGmyrYecm7NGJ6K7zfGZKSD2TEREKH981UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762090794; c=relaxed/simple;
	bh=x+0pQzVegZZ0XeHoeF+WdiJnPEO+mocY9hVXba+6Lu8=;
	h=To:Subject:From:Message-Id:Date; b=EkZeJ5HioWJWW8EjCs6PK0tb+Js03ubIT/8MrxfyYEw4cd1JkUkx+HuMsDxWW0TYF//WiK4cJF2Y80Fte32orTOxfjAGhP3qiSM/vMqBcVtR1CBna/95KU3VVLjGMFsiC0Kc2bT2AXKEnGSVAjdv5tqn82NZJsVYY3bhZ78KBjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VB3Iexhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VB3Iexhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A386BC4CEFD
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762090793;
	bh=x+0pQzVegZZ0XeHoeF+WdiJnPEO+mocY9hVXba+6Lu8=;
	h=To:Subject:From:Date:From;
	b=VB3Iexhx9y4FX0CHp1Ch9A/QIQ9ldanJCQRYAgcNdfLQTMrQiGKGc58ByYJJgHrDE
	 DM9ktGrVJTMQlborZSNHUSJDoDxy+HYGbdQDa0m3BAXFIqQ6eGUK1plSkzNn9vkJg/
	 fpfqqtBBG51CRTf7E2kFVkjRwYmAdpBBEb0T1duotdOie8M/CjAdDZ3sSGuztPxGA3
	 FtoIIMSzRHaETKncpdSVUQOZnV69toxJINrMa9LN4WxxmUrDFx9NKIhJjieyQPHhgM
	 lpolc8HXXwYkGMn0XEQrOTz+chCKHvYICAPDAA+iwnS/D3m0kn9GGOYXw8w4lwPm8g
	 Cy1qjZw70LiXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C5ACCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209079358.15801.11218349852717197798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64966dfb01df3e7ae675e5462d5bf39b1a907bfd7908091dc28a1192ec6364f2
Date: Sun, 02 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762090793
