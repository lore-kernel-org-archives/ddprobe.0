Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD42421B9F2
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747325993; cv=none; b=tUAzRxcuR5oa2copgS61F6evu4wIN3+OXplRcccw0JXFc23eOP+b6HG43Rv+HRRqu+Oxq1oNdvCqmptC7nERImhySXuJWlD/y4tH8U5sSVnerwIO0K4X8vOF8372SMBeDW6eAlQy9a2F/PO7508s4Dd56CWKeC4twQZEsgiq9E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747325993; c=relaxed/simple;
	bh=xGE4h0j5Ylg2TWissefBXe2mk19rdj9FUFHIbLpfMYs=;
	h=To:Subject:From:Message-Id:Date; b=Bewx5ijCGVhjtXt1kdVBmJ0vXJ1fLiOgMY+9IJnUVfSMQLBf9WNJwprK4HUFsB9hQkNb4yPdmK03rXiHpy+uI/lei3ln0Abpw30/mRng/wj2DwraiY390ygx20iorefHWDLF33YB/SuuZ/lCKdTnRO5+R8tEtcHLDY1lzSuBR0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgAGvBD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgAGvBD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F9EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747325993;
	bh=xGE4h0j5Ylg2TWissefBXe2mk19rdj9FUFHIbLpfMYs=;
	h=To:Subject:From:Date:From;
	b=fgAGvBD8EAlDaOmxIDXE69ZuNw4nuNdp0hWroKxk6996yojm3GAEGkT6ZrEUfk9tg
	 O/MJX//YShCSpE26s3HPpU8NbopEaHQJVGKhaXzuDlCdAH6TdGErC16u69xU7JSbwk
	 PhzjpF/CMpL7wF2RtBPpa2i3kELhb9PbYODA+D7pmaVRZKblQqHvGugR2Vgn/B9era
	 J+DKhuZaPOx8NkjnvMEo8MiAVT6bzsOF4CjLkAXHcgj8+ekXQexXtI+Vnr8xhx/ccE
	 v1U1Z+xfAgrZypt5BwO8a6yvmzKANjf1EhxHzqvuEiq57tVEOuL/C98PT04U4ffZ6y
	 MJG87gR73l1GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9039CC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732599358.9168.9018978787775822296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e466671524bb33b77dbba07f04b8cdb3bc2d90ed6746f6c2720ba8594bcd273c
Date: Thu, 15 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747325993
