Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B4C20897A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736886354; cv=none; b=T6rtiTaZWL9NhGGDpwrof4KJDvNP+9R6K/oLgbEWTWs+N13ei2ikB+FKOZVMeFJCCabgFaVVOfWkag1d0+eCNG7q0vdWAqRAmVgOXdudNJr3qtPexSZpbZ7BG68mxY3cmRuGVBBmbSyPohNB8Kc+1bH1jr2NClDDLWAatnhRutc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736886354; c=relaxed/simple;
	bh=I1stm7OdDS0AZ0GLyflHJdEia+9KxY8sFd5ETsPl6xA=;
	h=To:Subject:From:Message-Id:Date; b=en2bf4pG5nlCf+QFoJrwm4a4jpyNIloTsqjUGYCm6HgA9fvre4ZOqToMG87aGyyUmhQUMTuwwb6JlFsyOFq5slV65FQtRM60iepCLfPiUwvKGBsc3FJtYZPB2l91TxXqvq+lFG0leFFqiuK19HDD9AZ2Wc9LlOsoKsMiO8v2Lco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oz/W0Nk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oz/W0Nk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC269C4CEE0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736886353;
	bh=I1stm7OdDS0AZ0GLyflHJdEia+9KxY8sFd5ETsPl6xA=;
	h=To:Subject:From:Date:From;
	b=Oz/W0Nk2TbKQ5YO+Qd/88W+uShfxSJ38y59iPCUG1axmHcvcqV4ztouLBefQCLRmN
	 k0Fr8Z9hySkEZ2NWnYf9g7Wuk0w9Ujtr8zkX0C2ev2j2eQSb3dbcGlcrILUSOLNk5Z
	 7afH81DX1WqtFjueX1GHu1qP/k+G73IamWImEoBup0YEUegyTusg0YX2IGsJkt0fZm
	 xSiDjwhcaiVi1faP8DEU7zj70HRLTjEvLZTteLx7MqRIlcRtkZ5WxYWqzBA0yUNNX6
	 8B6iad9ZasXv6OEgHBhbwkxn/HnvzQR0YHonwefK7zTvHDmO4eYCYX2Yw/u60ErBOj
	 +TeZxw1w0jstQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9414CC02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688635359.8129.4709166217884838599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c813b7b89fb3669961336518a9144842d57e3b7654153626a5d6d9105ab1eae0
Date: Tue, 14 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736886353
