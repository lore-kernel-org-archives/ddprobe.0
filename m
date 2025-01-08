Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F7D19EEBF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736380554; cv=none; b=kO2r9Bt70mOo7Z/hd5cmQYlgdlHsA6t6BORMrJxKYZVK5xnHLe035JYarZLAkfBp1B3EaRwcylkBRgmQNpVc98wr2ypVJlDf6b7p23dDkYaU/6t/qYBy1REOBeaf57UcEZPYCR9ctxX+WGtRi66R86jZDLVsmiMwEDM3a5MQow8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736380554; c=relaxed/simple;
	bh=rZm3siLJJr1d89VjJA5IutlBkotF+WleR6EDWwy+NWQ=;
	h=To:Subject:From:Message-Id:Date; b=hAV1NR3Oql7ltbiwU4TORSi69hHx6QU7DgYP2jIwgsqgueCfC7L41EigKa+jrzeTWp1LtVnl3T2LoQrDdYnIE6O9aG4V/QGtRgyC5jHZ+f4FlUmgLAhnfQ9Ioq9+1DwM5YK9JRkRdX38K8xbqPdnu54vGDnew72WdeN7bWbIPA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJY6GLsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJY6GLsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E64C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736380553;
	bh=rZm3siLJJr1d89VjJA5IutlBkotF+WleR6EDWwy+NWQ=;
	h=To:Subject:From:Date:From;
	b=uJY6GLsc9x4lNVG2UNkA6edCBc2H2ctkmVBS9ii94gpdQZagHHKVBpsaoaywhkrh+
	 Y3QONhk/KkB62j0ymyIytlQAER1M8ySbO8sk7wurPX2IsFSqUTpZZx5iQloUmAbXtd
	 O8hoatE0xpCcchNpQj5xKMqY5dC7f+IdrV1moEYY6siue6yun5NfI9xH68LnqK1MUh
	 AQHxf3AKi8wbVNbKpVmSQzqjnoGKXrT78F7Ze6MW02e8c5mmsawK65fglvR4yI16Vw
	 pYrkRXxtpGm+/MuOFdcflE9JNrT+U2bAFYUIct1bIYd21SjzHMW4igyEkabDjSg732
	 OScHhqHiccdAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C2CE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173638055359.15768.3111941355370002675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84614a3d34ee725650b3bf9fe9eb2ac3e43a6623d33108a3c9d35bf93f0b811d
Date: Wed, 08 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736380553
