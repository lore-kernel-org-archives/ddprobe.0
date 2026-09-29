Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235542FB0B2
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790646034; cv=none; b=o09G/8bacA6WaIRrCL63b9XE0Ckw5KwTD7AjpFF9dePo6hZRKtRDGESd/9g4ZTXYGEvH1GzSZDrBcp+I9YU2fXTSNBZbiQ4miupSYJB004NgdcP8pw0LHZgI3tUBitLCkEK0LaYM1mjne5fvB/YUaeXeto9oJAxddPcXRcIMMRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790646034; c=relaxed/simple;
	bh=58BmLRfUK57OV3fSX3i7kviPbK10QuBXqfH81NiXPeQ=;
	h=To:Subject:From:Message-Id:Date; b=iqgeuFA67ZyZJspyJ2wrvO8Iy/MAWx4E7P5hD/hEVdc2QizZ8mn7m4shMdh7N7nk8PlZel7kGJYw6hRPoaeINypT5z2FsXO2/ybgDhO7DZFYg7pBZQ5uV0TGGrzPLxJQyCiQ43gev9P6e+AoyBslswBGT2wqQ860f6Grrfv6k9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0+g3zZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0+g3zZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5E5C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790646033;
	bh=58BmLRfUK57OV3fSX3i7kviPbK10QuBXqfH81NiXPeQ=;
	h=To:Subject:From:Date:From;
	b=e0+g3zZ0MBDXIZf0pjGxZjRstzsMKOBHM3xuawPgFwExzC6sASiYlEIwfqpc/6iDj
	 4wwW5aCU6toeVHro92bdFvTOiqz0oFqP2TNYGn3dMtL+gU5EoTiBvI2uwRtCkTAXwc
	 S5BhPewlnOnStVklXFZvZQij79NdeAnN2hHszqlnBJ62XDeGhL7CWvD2t9JChRi6hT
	 yocaJ0QRRSAvgnfXU5a6Y9adOSHnWBl8wEYnPcrRjGWm0rm45PWsFlskp9bsnLtoKF
	 +qR0k44kbkAVMVhPvE0fQkbzyRRYAIEkoFE7UqRksPdLBlVBQBN14Grp5qJAouPnuL
	 qhAFJ4jXeCjbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB667CA5FAB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064603369.22458.4150371115989105318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f363f8bdf6ea4f25cc6339bbbfeb8221c5f4b9429e61cf9da0912e49e00198a
Date: Tue, 29 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790646033
