Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570464683
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 00:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716078143; cv=none; b=Na3km2xlBqr03OUC+1lVKFPPRCEnJt0Anjl39OCQh/gyY86jZTXxG9R7I6D3etHEcO/EKoOgq2V2/tGG9GEaUp9YOwgUzOjueRe+fdSe/vX0yyiJhoNnuAily1wffVNj/J2uCMwC3b00uyWbpghewwm0LP0SSm9KFCtm+7F3Fn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716078143; c=relaxed/simple;
	bh=o+kcEbByhs6WgMK33hV5zBV/J2ol3FeoNHE4EoQhjY0=;
	h=To:Subject:From:Message-Id:Date; b=nK64j6c4Qesr8pQ6x9ycPZ1ecLWhNLBR0hdIbf1ShtV5+PPK0UGHvyhwUTClrZEHawljs14UNS90AcZ8WXgfTpd7elTIHHh3+OQhyD/mC+jN2X24kwdE4E6Uo0h+l49iVIfQyTegRbuAhWoGtgeel06p5O/AqJmhk67Ot4iUvLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uii6H+dx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uii6H+dx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D9AC113CC
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 00:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716078142;
	bh=o+kcEbByhs6WgMK33hV5zBV/J2ol3FeoNHE4EoQhjY0=;
	h=To:Subject:From:Date:From;
	b=Uii6H+dxJh5ReTbwg+9bMkDJY3dFPZ9a5wYffACbsGAde1YHG8mvObqbffmkqBjc1
	 myb6o1O3UN4W1PcaG2QmladpVNqo446YUvx/EMe3LHm4Gqz2FgQyOb45MbVzzM348g
	 Q2rmoNkMGkO5esn08JGq6g9sOVhtNerlwC3YkI0ORA2JjsubPJnkj5SlA8IQSm0U5M
	 242H1wAHOdt/PskqGuNtTdS8wP2nFFFUAhOA+R3S6wOfPCgYyPlJAVrBNIjLnFGsud
	 aHAUrZyuvcBo7UP/D9U/pSpf9V52hODBGDbyuESNzKREok22XsERUUL+3W6WTzjXka
	 ijY0NCCAcTFaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A57C25B74
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 00:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171607814276.30574.3930917957978220449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da1dff4c55f0f749e367b07a459b5dafb373492c4ddb45055fbfc24426b7c4e
Date: Sun, 19 May 2024 00:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716078142
