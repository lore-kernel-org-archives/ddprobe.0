Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302A7256E
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733508954; cv=none; b=nuruyTTu/eiKuuNpJNvaxXKx7+xl3t8g2tApytOxnX2obCxzInJwn7qHxMNCoehGVKxRPGYn+gKPOgb8unEn1sTImwwIDxNgqZYvwLgUR95vyxzy+O/P2Ga/Ks238oxdvl8xfAm5UZOJyeaLbGi5hTTVupHqmU+iajgnSyBRak8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733508954; c=relaxed/simple;
	bh=RHJY3BgCct1M43QbTVjIrFK8dwUqP1BIixIVSFmyQPk=;
	h=To:Subject:From:Message-Id:Date; b=gHlNRGPnwDjPExToC/zHnORdhX5o2JGB3iXzKCn73mKnzdSbeMyTNLdvRv7cb/5xbdmk2DpVPGy0+ZKXhDPug+shZK7EASUaP3f0W14QdenjEDoVGQiQ0eBw+ECUCH4u/5hgUUl6jcDARZNObzlWH6OF8P6KqzcPqVYoivC5xjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+1H9dMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+1H9dMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C02C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733508953;
	bh=RHJY3BgCct1M43QbTVjIrFK8dwUqP1BIixIVSFmyQPk=;
	h=To:Subject:From:Date:From;
	b=A+1H9dMV+wcknuwYFgfsNZ6pYtb+mV4gJJzkknWNIFPpqPKCXq5HUmb3TKlMRKjlr
	 9XS2fnwsM01ug8JOf92oRQ5rcd8zrNVmAj415oh9yqoQDKjoA9GtCMoGNSvz6vyUjb
	 JD313u/WCqySVpMoQvte4mebgTeWNDzHI1bGy0vQTJjA170vPMoXetEWS2OULe2Pij
	 RnJQV4QuuXD2zHJ08HHy/Jidhi0gbiobkwKg0iYWjTcVIUN8zZPlBD+zrm7UV8KiQD
	 OXJdH8ydcBbIhstCGkm5jaeaxU+d+ncQma5kTGcKKTbbs4htDUZzNHVEBdMPxCuTVB
	 EcErJpVxItWTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92362E77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173350895358.5931.2738276912609261428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b079e7c477fb874ee04a23743a1801444d9065f46f10fcbfde4bb9585dd83a0
Date: Fri, 06 Dec 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733508953
