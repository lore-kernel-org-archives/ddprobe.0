Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348245695
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749602994; cv=none; b=g0sToepgzF1pmko55p/yMDOSQ+n6Ih8Sv0jYu7kOEnwDCRc3FIzCoqOMtXwI0TX1+nnXiEKP5CDmOSul4z8WbU1u4Jww00rRxXOD8BZJwVTDLMo30rECQTssfxny7PmvunkAHUAxfO+wUZHhcd9C82WL/UpU1IsUg/rKNubosQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749602994; c=relaxed/simple;
	bh=4egLvmJavfZnUUNM3rb56gO7pbGPrk51sShM7Na6Qe8=;
	h=To:Subject:From:Message-Id:Date; b=e1EtAaDVDIRkyxQ82zDjj/9D3BV5VwO/LfXttHiABszDZZdvWCozGLwLIzbqyexywNV+2qQ+r7nruF5HA5LMGOyo+mVzVoAeyg9+M6ziI9zJ8AEvLfiTMBm/LjqflhdaS3rYpJ4y2dMIc/oaULMns79aWX4mr3EKLgCNwYJJSEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reQBvGZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reQBvGZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A725FC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749602993;
	bh=4egLvmJavfZnUUNM3rb56gO7pbGPrk51sShM7Na6Qe8=;
	h=To:Subject:From:Date:From;
	b=reQBvGZPLQXzBZdairGp7adcvEEm+a5XY9iUHyxGkJVkSPKcG+FKu9OwqBriQvkBE
	 90EV72CmMSUToBRuTXB9wXzU4lQZCmu4W39hw/5JVPQmZU+JhQV+D1m/wdG7S9blMZ
	 VWrEsB09BG1ryA8BgPYA7YJGWUVztMiFP3qgg9LLwsxHNokFIOZ0YIrG0EfS1DcQfr
	 qBlA6QRY+tF37yDE2eI47ccLhOToU90FiyfLuc4KDgTZa/OzQfYI+8YOCNVa0UKGox
	 WaQqth/6jHUdIiP3ubDIIHk0MLQCLyW1VqP3DUC3Zeyg4JWVG/tLXj7RJwDYFUSKo2
	 ORvN/2nu4ccew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95219C61DB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960299358.5730.1776741854420801009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e101a25503cb219bee6f183730d589c7ba9dafbfa35b16569794662c4cddd9
Date: Wed, 11 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749602993
