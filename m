Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158C98488
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762152594; cv=none; b=SvvXkxkRvFNHB1EujsmjCvCrjDd0hZZSu64204l5oWtCLSN8qJlBFiFUv+kTGwz9/AIKnki6CD+CL5hNz0uJ1/Hl5VvRllJZO4vJAEyj07ZmQhTZpbDBNOOOS/l3yvlKe5VUyiRC6OliV/qWt/8vHUCqjrjV2OLpG9kD/92f+Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762152594; c=relaxed/simple;
	bh=+u2ecYNtMFyYNwL8lTn4s8Dj/mgknVZExewN982EPo8=;
	h=To:Subject:From:Message-Id:Date; b=KC5Av0EsXHV+MeN6dRBH6dP3WmR1uxFQmY9FOB2Pk2p7Plvor0MLjTcCBNYmHoK+oArkrPpG6a77ZzslrQogjenPZH99MN+kqSvEgi4N+YtKSIZxqRHxOL1hawwmZdnT2zkSYBznHUCyQtJ/TfKooJWcYIBGGxIaRHA/jy7H0Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKVuuWtR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKVuuWtR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C5AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762152593;
	bh=+u2ecYNtMFyYNwL8lTn4s8Dj/mgknVZExewN982EPo8=;
	h=To:Subject:From:Date:From;
	b=VKVuuWtRzw7T8v3UDwL7jRtdpOEszWIS3GS+uMnReG6IlZR2ZioUqfz/dNiKogLDQ
	 f0BvkFl9idw4ZVjK4QZMLRH4Q58fn+5IFVOyYlHiCyJLWGoHy/TuhU7g21+L5NPI6P
	 o8m/aN7Kb6yxjAKnERuMAyC3JHCQzb4SnAp6M/Jr+t4XMEvxbjkysu3GB1Nz9gdeBM
	 Sn6Fj2i7kDUXZgzVe4Os4Wg1YNLhyqHiWZm56QbhLULaHTmkPSOCFxUxLcpJv1P6XT
	 OlmaXpoT7svMxMSM4cnEYFvP3iC1RqTzChqoyEEqxGYRjfszHT9VcoqKwXhwUIY55A
	 zltihLS1hkrjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9464CCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215259358.29884.11683002117670917169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eed399ef7cb6352014f0a888530dc6d04772b0e1b092749c50b4199422af3cd
Date: Mon, 03 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762152593
