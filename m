Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5FD280332
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750027793; cv=none; b=SsI5aywCUF87Sf/osXCeJ4npTXgC+ALpj4rZljAhHO3VumH7mH+t6sru1hr7PqQIkEep6yvPtruNh1eA/AXaaeCJouZ26pV0AESAuWjI9m3v1kpPHNGY6+1ZL+xvxuMU21LkBQHW8nexmBVdMtwTvJDGLgOQ7wGllYkuwy+0XcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750027793; c=relaxed/simple;
	bh=iFJodpbmK5+7zbkp7u7JRgzylPMmUYP+7fP3jmzHEJk=;
	h=To:Subject:From:Message-Id:Date; b=gA0Uw69BYu5N7NyeYiLZL5JnAKLVYenEHERD5UXxeFawAJSgLsoNIdSDp/1njzmUZOtyaeLDoUNbMj4bV+QE0++Xw6YZsDAkmU0Nj1x1stIgaQ9bQ0N5nYCm1clTEs2wiT2inR8gsfRKjXOOfgpkim8i7D3+ClsYwy2LR51p6rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5Wg4j7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5Wg4j7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FE4C4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750027793;
	bh=iFJodpbmK5+7zbkp7u7JRgzylPMmUYP+7fP3jmzHEJk=;
	h=To:Subject:From:Date:From;
	b=s5Wg4j7UD9Lq282ZJuTjcJ5Lx1AzmogZPe/j0dDRbDpekCFy71ER8P/RFfwPu+uEq
	 L8VSG0q8kjHOrrWGpB+VJZY3QSqGnQpMWX2JfatQdV8GhuD6hk41iR3gaIPShSESoA
	 +6YsZAHIOgldVpscCnoBwCoVDA58UewIYGKKcsll0aTShRpYwyqSw5r5I+IEUJbUje
	 Z+5zMvRmriMyZq/KM3XxdxwcQxE4nzxoLPFS7yL9L/C21+DXaHemLDXagn4DbR6yQn
	 YRarsmeTNYIpiX0XHUpY8QXAeUAIaczta5XjpU2pqIbY2k8b6PoyvemZHqpYvC3gQg
	 GLIwiAF8d2rWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F33C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002779359.324.9051904047050378242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ba3e2dcd5da424b209c7dd9d40b95103d150ff237a01b027ee5a122bf252ee
Date: Sun, 15 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750027793
