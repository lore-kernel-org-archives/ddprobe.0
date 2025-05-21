Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBD312E5D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747850393; cv=none; b=do7sPFuU2ArIeG6Zw6tu4q8lWsU1vEbwsnygsdeLz2Q7RylBXJfyFUmZMsEjE6kzUfHigvQQOLH2pReY1znKCo/XwdKuksal7t9cX2RU6VVj0gU+eH68Ckcfg9guwvgvte9JR7bStmv50tZ1Xdwja1VOvNFXGOl9HJKHspgqhd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747850393; c=relaxed/simple;
	bh=O9HMzMt8mQ+ylvD4YTPHavx5wl0ZYppmmJbHmkjiCOQ=;
	h=To:Subject:From:Message-Id:Date; b=fjzdgk18uHCqk20L9y9hNciqxAqeibof1bAb5e3WmHrXlY2tlZjqbmt8uYvxPsZ3hkpc+2sUkfqkbZ3ArzsE8QXvp1bDN5wKUC9LIkapLQP2BCeHdm+nI3D3TxoQp3kb4hoAd4uKTJLvfKjA057fPoQkJtwJx4o8t2H2IuswGlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjZfiV+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjZfiV+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2136C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747850393;
	bh=O9HMzMt8mQ+ylvD4YTPHavx5wl0ZYppmmJbHmkjiCOQ=;
	h=To:Subject:From:Date:From;
	b=NjZfiV+Unv+E36lhWQnBb8+SDn23ngjIraDAcPcOMENBn7tObXAxsojWU6I2spRB/
	 zSK258gZdRsggNMGzEXluLSzQqMUQ4eWtqNpRouDr91yhqw44Npt6wIry5aua/TOLm
	 Ng5BTZepFVC1ai8Rt+LwxBdBzc5mN5AkIDo6MLqSjSu/aWPvgrf65FOnPYJDNee7c5
	 /b8OPM1TP4ZF4PnRsOkFT1aJZLAY+Vw7tl/aDSE5v6KaBsjW9n6MeTBhnxfePjZR/E
	 5DQ+mXCwQ0Q/2k60QNqxBgQBl1mx3VTmf4w4n8uJ4UW/8afF7KCqGfJaCGBD35P6ZM
	 1qJcfEoFU57/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92519C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785039359.10009.12327106611105872191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df4f734854e97742a838c9fe86c60d5b3c6a5c27ea442f65c1b3aa7bc2ce59a
Date: Wed, 21 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747850393
