Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2942C218ADE
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754203794; cv=none; b=kj/k9R6P83I67ezMZ1mT341xLe4a/87zSYBB7l3gU2bYQ2aou8DXmx6TdPibxvroMYXbSPqLzrTk+vzxKewWCwF0YDPpNT6vktxv5jx4waPf443JL3utmEqBbPyCqYhg/zs267p2IwVVht5+PwNxPFZDYDWPWk+FRWGUYRq0Li8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754203794; c=relaxed/simple;
	bh=userX6unENLX/UfQQt07xdIjfWXGlzfOxSo0cADns2s=;
	h=To:Subject:From:Message-Id:Date; b=YpZLENnQ6YSUmf6YxVaWU3BMr/NgTG7JGX2wE1exrTidfmI7+53KkNLmmS6/UQfdcz+Cc9n5tbropt24uCWAVQzPsICtPsItTXytMLyVCuHpUlfq7BP+cQqauMLq9njFY2FWZrjaExZP8JhcRqKf7XooTmkKJ8U0fv5ETo0xUSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a45P9Os6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a45P9Os6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DA8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754203793;
	bh=userX6unENLX/UfQQt07xdIjfWXGlzfOxSo0cADns2s=;
	h=To:Subject:From:Date:From;
	b=a45P9Os6LFsPjEDglhV8boNc9NhMwg1P4SauW/L/5xlx66uM0x/Or7oF79T0eL7ng
	 wroeeabqWN7GT1Yawm6nx0r0XTklHdx+44m767kmtw9bVThdPYRNqo588aP3r1Fk7I
	 gpfkwSy8kfD6tuPhzIjW7KlPndMXLOBiCoxruzsZiseVB8U6vGkvWWYM0vLFJpVWZL
	 FbXT+5mWKOKA5ybTGPx2QuDTaG3NTpy3ElA+CGx+jvq2y5fS+3j21YCcSgeG/z2Dlv
	 /0oaTtY/81ZMDs/uy0DhcGCNjkr75TxQg17g/Ij9C+d5laBhk7EwtgstBJfzC7ocRP
	 Bh0gcRKk1m07g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9EEC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420379357.23665.6860481424302539914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bee83bf68095634e2b32c904f48c5b6c1254f80e86d212e67537f6f19e15253
Date: Sun, 03 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754203793
