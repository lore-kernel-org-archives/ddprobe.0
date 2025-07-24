Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B9E28B4FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753374594; cv=none; b=GxjsXnz7Tbwi9Nm8lZUli3bKoGW00hC5G7yuOuj6CFQbnkTYNxyUy3xPwS7SWfchW0YlQQEgSH9HcyhdsU0g6yyS4Z0AEL8nJqd4WP9Pxph6bfOPYUGNYIN/TlauUdYSz4Xin/icH4VOuxgd7mnSFmP6ffm7AYAHypLA/hu2+UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753374594; c=relaxed/simple;
	bh=DlURbvMYS0cIGvhfcOHAmPj+/Uykw9DinP36s5SnM7k=;
	h=To:Subject:From:Message-Id:Date; b=uGEgjcf41QYWgOHYiZQ8CwIw8wYy6bmm2h+3AEHT6mxmmOA9zXKjMC7BB0Go91EViMuh734xEX2GlbNZ3FujsJfHfKdQ4Orc0Dl9JGTCROcwM95pFGwF1vYm6f60BSj45y9+bbA9pny+AezerVvpzevDzrMzy0P0ggef1msFQaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U53hFy9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U53hFy9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8773C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753374593;
	bh=DlURbvMYS0cIGvhfcOHAmPj+/Uykw9DinP36s5SnM7k=;
	h=To:Subject:From:Date:From;
	b=U53hFy9vvpWuAz+YvhwsfXE+TP100YHz8pALksIPmbtMeujy++p8HUSORTbpGOQ/+
	 wrkM6gYtYHfeHKsR3TIsCgvToeNL9OjEoXqRImBKvFM6GX7v6bxS8APAFjRZlGA4od
	 nFuYsX6KFzx0QCLurdmniT9l8WWfF0A7wCBtGve1Wo0B/iZtvBHNucnp/M0EcEQEAr
	 PfQlaBOvz5a0FtcuWeq3a9CoN/WEEQN6v3xPRsKQJoz9cXEgKISPBsbOVs5JvU23yG
	 u4WLwyjWuwd+U9L8ttxubrXM4pF77f+uOJ5TTICD79YgoPpul1ADDMAow7aAL5T7tm
	 RHphwLbmhKWww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9647EC87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337459358.16167.11036262792514488812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a58e87931c58c049d2ec14181524ab8b5a6073fc3fd75cc2a0a19ee585a9bc
Date: Thu, 24 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753374593
