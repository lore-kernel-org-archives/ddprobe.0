Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D01B60B8A
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762057194; cv=none; b=kZH5KPIAcNbXM0dcognakJ8y5YhpxP2KoK5JINJlKiaJnD5IM3QhcTRWdygirUpw+mKoH0+TcWEKXmbXqAzNjz+hvTmpW8D+1/NXxOv+ZOPbR/5evBV6Tsx57wslw54bpbkOWjDNZk9k+3oeMMhx4fBf6pETRd1QVLvuXdRG1/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762057194; c=relaxed/simple;
	bh=Yyc3dZE2NAlxsmaIi1pMEevF/+t6JuxT5zI2udg4U3M=;
	h=To:Subject:From:Message-Id:Date; b=qm3NMkHk7xJAcCGWXFv3vwa0WVYMqUNrndPJe2IQYtXd5ZHpYKO7PqWa3M7yNEE8H3dyH7iYV5WCBxq7TJuaMVf8sNAwnN4kpvI/B3oids18xsJkJeyiP8woc1rMxs5mzIAIyNqsRfCJAhsadzrplQeRufj54ViQPnOPDCYvlFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdCwPOqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdCwPOqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB783C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762057193;
	bh=Yyc3dZE2NAlxsmaIi1pMEevF/+t6JuxT5zI2udg4U3M=;
	h=To:Subject:From:Date:From;
	b=CdCwPOqJYf/7D+QWaKrTyIAJ/BB1BGK4lA3ftNP7oTIQeJC3wILK/DbbuRfx53xVA
	 l1mShLm4tv9ryI6on+BpU5Ii5maIL89xrtf3WNydfbwYT17i5KYSY7+VQQAzrBrcqC
	 1gILPPcjPRjVCcVD5Y03q7Z8qJGOrTI+BP8yE5pDFPD9wTIrc1oV13GefJWSxTh19U
	 EWfBRSg9ra1fnVPHzFJuG9Ir4dcTa2vjZUOe7e0t93bB0QmpJXhVwcUPHEd667MQQX
	 nF0H3n32+ehOFiIJI+7jOq43H3pWqpbUNplkidMivpeHtOsxBnvH2HQK1MFN3a2arF
	 1xrEpIaQWqDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68A2CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205719365.4675.18072728418054434292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088d9b284757e4f170aa6c14108432d587679a667b8e926d656ebfd8dead3258
Date: Sun, 02 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762057193
