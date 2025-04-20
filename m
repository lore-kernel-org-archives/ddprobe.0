Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CAE158218
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745186394; cv=none; b=Ii5Zd31UCX1h+HmZb1CuIT2RFspMubaI0SH8h1ZiPcZ8IQgtjAvIcadL6VW/5nhUPUoZKMqv0fcZReCRZvycQUZAm97oc2G9vT5wjMki1s3ccUm78ugZlzcyYzSmY6ZBDNrssuZQbCNFUD6iH6Yn+TFjS5OEfNRBu7AVZnu2jPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745186394; c=relaxed/simple;
	bh=Y2PIuR1iDLaXMSmvXET1LTgjgC3gASDWmJQJWM5/5SI=;
	h=To:Subject:From:Message-Id:Date; b=P/R30IhY3kBVEgC3OUjIByroAICR4AVRxGBDeG7y+gM7y0yARZt2cmPFoxXIdnPq8qCuTc0EyVJyED1YMrwGnXk4mQjvmhj+zUZd7GT3KPBiXCBY3MOz/ZDaXMcr42+s0Gg6WJN8oThZEYGhxOzRFywvX42f9+cW+08jn3XyKKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKLhi7UH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKLhi7UH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B527DC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745186393;
	bh=Y2PIuR1iDLaXMSmvXET1LTgjgC3gASDWmJQJWM5/5SI=;
	h=To:Subject:From:Date:From;
	b=FKLhi7UH5UMRIDHEDpTZLZUFKyWBHXhjETqTztt07gJtKafGtDuW2bwi4fzzs5MQp
	 yD/gHuL9aIN09IqJDSbfMAE6UoRHOYv7y7S2vZThrWWDIxVqUuD1o+co7pQ9SK6VJt
	 CU8XYJMEvwDoriqSqjavFl5O4IMy3i2k4VnraAIieM82i+s8S34ZH9oWmIXmyc1tOm
	 5X3mQiW1Iwcy+mDzShzwEz7O6VvU+IvBL0eO3MbxfWN7llVUaQ6YEw/b8+g320moDs
	 1HPss82h92ND4xk9aFTCFMebUYo1559Z639uHF0Tdn1joFVOpDVOLVgoyg/kMbufdG
	 8MSTFLjAYH3uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E690C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518639360.12155.11328970668175691169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c78ecf46a8a798ec1d08911a7182a0c45eab19f1af7a5318e91dfe9c21b0f1
Date: Sun, 20 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745186393
