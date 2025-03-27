Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1EA128816
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743099594; cv=none; b=K5HgnwmmAOZqZFI33iX3WbSK/oBWNx3bDL+Id0vTng7XpE6TzVFHEEEYN9JrZ84OOwL2S31atdFQAkE9C6YbosXU7V1WmBS+CFoQcE2YcAzKvyMkXsmMNs2E/aMITOvuVCGoYP6NHDYNYPlYTvZdT+tOuVggHqAcob6YOq5xr4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743099594; c=relaxed/simple;
	bh=rIV64Q4l3UaEOYDtgvAGsAwtJQa5uonLFWvMC+ssiI8=;
	h=To:Subject:From:Message-Id:Date; b=OqXAYODBCvSXzrhrb5IAC32k3yH2Q3plkhfh83QT39dwPGlR8qyD7cbl9P3DRoQEamtjqHFUgVkq1p7ZwKeajIa+pL00OCiaosESzyzryaEi2jnj22buyOtqivvH1rSWqf9N8YBCcIwYf3s7vdVQFvVoY4H+DcBEiT2Y7WIA42g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGoF9tpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGoF9tpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2332C4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743099593;
	bh=rIV64Q4l3UaEOYDtgvAGsAwtJQa5uonLFWvMC+ssiI8=;
	h=To:Subject:From:Date:From;
	b=mGoF9tpKCtzogbL6LT7rhBLsjlF/WxfRHaGxND2NxWWKjPZo1YjlqQfDu+SNk8Axo
	 H7Wp4yPC0W4FtNRWNTzinMp1VBAcpvi6nP5i2ukvFdkG0zT5qopWfCxp9CTXUN3O5I
	 u6acVMoyP60kfWI3YIXnhYzGXoaPDwbdJdlyqBrKxho0jYvo+xU8aeUpo+SZgPFrCY
	 zAp8fX8cD4JPnrLnlRvv7t4xwUvULCTTRIXH6vyOpcT6fCuVZUaRVN8x1jCdPNO00W
	 DCCxUVxKsf0yMeXNmmrJWoK9wxo6Pb385bWv3sV//OP32/+JholPek2D98uXBVRIH8
	 M3PvRcDdqdO7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE88C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174309959364.26708.16502108149749859316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b957cf69a66e8730888860a7998d11b2477bab7edede34e862bb731daa8716
Date: Thu, 27 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743099593
