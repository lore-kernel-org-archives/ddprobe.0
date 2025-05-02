Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379D4242D95
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746192594; cv=none; b=uiP5M9PstbSk4sTLcf57lFLDSXjdtQEohqlfA7gdX48gbhZj5gCCHa2GZCKxVY1isCP7irdyHcmKu4neVYLgnPVs7jpJZQCEi7cmVvut5iM3x7+Pj88vQXCBrl4ZlViyRB/lYdbGfm8esnbXMuK+TJBkpfwYEtiMaT0hvpdhzCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746192594; c=relaxed/simple;
	bh=CNvH8SuLqVnYacNWSM4h0HJXBmQErF86MqHFHu6Vv40=;
	h=To:Subject:From:Message-Id:Date; b=ZWOOgL9v0nGdGuxooeGjzwmCGB6e0cyOelq1vDCwYfOhM+wVzk/LQTEOeUJeloW+974erkXFThmFJWkHZiLsuPwtqSV4XEp3NTLoqbP5VhRPWDaAwQla05l8wybHaHRDQECokbJ2bBdc4xcV7QTbOUTGwvTMfe8Yf6tb7A59wA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sh2MUixA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sh2MUixA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F686C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746192593;
	bh=CNvH8SuLqVnYacNWSM4h0HJXBmQErF86MqHFHu6Vv40=;
	h=To:Subject:From:Date:From;
	b=sh2MUixArAhS55QxhXGXDbAp76bwFEpeFDicHfAApFk7evVh6ZAIT5LmyMojtzwNw
	 vE0H+IbQ2DsQavIsNqwvK1GKDXplOJOiJmr5VKWRVElCpkI0iEcWbOl/VM7SHiTx0m
	 SuRZyK4C1HAJCNNCZuUqATz+r7FTndqayTaVAyguZb8Zc+bgp7w7ErO64Ber99kb53
	 p535J0Kkt3RjPVlzmDZW1iGIoX+vAksX24dVZAoXJSaw0NUqVrs32UYkCs/J08cPpe
	 NufdpbilyPNdiBGt6PY1yzJD4GdVA3AdsZqLFDPq7clq/KEbv9ZlofIsYux+VvcM1p
	 SccystOwKcWiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE4C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619259358.1249.15816942530263224975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbdb757a2db626c0c8cd4e444171191c472c35ac834b44591cc20f6b8b7738b6
Date: Fri, 02 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746192593
