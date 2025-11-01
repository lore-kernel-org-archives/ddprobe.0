Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCA338FB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762031394; cv=none; b=Me4/uXkaEYZoJvUAIeWpXAhDQaNs6g1nkrqn/dfoMlscb7iGa50sO4ol3ra4SW0UrfL37Khqqk0YUH8GShZw8aSTmXaaKjUydBI8crECFC9dQ6lk5Adzg2K3MCiYa4gwHIbKRYuBJuyeuNriSddWqJz58Ck2WYhwOBJkavjB64w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762031394; c=relaxed/simple;
	bh=r4kWf+yLT9+7Pf+WX5AhVru1JjI1sMgmPbjXUW0L9f0=;
	h=To:Subject:From:Message-Id:Date; b=M34b5SUxKSliJL+H00DG53qFqefBueB5xvez5cOHYWH7r8Z4/ztfVfZVBHlcxUsPv7fK4U6iUiPYUPnqOfej/PA/4UuuXOPboYglsrmEF/RUeDgCF8NgCl3ZrKuQzh1Sc0N5McrB1JoLmrr61u/c8Gp56b4n5stea85hHaSXKt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUCl5eC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUCl5eC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762031393;
	bh=r4kWf+yLT9+7Pf+WX5AhVru1JjI1sMgmPbjXUW0L9f0=;
	h=To:Subject:From:Date:From;
	b=TUCl5eC/zHGWzXfNRmufT3+gdh7bJgBKykmcxjsUZ4w5MSjKLh4Y38fP64kw1Q2NM
	 XZvk2AkLCFMlXcyiXFTbeVA5tOVqR5tvxvc03ui9Df2kNpimrRCuWNb5spDeJfN7Dx
	 lGCmX24b04Z7GF4y90JedtfjrmMw0C/6Xh9yWQ+YWEUqpNWZF2yXAtsmL26UHpt4Dj
	 27OQwwzG/aqtUh4FFAuTy72FdXoZ6WHZFDdz2III1vsBmCHCVl7uUGxDXycVTK2uSn
	 dQc6Jwc4I/RZZbgPWTK7t20X+DkSIAGSdE3gJ5ro+xn//bbAaDf3yHnL0nQ0Sz4tEM
	 68OhX7atETpuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F854CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203139357.28401.4589245568372375316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacc18b68c13cfafce8be833d2b3b8b48fd795ace7d7f423c8c84ae1271266ae
Date: Sat, 01 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762031393
