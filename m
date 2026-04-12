Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3F4F4F1
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776010054; cv=none; b=D7upl2dr4eDPloeZnvi6cemM2fGJiCGo4IgUE99BCEuMQDEUKvANs1egWaScEc91SIYZBcDygasb8CY3zWQOzZPf4bBjqy1IcjPZvL8o4HUFrponTVZtC6Io/soYFtzB5eP3SVti8Pm5Go1CjxhEQkU2xd7qPT37AH6P0uJIpag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776010054; c=relaxed/simple;
	bh=4vLNyVV5X3J3C8rLuphDSh4vqTBxweCiJLebyvxNoKY=;
	h=To:Subject:From:Message-Id:Date; b=rS8HnYa70tREZrxcMnOft1MSkJswWJt0Abt+WCfekm0YsSwEBc/PGBdbnEZRwwVXUnzGTnhIHlP3PagzfKWcF5rbzXN/uQfGrVyhlselC24lA5XKL/fFrRiTSJ+FcpcKmyxlOs9iUNBVS6CCAxT9j1OKpC1RaR+jLusNguaE5zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYTL21FE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYTL21FE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC2EC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776010053;
	bh=4vLNyVV5X3J3C8rLuphDSh4vqTBxweCiJLebyvxNoKY=;
	h=To:Subject:From:Date:From;
	b=cYTL21FEF+ms9W8JpRjJOVK25yux1FINOBZhjOhVK06C1oavNW3bDZQm0Q8hcBn0m
	 6lBuQa7CTf0RLVPOLTJFp4G27f13SxOEU5z/GntYVJrE+MUVRZjLdR5FTtQwm5klB2
	 Q8gIo9iVC5EK+J3w32eN9v3ZlvIpdeN/XAywcQrCFbRTsx2lpl6hfoVBHN0Y3bOClu
	 CmhRKYw6IPknz8TTVtgExU2O1vJ2jKARhnyUXp5FPWwMMF+K71Ui/YiCRnAI+GkPg/
	 U/sOllbx0iqg73mmIBMY7v7yiX/p9wTcZuUcvV6XvXXkHq5EjRZjughh0/GKU2N11+
	 DUh9ifjZrMmtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A1E937EB
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601005368.14452.12950753428385413722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cd301410d154f17d53c2207919fb473b6f10c4897d4afd2fdc50d4b93be375e
Date: Sun, 12 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776010053
