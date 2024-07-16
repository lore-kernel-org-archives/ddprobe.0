Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D6919D8AE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721139923; cv=none; b=e+DS42cywJHMAEHwmMr3ne5wraIKAxzGORkThZhTFoB1Z4YQxIWG9GzQeiwX1+J/XLCOBss7jUQcFRHKxXBStPSJ7dA89MabTEFtGzJitk0kudmkmxxGANnYS6/HFr9FFDk8BdQI3I02KWFaS4HLJKpY+DeyOlk8AXlKayZ6EAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721139923; c=relaxed/simple;
	bh=hoigR4LDmvgDdiSmjA9+7XjqvQYMDh/5HAa8EXSesf0=;
	h=To:Subject:From:Message-Id:Date; b=A+iG0X0bpytyXHS8XjU8XnQYPMYs9H1jsRdgCdIaQSEBuI9YTY8dvotk5nmGhssFVXvx9NkmhzwkRwrZ9D4xG9cmDTU5Heq18rgr6pviUdrs82aVP0CyURxUdpU23QKG4YUmzvc6gL6CZb0oYS693aBVby+W9A6TDlKMHyR2tRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBFqtUG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBFqtUG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A34C4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721139922;
	bh=hoigR4LDmvgDdiSmjA9+7XjqvQYMDh/5HAa8EXSesf0=;
	h=To:Subject:From:Date:From;
	b=GBFqtUG+ntCSTGqyDGcBfgJWI8Kp10JoffJnNK/par8PuJnjnFgxSnbWwpGKvtjCu
	 UYyF4ebm5iEKctzMU3Y/i+vxcRN34X6nBlTHcFYrfdW/tmZ+LJdFlTPgF/lsair3jA
	 f8iOWyzg1aMzzsMX1rYQ7ospkhcdpRIKKBxj2Wo5DAfurjvENTCCU46nbn7ZkstkCb
	 ZA+9oeviw6G1K2Asmtd8jmrq8AcbNsbGmJDyKhfBqYGXCEJr10Tq1hd6FbA8hCfftR
	 p0PiMcYG0Yv4XZxM9vBil6VRofh1HWb8AWg3RJonTvI8UznhXzuUcp7uu5oTBnf4B4
	 3zCRDlmGJM7eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE48DC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172113992282.18286.18358300845994182548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718b229260795ea2149506a7f7269074bd9d2a2d9e45bbf91800ae3302e515b2
Date: Tue, 16 Jul 2024 14:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721139922
