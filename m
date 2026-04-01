Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232B91FBEA8
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775074534; cv=none; b=uCZLbY18gnexdNTDsQuErGoccJwVi/OoJVxY45c7SwMxsSOb+c6kgyiLNqSznb3CkpCC0uIhsTvedDUv8xMQU3haDfaJAaZ5f2ZePUapSnXV/qyWbupkFExJpCWoqr6fo2ToYYUbZ7ajE573zjF4BLH6JGy0Cj0Ub+JG26PYPmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775074534; c=relaxed/simple;
	bh=lSaPfudbytBhnJwaOXmfZT5cw562dN3rQuUUpZtXG0Y=;
	h=To:Subject:From:Message-Id:Date; b=j6J7o7ic791z9b0/xo4xF3IwiqxZUI3weFiIrXNTdSL4ghUb24HmxWrdJfaXIhA5Jp2tGedPNBEMWqD//ADLob5pLokbwE9X6l/qwAcs5A1pkXogSbhH87dYOLJLnyjtqmpvEsCbZWQ+AJUDzIqvu5f1CZPCxcey0Orb5M/1HZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaibIuap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaibIuap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE69C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775074533;
	bh=lSaPfudbytBhnJwaOXmfZT5cw562dN3rQuUUpZtXG0Y=;
	h=To:Subject:From:Date:From;
	b=GaibIuappr3WQeWBxbN6ZVg0NvIdou1051StWRTaCHIWcHGccHxF0ERc3w2E4qlAs
	 /UditteonIEhAQBgFV3pzmt7OEIVAxJAF7GAYJXdngzLo9MXv3en8piOw4QDAj5BKU
	 I6fbq4GD7/L5NQTDv3u/LHk111wHPEUfvj2JZwdcSwmlEOCuDMqZH5MbA1vTLTKt9O
	 TbRdHHM/10DUhJSmiWZ/0BojJ8hibOBRZuypzqjyDSqgcErDxSu8B2q8X7AQjg3q2R
	 TAwh6s/xpAXS+xeA3KmP5qDX8OCd2Z/Y6pPEpryaax/rl+yvzFy/uw4eWR9E0rhU+p
	 Ac6v4GvuOaT0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0D710FCAC9
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507453369.7895.2603253228138244218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea33e1cb18ebf962e5ad3332a4d7d11b633c9dd1fd6946564deb36ad66721a60
Date: Wed, 01 Apr 2026 20:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775074533
