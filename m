Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EBF286D5D
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755170394; cv=none; b=TwZ5rseosZmxTt6+6/2WiT50WeZqi9p3WXaVYKb/41mirCppE7e9srZHXuW8Cye36Uy1eeACyVQPl8zL6/1u+iKAZosuxvFCcqnbCQ47PsS0PPjgG600mrwXrtLE3GHq34dFDvakAeadcTXW18GZk/k25T6XTyWJNKG+jeQ8V68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755170394; c=relaxed/simple;
	bh=IcD91eVA9EwL5+M/QD31HRvdIie3l1e1n0yibmKnD4M=;
	h=To:Subject:From:Message-Id:Date; b=hXCV+T8ngfAS5zqYpcdimWB9nzIJVGs7SR40gar/BrkefQPcXnK5HPDxO1x1i+spuOJldcx0Bqg/JlVKwEh2PgQLVlOMpp7eDBFm3YStfxOVw7fLVmvDaB/x6URTxD4xTsvaNo5vHqaoE8xyw7cdymECx1++NPCYdCzIqEicFAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mznhf614; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mznhf614"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A121DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755170393;
	bh=IcD91eVA9EwL5+M/QD31HRvdIie3l1e1n0yibmKnD4M=;
	h=To:Subject:From:Date:From;
	b=Mznhf614B9aQkcNqZhEgtwY6yKJY3VlwxdJ6YoKQPSTg2blofpfapv4MwPN2nmRp6
	 MKhlSnBd3AJDIDUP+OBXdTNjFYpkzs3Wh9CErcoscgkWdpiI7atTvbkKuEeyxtcf6Y
	 MkZH8wvtrHGf2xVAnYXaGysi2Kpu7blckEqekKEZzjuxRAxUNhUWXywc+Ggab98uM3
	 Nrbk8V0g1PIPv5t/7BoZXYGVotTMBJjClewYGPjkfN6Uv/4HVJN01oqfcX5FpoR3cn
	 uIudbG0eJ4LAXK+/R0TKDWiwRhyScdCJ+QqanAmk9ccydzIkI7NTrzcaWyFua/cIZx
	 X/fWGZ3R5QTsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B2CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517039357.19026.15202189997481286636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03b093a76161823e22136e59158eac0409c88f781f11a0ca242205c3f5934fe
Date: Thu, 14 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755170393
