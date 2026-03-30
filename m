Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BCE26E165
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774838094; cv=none; b=cjpTma3SxNiNMEJiNsQc4ce1Jrz1Kbq/xi1JjlCKjDC83XG7NReZdbjLDYgv033TIQTvP8n7LQKEX9gHYi7YrZrPrrNYyk330OdR1W4710oWAqG0GkM8KGde4d5ydzM61me5qv/agKCh/RCqezG3LhCfVssBAucW2yLC2ov+XYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774838094; c=relaxed/simple;
	bh=LVyLTi65IRsGzWfSWtAeAN705XJ7M6o+RdPBPPO8WL4=;
	h=To:Subject:From:Message-Id:Date; b=idtWUoTX6ZB0acxlOjazjPaV0aOFiJS5IdSBnkUivHDMchU9pWkkYzlSTirQv8SI3SNRIQMIwBgzB2u/oRbsDEWfrELmDNHYuoJdHIZvJudXE3l9tXoOJOKlFMN5IamKRP+Z1XGLFsw7YGs1KEFbH8Z1RGNRkWFhm2f6iKU3bQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uA4uwuYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uA4uwuYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A829BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774838093;
	bh=LVyLTi65IRsGzWfSWtAeAN705XJ7M6o+RdPBPPO8WL4=;
	h=To:Subject:From:Date:From;
	b=uA4uwuYbsD6Qh1x8zi9amrlH9h921mtLix4Vi5zRDi5ShZ8LOwE+tbfCGoz6taLmI
	 +Ao8BqXIdU5BwxTYJBA4UXCh8RUxID0CgcFzzEtEMjsZPKdwA4XAFaihbuIC2HaTOh
	 q5iuMwS3K+WqYEdY/N+LW2z53VPctkQjLp5DaLk9JR70JAyup6BBjCm93GmUmXBbDj
	 SMwV7dYS5S6NL9WfdzymyGpoz8myRYBN14d6zRAz8rv0XmQTcSOcxvGAjzm25cvUds
	 K2x19eheh74bcV8PbJAfZ6ENgKtH3ZSnziYeSgiSJJXnl8/+i3OY46O0hfO/qEATDd
	 cOzJkpxa+jonQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968E8FF492D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483809358.4012.18192276698858875526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5820fb3e514f3f4e56a19538a9a447d7d49105ea0d6743c5abec87567553474b
Date: Mon, 30 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774838093
