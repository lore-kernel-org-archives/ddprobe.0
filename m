Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3648214A82
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751856594; cv=none; b=djUYGNIjbye+frj+n23zfqJBRJUiX6SmI+LtWsb2x0+VFZPdeEjubmkNpQoJ9/7mazV3UP7tgetXHR3QltYzIjV2GXwGy/Vx9oMU3CR1T8KYb+L1Xyyqp8x809InMfoIEQTChpf13PVOBOUPlxDc0bBmn5uw0oeNUHHiRXJojug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751856594; c=relaxed/simple;
	bh=yJYTCIyHSzNX72emYCD2KOaIeL4jcdBzRlRSSSgi1qo=;
	h=To:Subject:From:Message-Id:Date; b=PoTYo+VV5+6sG8gFNESdNznlIl+X+iFOI7dyIWzwCwFe+t+jN2kBd+AC4u+iD1u9njTKrMjKQgc1Jz4V3ferRq23GyQ08YX5aA5ufch/bgaTKj5STOwJD9e4kKkk9pjbtMqu0Jw472Vnb8NboJnG/CrgEFL196oijbCCY3GbiiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrrY/mwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrrY/mwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB10C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751856593;
	bh=yJYTCIyHSzNX72emYCD2KOaIeL4jcdBzRlRSSSgi1qo=;
	h=To:Subject:From:Date:From;
	b=mrrY/mwegxManYX/XutQCe8cUPF8KGjkZjY31vZe7T+e+wQvyfhscn3t1eAe3OfbK
	 j1Wu369vgZqJsYCVzi6bEnDhwEvDEM1nwKjANvLE/b4nZuCE8OORkDego4427CinJA
	 2k2wAUiblSLlg/26obGH2ghy/v3b16fmyv0zgmd97+e+BxAItQ3S1Ed5mu834lZ0N7
	 EugwVgbbMLnpcvzoB/fNjH3iuORJSL5xAwGsEmxDeZdSspZIiCwJ9emiLR6p9oLr6v
	 t92cMYrPJYV6T6cI3my35p940j096u33rzF7AM8tuQb7OPzDsaR1nlSpogitczkm6y
	 2z+pFOgHMXm5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E753C83F03
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185659357.7258.642078258107844317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0ecc840e414342d0ee8f539cc9bd7e5ba062df7d502bb2a43abf0c3e6e68c3
Date: Mon, 07 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751856593
