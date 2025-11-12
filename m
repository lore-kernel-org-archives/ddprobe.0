Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7BE27E040
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762978194; cv=none; b=Yjolg+0ZaG7+8hFApNwS5zXRZIFWRaR15De4VTMqCAC/+y80T/krNGMFi4Pi+0pfsX6t8MRD2O04AOBRzVWUzBabFDDXKwmuR8bjgwKauBhvbjLpbnXznkkjdzIT9hRNfa0wpxRHgmC72wE/Jv2+rxjgC6lmtkJfJeVwT5y0mzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762978194; c=relaxed/simple;
	bh=XEkbNP5UgwIpxoPOn66wsBji7BrX9eF5mJiooD//JQU=;
	h=To:Subject:From:Message-Id:Date; b=RQ+DmcPyN0ckLf6dEd5kDLldj954C2l6BJZqC6kTa05L3lra+ZyCTFiJMzvnffbj1nierP8eLzyDEgG2I9GESHdSHiD8nuOjyDyQlaHNeyXAlmiBTt8OGrI2seEGEsVHgGz9HxVe6pZy/mITxWQuWoP1MqNTNj9io/3BwA0zSck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVGCqPcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVGCqPcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4030C19422
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762978193;
	bh=XEkbNP5UgwIpxoPOn66wsBji7BrX9eF5mJiooD//JQU=;
	h=To:Subject:From:Date:From;
	b=NVGCqPcCxpVkjNZyHJQayoVtaDwZ1uwjFz6ElUYLFSyPLmVSsBlw2g2LWCk0WraaA
	 RXI1mo9YOh3h0hG47CL6J9ZNo4uov/PhUSjNXUSiHiQ4yxQwCU5QIjGHFQNgMboRth
	 CFFcVlXv8fLFj0slIfO0CDRJZJO0KjaJWNPB+Dn5Kcx0+rpoAi4A1VdXiphbJwKdOG
	 4ZztnsqK6xWLWswIiBaq9g5USLAjlqh5I+aRSGr+3qUZphFZD1cA3fFOq/DYatKd9/
	 96HjhK/Vbr9CdKtCxGYiu5iBnuYKmudvKNWYPM6Auc8QHOO83C7MwMMsuuuaUvzJhb
	 wXswNrCzr1zDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A3FCD37BF
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297819358.20989.15753632226652916503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6cb19284fa339af6744fea6596bff7b2e40a199f0a49aa34484151b5ae6e16
Date: Wed, 12 Nov 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762978193
