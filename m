Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E620313E00
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782856714; cv=none; b=OCc9GvyoVTPPDv2HBWlGENeDeb/sUUidJUVX57wbbXciQ3Q/FnkttwnEjCBYrHWfEjptQ6BGwz/5k995RYnIVZuJSU+zqEpvup+jk/QJqhUQIjdwK5z6VRogohR+oJW0jlwsAXr1cmRgQEBcn7SX4ALHScG5iyghueRimpkUg3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782856714; c=relaxed/simple;
	bh=h2wvhl7EYuKbKqgrCrLvWZ6xYjgz7GVXh24i4AKjGHA=;
	h=To:Subject:From:Message-Id:Date; b=C7qgRMdxPSFJmgHhriVXvjDvsZvHK7FgXP3SPK4j1K4UF1oisfpDGFHi8Ph36Bd6ZxztAYDOLC4ruU7x9P1NuanoFiFSLGtH5SPCfMvnRclKB5Km5xcB7gzl3I40oEGAtgk5PKlR0xKOBbwUXc8aoBre1otcre0U8H4QM4wPddE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aK81gXif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aK81gXif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C113DC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782856713;
	bh=h2wvhl7EYuKbKqgrCrLvWZ6xYjgz7GVXh24i4AKjGHA=;
	h=To:Subject:From:Date:From;
	b=aK81gXifhX4eS/IEFvH/r9tpAYUhtfWqWPck6+1vCzEXm8t9JSEXJfZUFLvMNxEK+
	 SfBUfLvOqcT2UXHan443HTT4C/FKTrq7VafzUMNk0s4cMnGcfVCeMD9N9qzrDD4GwY
	 qU5E6pH6QGdzXv3uxW2VVgxRbFyc5ooPi19u/Ui7C7QA8Ab+8piQCrwhLi/m90FZln
	 lB7EE/owvCzb2ZPgXF8i4AGt+YdFsTRtU+sUcW5PVwupViPgaq00QcESqGt2Fqjdhc
	 BPCeEZbmyqvMI63sH+urPdpjuCCJ/2yCaNFV4P+sf0P3vBQ1HGXcZqXid2CCpCwDhU
	 KhybJFb25Erow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9128C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285671368.19217.8235655799976591976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8a57535a03a0949030cefc9d9c3b6419d76a9ed8168fa68677526004fd2965
Date: Tue, 30 Jun 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782856713
