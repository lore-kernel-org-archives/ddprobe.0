Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3169F14E2E2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749038394; cv=none; b=Uo0kZpO3UfAMcxTCL6yPUT1fltOvinGV6rxj5/3Ym3n63n21e6i3j4G7h4datKjT3czeVp3YXrGhnQlDE5y0/JAenYeTl+P0Ppp92+EF/cJAk86gNHNzJyACx7HQNzQLBOx4iO/9396NvDTOiTsvOdg0WxCkHn52YJQrL0vFeXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749038394; c=relaxed/simple;
	bh=5/vJFUWvC+y2JD2wYCUyp/VgkXVuE9fMoRxOTC0nI+0=;
	h=To:Subject:From:Message-Id:Date; b=uHFcB2ivD8yV+Psrr9kFm1omYJFVrRI3SdQWu3K6029Ywe/1EpwctPjVXZNsk+Nv76FWX/piFOqKfhg1zVQfOIJ1LnxGn+h7nJK7rF42udPA19whmSQm9NB1zN3aqoQjZ4tGh4qmkFJn+om2b5u8JaCMvfM8sMR3yK2oMSaacvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHpXB53S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHpXB53S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A551BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749038393;
	bh=5/vJFUWvC+y2JD2wYCUyp/VgkXVuE9fMoRxOTC0nI+0=;
	h=To:Subject:From:Date:From;
	b=jHpXB53SLIYmpuXzSjun5dYN/5uFCXrPtxNlfqFHDuPq8YPMGX0nalyOPfglEnZuS
	 lUoFtoX/wE462BVLZGt2zBbu+V1tHzjKnvt7Q4ukAQmChBPYOKNztuqHIIja0TBx3e
	 bQLPgtI3qcMRFNI9DXfrYW4GpnW/gq2Kkpde6o3QoHX0FKtPgjOs9QcM4UtwRmiLz4
	 B7JmaRjl8NtTT3Ny2aSrLaDSRCYm/crNQe8WHzazMhjWqMzgK9+a8r2U3Ah+pxKUQG
	 4ZlGaDGm5l0whSoQy+BaRv1vgjigzK1xtabL9zN50nvAgEyTaUMLFOLNXV45hVjlp0
	 kgSaB7RhaWkFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7DBC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903839358.16011.6555456763616923582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259f8d4f05e32349a8ac0d52e4b9e86f0ecd91568f878d309c2d9d5c9e2875b0
Date: Wed, 04 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749038393
