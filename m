Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F79410D3D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791978634; cv=none; b=Gl0dWoJA8Sls8XQ+2/M3/MuDDGMRbL8fX/u+ppgNxl9Ic8vYpr0it+wPdsZtczN6UqZsXnVnOj28ba5NWU+5owXf7cBFbNsK47OxzprIVSbRvGG6p2yHUzmHzvi9qkfBI0g9ZrTX1nWFgwYyyDSixEqNPUK6sIS5bPBFK/1iU9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791978634; c=relaxed/simple;
	bh=xlh4ccXCB+eiMFFA5VL9I+eEFEz9j69usZkGhgwh5MQ=;
	h=To:Subject:From:Message-Id:Date; b=nlvGZfHbTKetv+8magaBTjxS/+hmy4Ypljel9zChwuiUYRcxvivqGJsTpYp3Ut8CqYDw2FcJaZc+FtDgMhfg9V8Rkg2fIrYznI7xBowQL54m+9kJ+zUxHNxRTmvZeDe3CIJSg7g48PPbPq4V7CI/fiFTwz83wV0876HODA70T90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfPnY0ZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfPnY0ZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1738C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791978633;
	bh=xlh4ccXCB+eiMFFA5VL9I+eEFEz9j69usZkGhgwh5MQ=;
	h=To:Subject:From:Date:From;
	b=bfPnY0ZJGjKEGExvbgOF/YqtNTBn5HvyxJOIqrD7bJ/v6yTjfnTPjJvfdiTKeySLM
	 QNArFELlKlh9zWLou4uYmrMIjAyKrujpk/8DT53oKFeVQ65dYaO9wEmnpF0d0ybFgL
	 qOyepULivNPZlBPwth48Rd5/RURxXK28WHBYw0xm+MPG1VXPVSNkOUBkjoj5vs/90j
	 NCnVNLZhcJzRSOk7L2dODc2EWLq93mzf+4LdUqhklaR4Zo0ONqSVklPI9hZ3f85OBq
	 OiMjGyCXz1X37yNQXpd/yU1f2ro3t2b72ANM9hAUSzR3nkPYIXBNdOxbby8PK4ztos
	 KhX/DFD7BztNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBE5CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197863369.13875.429750485363366679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72545293b5ec4a2c6349115df3a99c04bf6822adbdf65e1a77a056d24a414235
Date: Wed, 14 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791978633
