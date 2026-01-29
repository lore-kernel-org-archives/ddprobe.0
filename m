Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3A1224EF8C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769696634; cv=none; b=Sz70YXrWa7yzzlCxKrmcu46WSVeXVEleDya9lgm0gppJUlGG8yA0sEOm5sSuTxeC9rLnNZ8D+ALTqjITxYSyxx82nOYi3YE+acYbymBgvEveT6AvwWZf9yda0QdqcvYAhtVxvOepZoPcaOjoD+IleTmJEFLNXNwIPCG+6V7U8c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769696634; c=relaxed/simple;
	bh=tWt/V+PJU0+fNSJf0RoBZDbc/NJYBnhM0fnTuwoKLas=;
	h=To:Subject:From:Message-Id:Date; b=GVvU78siJQvwzIZ9NOApdPXTxz8xuL6zj2vJMdLI/QKm102hdDjOxfHveTxjKNM1bwFB4brA5xOEC0Z0U5P3m5PK2dgEobm5/lda+Mr5N3ULr/oE3maXU4LXTSw78GtGR3Kyrq5IB3W1D+QMZRbYDJ+GmVvSO2Zavjfj58hBrt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nX2OXy20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nX2OXy20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B13FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769696633;
	bh=tWt/V+PJU0+fNSJf0RoBZDbc/NJYBnhM0fnTuwoKLas=;
	h=To:Subject:From:Date:From;
	b=nX2OXy20Bd4Le6vgc59s1IJ6DIfNG+kWEQem1K8E4GYONAlpb6yzMt+Q+1/DVXvu0
	 8ZDYv8vfjYEOaABgPztoHCEkTOOq77t5aiHuTRzlma+OJUpWqKurLkPr4FSRNsFoqm
	 GvshWhAuFRjdSgpQyQoQeB64ozCct3tu08nk8QcCxzcZKjJMGOOkfQq34UEKq19zFm
	 UwnPnj7sBpXuNkKGLEoZrKKQHZ2pNqfTXwsH1vA+byC8MTgp7HV14jyxbZLwZj0IG8
	 n1jTlqPVDVw1iRha+flN3qTfd695GRw+jsAtav30ZVwpnHm06KKOQcnLBlVb2ht8n5
	 IRplHtCdYz4Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F68BD6101C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969663357.25308.3464178575529626073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817e325df8996c3ad7ad6edf9a9d341f1294e5c519380e7a94bc1dbf95bc7a59
Date: Thu, 29 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769696633
