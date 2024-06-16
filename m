Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B35D1DFDE
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718544503; cv=none; b=fQ7ZKdK5jkhEjLONG3K88wGg6Qqw68hBh/VebCQjSlsPlza2yL1B1cYcI5zqwRj7uGo/GOrdr+MNqy7IdQCg/0qJISBEG46uyCIhGDoZ76kuUgfK+EFb5oTDlZS1JjDSVWoMWSHAUJzfyVQwAkqUoDz8SXz4R5VXNdcTNDUzyik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718544503; c=relaxed/simple;
	bh=CioHtPitK5fJr4k5JIsgJhLXXvDYsUsUrUznvv5Ncqs=;
	h=To:Subject:From:Message-Id:Date; b=DXlh4Za7rBgTwhxlvWKvxMHmg94DECsfHH+Y8QSAvMXnebbZeQxceTGNt1awoq+qRAq0w7qwEZiAx96A2DYDPVrMnOEuRUDGZMnPo13NAhk8k7WaYfQYc0gAsl9c1/fValOgjqaoAko3SU8yW7VKw5j5rGdZlig5v3G9sanAFa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyDFlNCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyDFlNCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C05C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718544502;
	bh=CioHtPitK5fJr4k5JIsgJhLXXvDYsUsUrUznvv5Ncqs=;
	h=To:Subject:From:Date:From;
	b=SyDFlNCA/ImEisPK2LKCysNAaFNKrNTsprQA+k+S7WkObfQuf5UgthFnBDOSwB6rK
	 d/MJAHDnL+2SU/ZMg6nrNDF4sRZr/31Zjz7FqIXs3WKGExvRaU+dUx9D+mdMYbfJzx
	 KFFBEKon1ujtK7KLCssYBtCfJqOK5olXU++hD1cfi5fOtn7zSMZcDgHV0H8uccK99M
	 2ujGHKhSpgTNket8b9bR+2E5yVYQOsEdZgMNAWUYRdZmCyuBjsuxGNmnVCTTlL1ApY
	 k7WkE5palj+V8Lg/bBX+3Er+45LmmPvsdJMN8YeM1vevUHwGK/t/o6+CWBiPGECfd3
	 1oR2Gir+4KnaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D03DFC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854450281.14594.14901116429585862721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18af233f0b28e94ad690a453f607a3542cbfb4f58aceb13b5cfa1a1a0fe23cf
Date: Sun, 16 Jun 2024 13:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718544502
