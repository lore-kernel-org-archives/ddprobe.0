Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C358834
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791156634; cv=none; b=hKv+eDXGuE4HWbMpCmJjpfSzMu/sGsQhakyynNq5nQKuZ8UARa9QqLwTd6o9DXZGjBQ5NimLsHPRWU5n6i2Xq/1y5ZITfAehneKXA8la69c5edWD6hH6yq68Qpe1TzfffBk2uiQw+SD17toUeWOEx1uQhiHhUX/sOAekg4WvLkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791156634; c=relaxed/simple;
	bh=LphdI0XLjMrsNFFdUht/zV+mQpNXLPW1IGPYPeJuQgo=;
	h=To:Subject:From:Message-Id:Date; b=aBJu4txmj27Od/Dgk6EsyWMhEY0wp8ZMa5emNZCnif++1N/F81vrYj+R1oit+xG9lL6T50naLjLknon0s87f4mkZAt3QFmQ/zwCJKaI3czKUiPf3Qy+Gk2eMPB8Ilkv2Eg6SnGnvF0/6IvZgdDuvUwayThuhVbfAjfKN6e6S+Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNmr5nCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNmr5nCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE23FC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791156633;
	bh=LphdI0XLjMrsNFFdUht/zV+mQpNXLPW1IGPYPeJuQgo=;
	h=To:Subject:From:Date:From;
	b=FNmr5nCmJugOdRqmqiMU+zpqHKWW6yc69ZWVhYmZ5MVeubiEWQmeZ8UY1mQxyCWiP
	 LjFyehuaWq4S+uz9QD0J3R17hPDEaNxov73633EqW8qmXyIkSb7wN3Uq/MCbtNLnLp
	 Gze9lx49rlJ6WbUWEXPvD8pNkbkYrHd9vUHHu6prnZx5z8Z29TP2YyXYdI59D9w9EC
	 6oiIQxce1kh6JXrNui0GEJLUlLI6l3hIh+V3TP5WC2PPzbGPYVxWqubIuqQ4hJFXFN
	 gHg8OQUZ/fwnFEy7PXsF/X3ZEsiImf0LSmR4UUvYdMEmuR/j1yH+uyeV4bgi8C8SPG
	 F8JizKvphZylg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ABDCA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115663369.6467.1762375212141507224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df830360b723f778031cab8787b368a970b289bb21a23fad15ee6e658b81dc8
Date: Sun, 04 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791156633
