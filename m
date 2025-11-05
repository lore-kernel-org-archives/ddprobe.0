Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188D723D7F2
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762304394; cv=none; b=XgBOfS4txuZ4SYFirWbVZvzsWnQkOATYRPufSM2B2bOj2hz0gqmBS72I7DNflaNiWM1T6becO749tQug6cjzFoiGc1rLqxCAEL7t9L+CCTgX/m2vjEnazxBJiQi0tAshXufPvaj1tYWqi+1JiKXHPjyiFNOApX5ItkALN14A8mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762304394; c=relaxed/simple;
	bh=kBkbgmwV0CQIgWCLoljHQLmtGej6sh/d26zVbvDWUr4=;
	h=To:Subject:From:Message-Id:Date; b=XU6P7EMo9CVRkONExj5MT0LM3ocHI5FFy9UHKcgyKLumdItn+er6nHNFNPnFF7/8h5q7lCjkrKkNezJY7sLWA7SdNNKS4aZLL2Q15nUp7oEmJAeM8pI8n40s8h3CQBXQO6hDheJFdXtE/WTgGsmwS8HP+KiK1FNnfmcd9CYhT3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjqFVtMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjqFVtMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A146C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762304393;
	bh=kBkbgmwV0CQIgWCLoljHQLmtGej6sh/d26zVbvDWUr4=;
	h=To:Subject:From:Date:From;
	b=LjqFVtMpJn28Dl2ruCW0FYA6QJasjw8ulmHdWmuOKNA9BuKPHWWjNoAf6oinkk7tS
	 BrJriKwUyO//MGLyI0AFAtk1AeV/q6Zlz7pdxu7kaiZxgEmjwstUW/0UOrS5Z1eSPr
	 dxGXtXK17FDtvylkhxhqJ/33UIifnVS8HQEyhdddxhvMMExNT7tq0pWuZYxk07/W0g
	 AheRHZZKt5q6LbqwSORSutokwpC+5LqK+r/lKuTeseX4ORfvkIQMMlXuMLslLY3sKs
	 +pAdc8yHgvZQ/NpULZ7EdACUHIrG0oJwLO8Ethe9UyJ6QXRyM5FO+PUSzDy5p6cxYq
	 N4Sm4HbVHWapQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E3CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230439357.26459.5584289565476719360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9746d0aac063b0bb49d0a7825b7c0fbc71ea67da302ab21f0ecf89341335ee
Date: Wed, 05 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762304393
