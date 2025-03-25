Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540B21C6FEC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742929794; cv=none; b=mZekK7cemycxTP5Bd6vv/LvHHGgj2uKxjIDVDywz63fWA5pvfwepd2/HeYW3IVk7rAn3EtXf2wHbrpZcU3iVsOEYOKIf9xcWmbGf280MYIfVdPDC4xO555YBmLyeLFXwlWvqTiFhlepM1pse4k70v3AIbNCoN7DHFZxfbBbbprk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742929794; c=relaxed/simple;
	bh=MDvnN4pwfanjJVS9iGKy4lNp9NvehcRQ1RqtOvi8KlE=;
	h=To:Subject:From:Message-Id:Date; b=qR2CJErz0Nj0tSL/wSGgvOOqj0kj11Aa1s4gqj4sk22TcFadgFgD4jeGhqZoP2hSxCWZ/8YXq28lFa9sOXh4LDIkmyBZisqjbE5vTtJWMlosOMnKLth1B5SAdY6RLmWQx7jdBukWRVsaZdxkyPHH4laxJfJ12gowuj4H78pk5L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fpxeu1Qx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fpxeu1Qx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5899C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742929793;
	bh=MDvnN4pwfanjJVS9iGKy4lNp9NvehcRQ1RqtOvi8KlE=;
	h=To:Subject:From:Date:From;
	b=Fpxeu1Qx3AGdJiGEfPCj3pEdtet587jFS/4ERd8fAIkh/cikEeemV3YwqYA8EHyfl
	 Q+dLuWKqMoLvpr30nHQRyeLfUITZSmPQg6modgJsOln8LFWMUP7jagSPoe5cOt+4E+
	 Vtr8vwxK6YeE79cOVse06aQqnuZbzdrde8RZyn2o9NEy9xnVHw3JEvHI4tY0cq2ekv
	 NFE6+plxU126/KBrbPPKIa/ADzZjOCQQyrZ+BonyxkT5n/f4kewph1W/xuA/SR0R1u
	 UmztoYQ23BDGsd7PazRwKRZhh5PSE/+s6AETpYjNe6E8A4w9UZyaq4hZ0lI0gL5Vjo
	 nXRCVw06Ck7wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C41DC36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292979362.2985.13269101030065752541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e9f366a4b158e7f91c54f73462e3cb2703eca69376138cb5e168ba81f7b671
Date: Tue, 25 Mar 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742929793
