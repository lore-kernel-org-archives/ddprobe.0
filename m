Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EAF1C84A0
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788090634; cv=none; b=D6hqB72p0QrNmP1Ey5zqqCcMx1DodGaeIbr/F27z9fR5Qo9PlScEKDMy34/S6f9pRknsPvaKCYNMox5+OY5STUNcyOd7J97DjHg0Gjj3qRQ5rR3ex53flkdaBmb7cthMdRC/lFawdLb3YTLivteqULS32u5M0aYm/7ocneMSCVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788090634; c=relaxed/simple;
	bh=nSg25I793DRIL/EwL38yuiS0SJJz3VKRzSK5rHFiWME=;
	h=To:Subject:From:Message-Id:Date; b=ajBSUPvUSvwAsrMGJXWM3eOa3nqp+U7i+NhCfxaa6PonWGVGVqRJ9cjURbaJ4js5e7q4uab32792EY9KBrzhMmrzDZTwS0/GLWC7tU0xD7SmFwUbdsUlhXa04v1nKagIvt6ZjzS9gBQBkU1RGfmq1xLcpjJmiSdWw8gG+ZrxXsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcJKBUmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcJKBUmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8E4C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788090633;
	bh=nSg25I793DRIL/EwL38yuiS0SJJz3VKRzSK5rHFiWME=;
	h=To:Subject:From:Date:From;
	b=pcJKBUmVvuzU1uDLSm4XbpQaAdB9+UNB9NVoqJFkD7HcocGkY90pY5iWDoiLDE9WJ
	 JpXIw1N1Ou5BEupMqiThAP0qv5m1G4MaTDcbd+j/KtM68vkfB8k91n9Eb3RQ4bAnpW
	 IABUemBfEW+BugFwRe/WXZovvR4yKDq37cnH78bOvR9hL73aR4FQ9VIEZ4zfbTKZdZ
	 i8QCCWfury3vYayhL1O2fwMV3kA+3d75b97m0UktDkAKN67mvhRypLyafNfZBz2R+j
	 98VRwcA6lTxpVcM3QytiXBISqMEkDHSZg/tGNfNBgbTThjppKiTifdtNMQi+oJXD9V
	 ivUShGw4bYl1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB200C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809063369.20932.4078054061377454407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b9ee656a1834eefca7efe3d33c6463afc087ff8f047275902c775915d4c31f
Date: Sun, 30 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788090633
