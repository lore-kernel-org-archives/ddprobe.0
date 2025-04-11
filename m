Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4532980A8
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744362594; cv=none; b=aqke1EV6N1dYk2QCwAGkHUsohEx5EBZRdYWLAC/5cZCH350uXeUl2rbo5EWYQm3PUAMnKZQ7bQ5dLQyfUpsc/6W09DIuQiWtNk8UTH8DqLgIRVrZmirnHoOHBWCzIkV6jYrf1l6dBC8vDoBuxdkC2Pa7i+KXvZX/40eSfkDTBiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744362594; c=relaxed/simple;
	bh=tAkBG98PqNdAnSd++NTKvRshUW1NE23iNOu19z7+kvY=;
	h=To:Subject:From:Message-Id:Date; b=qRNUb+7JriAYqnxBkm4rSnQ44B6ZL/v6BhiRxCUNpItZYzLJY/ZuhCYXLOOBoXd27TGV/VulP/hskueftm1Ut6IqxyBddSAD6r8KQRulQNU7l8Xn1y/BiqgQ1UNvNncpi/ZIRrW7Zr4Sr6th963Q0nNQ0TQQ9/MkBxptwFY2VBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpduIcr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpduIcr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29CDC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744362593;
	bh=tAkBG98PqNdAnSd++NTKvRshUW1NE23iNOu19z7+kvY=;
	h=To:Subject:From:Date:From;
	b=BpduIcr/SIdWZ0gG/fFigacuBrgM+s2p8z+2Lt+pexusXi3K5EWxWbucUxiQTypGZ
	 rlCLccOs0sx7v8F/jXIjakH9qRV/LTkh0EhsZ121v1h+cVNYH2hjccqB4Nqn6pbBsA
	 YrcxCHx0tDCgVB6Yyieb+GykuBxmEgIbL+rXxk4QP8V/IIbB03B68VrBl/UOtjgMPU
	 DLykZOTTsc/lbH6LblIrzDOlVBDCfOHbccwB0jIFM9bpySxYWiMMwGBQp+TYVVrG/0
	 Mx3VKeqzAEY+2G05oy2rzPdilp/QnEs6JQqXfnKhPcnhscGpU3kXlYbInJVhrLvRx7
	 3/WCy4eo07sug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6EAC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436259364.23716.10519566680454413742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09f0708fd3bb49ec084d20866f44dbfc870a15f426aac23d101eb736fd1d5c1
Date: Fri, 11 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744362593
