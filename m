Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F97623763
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706455097; cv=none; b=F9I4IxuAEGJuUJsH8y2eIZY395TnqvUH3YbKYZCQGBl0nGtWsqTNS1JN/CNuorAeDRR2Fjj8g8vvQe1Sl0ydLUvWj/Px7w+EeI4SBV2hpYxqFpHfr4u+ri5iEtBVPnVFFsserqYBYzIhVCq6i5rCgidAOeqADoQjIeeyoxthqr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706455097; c=relaxed/simple;
	bh=MCzLz84AD3k0Bg5GZvg1N2KD8KeD0su9Hlf8P+vrVic=;
	h=To:Subject:From:Message-Id:Date; b=r644UAGjLkt64CwlFKS1AdrbdO2EaDTLv3E+XuJKcJU5O5SJkvqcY+Vt5if8a675gdibuEeR13WPMGzDldOKVg7UOiIUTH/L29BS1/0voCF0bq7yzgicH6NCojcRBALOmyq47R0/iUhLL5pA+TC9XGCIko4pasLOxZU96UYR0go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vh9EPDCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vh9EPDCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88C9EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706455096;
	bh=MCzLz84AD3k0Bg5GZvg1N2KD8KeD0su9Hlf8P+vrVic=;
	h=To:Subject:From:Date:From;
	b=Vh9EPDCmidKP1ur7feNcQl7f6rFY4vvYMIt5tg4UtDQJdYywT9jfT+jc3mx5na5NG
	 VD62V+gxsNDDk1br5olrDIUZhEe1KBOFqWV42rtCPCN7qbbcaqr/2dzVGF/OlnmGOg
	 HFcFskiuGRABhuP5UG7q9gQn8VKKI1dAldIfqiYwRIGVZ/5GS0dFFKG3jjDw7/6x9a
	 DdfzOGLc10TOdwMZ662VWH42ud62pMG/H5HVJp+NqHnJDhsTp9qetjltoBQCKDOg6j
	 2GYxLqm6snJunbEVbEHp6QQODBdwsglAQ7lTSrLn6P2HwEvpg9PWp+DBSckgiEaCsc
	 0qzKNYwuYVbuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62176C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170645509637.16113.5768758613817280410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42c863c6bd874fb5cc89e3926d96e287fda2ca224a6f2756bbfc63266bc4f30
Date: Sun, 28 Jan 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706455096
