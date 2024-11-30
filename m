Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4843343179
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732967154; cv=none; b=lDnx2x8XKqu1qS8x2bRvmWXNpTlCN4AEQ4hZDZdN4ady0yf4OQhLeqiZhRjMNbGKcpFZfGzdlwRRJynFurRPJgde+0sAP9hCYSNChQGOpVfQHIwnBR63hJAOJMo6M7eidw8RU6NbQPUWpB3fWQ4keqtSXQ11zi6brbGj0MrN7qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732967154; c=relaxed/simple;
	bh=zsYuink/r3LVKqXiYkjernwk3+YwatLPbQID9XaKDhM=;
	h=To:Subject:From:Message-Id:Date; b=Qc2sDM3gskPDFsHTCJpdUfwolk43VZ5cQ2RQB2PAZArywPAKeqn9mnV0ARktr0/KtfeCx576uNkP2p5hZYWGb9UcvVEwk1dgfrQYtZx3oFE3YdBNvPGlqVccTmM+n+gUS3bei4zTg3OpSA1IDeLL9Ua3BaFmI2iiimdBryIQatg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFudQUka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFudQUka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB96DC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732967153;
	bh=zsYuink/r3LVKqXiYkjernwk3+YwatLPbQID9XaKDhM=;
	h=To:Subject:From:Date:From;
	b=XFudQUka0f7qRRh+9QKRMYJpiy/yowOJQHAZbJBAs71kKYbbLqo1LDEcegtsvX0A5
	 wYO/9ICEpeXRoXh6AZSdg5fGbZzMr/K1CrC5IhHevFxNmhxliy9/PKNy1k6cdBVax9
	 n2ZX4AP2ZQyMPX1l5JUBdVJ2feaeps6j9qNbEtpzuXdQrEvxZmKSPI8tNhiSUwsF6N
	 DhnWeWpgPOaNSmfKtZ9uxGNO1tJipAU6UEP614EDW/k6r/3eqZC8iMbrm3qkVlCC5/
	 KX2b9b1BvkKG8D8cpMO9rGrfle5ZqCMHGTP9FTXZStP9Dyx3KQ4l1SHaIC6m6F8q8g
	 vuPiizf5vxXXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAC9D735FE
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296715362.24678.6949399172835875300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb2e9f484713b74c083f18c7053740ec0dad64005c0bd0d3dc0d61ea88f2b0f
Date: Sat, 30 Nov 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732967153
