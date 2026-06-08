Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A9A3B14AC
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780913074; cv=none; b=nChJu4wSAGhWzyuYrNM4TfIOBbdbX4O6CX50jembFCAm3yjEh6iW4ntCTWydXuRhIoMTcmaR6wY+sNggA/u50szUORSTzisZh1DdKCKKIyvbaTUwIpoQNJGnkV7ppOyciejRJturZXeqCb+BWYMf+DkUaJf6IkaZCRBRhR7tMH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780913074; c=relaxed/simple;
	bh=YF8x+2xiAL9g+WAfUEcJ72GCyaHf5/f/xG0m9mdY5rY=;
	h=To:Subject:From:Message-Id:Date; b=SIpCLTmARwEH4vLJjNo72Vgq1LjzFcD4HDv1TwgUYj2G7PJCKHKt3ZpLZIPu/khv6MuF02gUogiCd83pIQgNf6idxnRmUNeetKg1IN++JksDcS4UUWdu3Uw+LnfV5LfEQeCbT5kGiM6bU9z15sGbH4Rl36i9AYkyZjFdoAasgBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ij+pEqFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ij+pEqFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B12C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780913073;
	bh=YF8x+2xiAL9g+WAfUEcJ72GCyaHf5/f/xG0m9mdY5rY=;
	h=To:Subject:From:Date:From;
	b=Ij+pEqFKwN6pSUBpndqsCo9K0C6pr2dBobxVQnsoz3DUePw4ZOo5xv3XpNxFAytuR
	 pyagaTmjttGUbUXUAVI9XKDJTPWRtqb9ADfGutj4mAaWpVkZsBDOX80k1KzMPzDPuA
	 d328SvnOiEeXwDDfFJiG1xiGUygqVo9OKJYwAH+oyD0Ksq+ou3YKxl7SQOfUe63NEr
	 XJaO2WNRzd6TkUHRvCh1TiO8TJjkZm5oV9U5GGfGge4Bh9J7mgRTEcfs8F9i9NINS/
	 88/78F20A+jcTqX9cz7T2mtdOr7mBteLUqhnPArUgbRiAy+9LXWRrq0RoOcmF0kuqf
	 KUpE5gJC1bakw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F50CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091307368.25102.4396197536083443299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e31028d7115d87a7d6c235184405d0a1b3814c24fbc18854d60d05c3d2e845
Date: Mon, 08 Jun 2026 10:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780913073
