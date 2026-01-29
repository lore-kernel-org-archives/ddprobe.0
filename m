Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4333590B3
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769719433; cv=none; b=NzCGZQ2jvVrsBrfa0IRDJepKGCEcTrHIelx5ZwGNAYXsSO5Kbxe2vXCoG7t1AqTZf85H1ogf4sIqK16N8JL6ygMOssf1zW4Gi1pIwK2zsdojyrGM9mrlP3nJzv5IVNZr1O3RFlbNfQzXpIXS5HtomwyYo9RHQ5dK3CnmZ5NOuMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769719433; c=relaxed/simple;
	bh=nJr0wIcDJcMJgRH8j3/AFleOflqPMIgyZ4GjSz+9kJs=;
	h=To:Subject:From:Message-Id:Date; b=uOuOCbYe9x5wxgL2Hb964ZadxCAtJ90jTE7iGxgDwfdfeYR3Xpa1YpqWqEofy+gwVYnZRQS57umzlUOR1sdDi2Y6xvRwsKv7g/RBxqH7l8wx4Ovhne5Huh8cnKo/YB+0/ONg0mXHdzF0GQ63voJcF3b/C6GOawPantMTOQpNiSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SccY1/zD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SccY1/zD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CC0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769719433;
	bh=nJr0wIcDJcMJgRH8j3/AFleOflqPMIgyZ4GjSz+9kJs=;
	h=To:Subject:From:Date:From;
	b=SccY1/zDKaTuCP5MgYwGzkiCKQ3Ss26h1+yi7W2sQN1IUiCGnCDLt3daJizvxdniO
	 baWi0uQ/lMbT3chUnLFM6sJzdZB1zdwXAhhnZkYD5Fss+C4BSaKpCp+58h6TPhW4yC
	 w9sMSxdChflxc680l0GXowuldjub7s63JlrM/ZicNde6EFZlpjPfhy1zD4hQlC2u1o
	 YQ2+8pwG5zyIWIYSsl5zV0yD0luvjLPj85ZVtEobj/j7xiuISwW6YZieKE/TUetAjt
	 GcKqG9EyF5fuPGvxlEo2bYNftvPJyY7oCzHyWt9IrqTqvOYtS9JXvbZxHBhV+EJVtp
	 oJVXhNdJidkxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90008D73E88
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971943358.8282.14361168491256744900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b1344c6f04edc2f87a0b51ce081ec42e8468aa8c3358b433a1d181816a0355
Date: Thu, 29 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769719433
