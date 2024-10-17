Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202822CA8
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729125954; cv=none; b=Qt7fHj+ZadbaVd//V4wXD3QLzBYhSnFB1JYxKwVY0GyQvHLk82AlVq63wkBLGqhOTtPtaC5Nc4B8+PSqUGdv9v59ziDXKJMk0Xcbz0z5YmWtc3w6Dd+hezvEq8Uv2kzIJ4rbc6+dMhhgr5pWcDziDETneQdAyqVWB8/jp+a/kqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729125954; c=relaxed/simple;
	bh=yQK0lRPZ1xgNehZGCLxCdTtqX0lVp4NuK3ezZd2K7NQ=;
	h=To:Subject:From:Message-Id:Date; b=mjoxcdNPnAJbNpgG6EyPaQ/kmwo0mXCwHfaYI7lVAMi7hIX/DqlbNm6L57cWU5nY6m7M0sLeR+kxUoDTHVb3OZNTJ6xwbZbyVFs/84BmbGRzUoDoZdOoKXKZedSadtlrdt4rxoCATe4YDDQeK4K5MwGPbyKXEfq4LDEv9GRTcS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oU9RluuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oU9RluuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA67BC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729125953;
	bh=yQK0lRPZ1xgNehZGCLxCdTtqX0lVp4NuK3ezZd2K7NQ=;
	h=To:Subject:From:Date:From;
	b=oU9RluuBeUmNYCUSLlV2bMxL1V0eSEintA4RXK+ufOtcDKvHX3fqggryR3JO3v5Ou
	 IXNm0VFOcCl+gaAWSiOzDk7Slu963UasCucAxV5VMdZT3S/C8JP3uGmQx5CuyIeA/3
	 7T165ob4XTFkLrz8nOD/yN6WnF97Z1+/Nh5FXslYsIlk/pR6+NKtj0+YWw9IKCJ4hO
	 jUSipOA1W3JBL3KfDkRHAG4c+MiAq5KCfaxot2CbLN5o9AN42wgosZv6frtn7UQWEA
	 Q9SCeCTX4v1tjnlHxqL73GjsS4c9n7eWmN2QEExXyKgH7Eu6/Yj3yXeZQ4u1vj4gSe
	 yFS71+LX8wNvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E8ED2F7D7
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172912595359.9202.2169945878274351808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67bba33808dd5279971ffbf9ad9ff2e3a09e3a464e2eeba261f6b84596c6c000
Date: Thu, 17 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729125953
