Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBC2149C6F
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764301974; cv=none; b=X82vXX1ccHni+n2EtBWymXmgo+clm5iZ2Oqz/OMOkHw8KcyGz/c65Flcrt5OedPwGjh0KpnAiY79bnfxzbnTr0S//dYWO6SfeJSCnIDuLf3KNwDtkpxiinkO5hxgH9KWOcaT01t7T7ss+0cspiKW0OojEZfCIcSprgQvLjil1bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764301974; c=relaxed/simple;
	bh=aMB34fTiBfTBpCDxyCVuv/enKyIoCZWUWDcDZfAJU/s=;
	h=To:Subject:From:Message-Id:Date; b=phbzpngfF0MQ84/28bZIOLw3MYWcY/V3s04Q0TJupkMQag4jJY1I7ng3Vh2JnKaJ3PFzNdJbT/dnLIq/fPbuZWmN0y2pPZZWb+49iVx3+PZN24M0e3peenYT99obX2C0I48wJTTNXEd2Ppoy4kKPMhVw7ICfls78O13ptdhUEMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jw3KvVR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jw3KvVR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DE9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764301973;
	bh=aMB34fTiBfTBpCDxyCVuv/enKyIoCZWUWDcDZfAJU/s=;
	h=To:Subject:From:Date:From;
	b=Jw3KvVR0DCjdBAMp+rT4QZPSEH3uDx+dU0Il1i/ywLg9nE5+xceuwJhXD61qmPxiJ
	 naXkmK+Tj/an6s8IDY6KHre6iba9JzNOL25l+JEtUWnYHvSk1frR8JRr93uCUpxEd8
	 ukG6cUfvAcn+iNKCOeuY3np8Mh/bk2/jjUEXegL9OHVTGt4r8TdDo288zbPnx9tQ1/
	 E4eR1ULeyirKQH2aizTgcfhHlCzIIjslldaNJk9uQgF2fqVp5j1ZtCnuCyJXE/VWvb
	 BFQZ+Jc/HXPePBDupsBCq+quWlmqplF5KTR9bXPrSUYzJveVNtHwjJK8e9Oe09Qfd2
	 s+Itd8ox4pMzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93491D116F1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430197359.18580.12067882814186060125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a2083965d5762bd78a237343b8cdeae61f75a8d0990a6c9b6c0a97c4258c5b
Date: Fri, 28 Nov 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764301973
