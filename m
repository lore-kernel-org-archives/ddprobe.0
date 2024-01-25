Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A38CF63B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706152096; cv=none; b=qUaG9r7Kd2hBCOq3uv0794jfk+2pHbeYwgeIJ1wWVt64QKDYt+9moBra/u3ZYae109VtaY2NlgYjNoUGxxcPYJUBB/Y/Fl8baQfbQpjkUn4+/v3qv76mIiHCkaMBKv10txJ01/22rFOMl8jLyuj+SRb3YpdvZb/W4N7XBDSGdbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706152096; c=relaxed/simple;
	bh=Qwm8oZt12O8TVUY4HnrB3KUe0QjQ8QN5RwB4zkmeAKY=;
	h=To:Subject:From:Message-Id:Date; b=kSwQz6hwRGJ/K/vXDiyGejJuCPyn6mEZbVMGZB+CgZnZBrkhQJGakJ5kwVDK3kynSbAmCWQt+7CJEHLXmSOkpxZn3e2gE0mo2kt25aEW/1R2hf4TRTbSfVdnoHWC/CkJtooWzz2cgrynVdPJtMtPZx+GdTGorh3+avGZPeoyRU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reo3qbcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reo3qbcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779F6C433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706152096;
	bh=Qwm8oZt12O8TVUY4HnrB3KUe0QjQ8QN5RwB4zkmeAKY=;
	h=To:Subject:From:Date:From;
	b=reo3qbcBFi0fqtGqAln6EoqrY5M91X6hmU2/CXX8UgBTfzjd0laEA5wXHzyQT2C7N
	 Y408MYySRPj5ICzSp0l/qySGa6CyCC1i5lIk9WuEV+7YInvd0yZRbmcezv2bdXWFqi
	 LUIm+781ZYm7rbRcuwqqXE76wBsMCkOhSK9dyAbTVWR5qgDEE7wJFXM+NwIZfbXnan
	 bU4QaV7rYeFnV9mcP4460y8s8BVMjWBz5hbBjHTGr4b1jtcumM+TwEh2Qh9jhRhGRO
	 W5pDZsUOAIMdZWo3OXB2ONaaEtdVFwz9X6Ep+z4gSPREhR7xLnrNHgU3vIMiNbYsMr
	 FDe5oBz7zDf9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62607C46CD2
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170615209639.5176.4090311572974400856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58df5ed66a573f89b04fb78ffb17d608900821bd5d54aec2ea1147844015b4e8
Date: Thu, 25 Jan 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706152096
