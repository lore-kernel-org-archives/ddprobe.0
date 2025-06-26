Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFC3219E0
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750920594; cv=none; b=Wx8wYUeKtblPTIEHzK3VL5d91YiWoRF/QWL6WQeNhOrEiLlUuRrt+7Gi8wDIRq40i68/iEz2o79gY6FOOBbA57xuf9a+c5tnmTIAjmE8zt9QStu3drX6aReHkHxF/O8IkZOQ/kOyNxXMLIVXotmseOaAX+qZWGl/QZK6vwqcXZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750920594; c=relaxed/simple;
	bh=gLvuC9W1GHvOtdp4/3KSe4sSZZ/Z7AawYn3pCU99yHA=;
	h=To:Subject:From:Message-Id:Date; b=gqaqhyG/8MKixJMaXjnjswghl5N0fBRYhMS8VLjR7D0rrd4WbC/gaw9UtGDODi57m9nZcme46k9OZiGC444PxcMN7h6ubEM16S9KQ/X44IKW7JNtK/UTa5Xc47IZPo/ZTZH7wTMqtFXvCFazPJofruxJFyrxJYzHqw0cgkJ33gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0vA24qq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0vA24qq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21A2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750920593;
	bh=gLvuC9W1GHvOtdp4/3KSe4sSZZ/Z7AawYn3pCU99yHA=;
	h=To:Subject:From:Date:From;
	b=V0vA24qqcf4qVOIePfdfsdiRl1J2UCPMhcM3A1LY6o1pCU+OZAjMNWoZTmwkduR4R
	 LkmG4RUAh3DXqXWF/RAO8SeDMBtiVBtBhTCTaWsVnLf5xXJtNFgFYgDD3n2NoQUpYJ
	 WjHDo+HplHAQ6eCXObNKoC8fRtBSNynUfGPUajD6qOGieboFsbYgwpoKYkPKPQ7eBz
	 QJLtr4Uais3JjG73nQo583n0SPSzxOgP1H/NJljFIf9aWZD0jJGf9R1ZD45ELAPEI8
	 tNi3IfEdenNJuOD8P49LZ9FkLVnsbSq814Xz+jt4XV1nD546ot1z19NiJIL/NE9g45
	 93kHtSA20gNng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AA4C7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092059358.17824.5433320679741156648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0dbba0f70ba7c6e80625bd1c59494fcf4ceca2e1b9ba966fb8a7cdc8d8dfcf1
Date: Thu, 26 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750920593
