Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3987B23AD
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759835394; cv=none; b=E27t1a1Uz1ocirjU4YPWRzALjx6wlbyiJCXsr42IFzVQ7sR43ryTGHmg1esDlL8YK0XUj68JTpgYcl1MoeVph+FCuPtqiZhGi3CIxmYOGgT9uzILuLuL/z0RBdrwKte1ohbiSWYBJk+cBl4jZ7NOAXVQzYsSc7gbZqiywvatnyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759835394; c=relaxed/simple;
	bh=dbWCxn9YS/jpnNdSGiKVVNdU9MY2BnXcW/xCXzdvwRM=;
	h=To:Subject:From:Message-Id:Date; b=qThUrQhc3w3FfK1dRf8S60eaiFHkgqmcl+Wiewl6mK+0jWZ6Mqj09SwEh36aaMHrckD4Iw4kNsFW21WoCQ4RIx7yC1hpU5z3NZjb72LZGgcHDiWEQNKZZu62cYpvXdPNHSlgWF89goLzaX7uJPi1RixJ88ATmMbVoHHlzWjgxZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZrY0XG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZrY0XG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B04C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759835393;
	bh=dbWCxn9YS/jpnNdSGiKVVNdU9MY2BnXcW/xCXzdvwRM=;
	h=To:Subject:From:Date:From;
	b=bZrY0XG6N7KPqO5cqpJEo30u+hvo2i5JleSm9muKoga5nnG6uuw736HvOwoyvGiLP
	 8YT2hQ9C4KznMcec+5x0RGNu9rCXJmLlNxnH7VP9urkgNhfWNj9Ub9rydI0sevb+Tt
	 sLG79pdCnyQvLWhDJUS7IgnMpJtubkHCRDnE0Y3MX2lo0a//HIN3B2cV8a0FGxjJIY
	 V7tM22mi93x2qJrURgYGnlsUEc4nll9t6kaiVESEl48K+NqvQ3ecp/hcomRMU94twx
	 rkkWosyvvwEy9eOEW+FoN9XpejbxtkdObHQPxnPXZZGXbDUnvLgt0afkGBi93C7TJi
	 dj0cmCbAbeAJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97948CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983539361.4148.5494655649809615562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db2dae8d1e4218793e407b018b32aeb52f1f6af3f4ec04fdcf4cbc557491983
Date: Tue, 07 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759835393
