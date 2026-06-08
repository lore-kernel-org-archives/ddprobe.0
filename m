Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B1E372ED2
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780920274; cv=none; b=uRpLaWT3rXLnME5Nzw+Gng5JFHKpVovDLRuffYCcM1hzXR9BUsjOaxDLyvSZT79+vmDfkiAC4pedDWnW9lh3b7asF9nJo/qXRlYstxF82qZFgGkRpdNk8T2wGUodn/pxsnMifn2Ec3H+2D4QY1J5qRsVLgu2GaZFMgt27YIxGwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780920274; c=relaxed/simple;
	bh=MwoQ6rC6Qt1yDZIERPyqKyMD3lMKzzlwjZMHgrDMs8A=;
	h=To:Subject:From:Message-Id:Date; b=ZwOr0uPXA3EohzNl0jDKz0l3nZUlUol/j1Wdk/3MGJL5iBo5aiJa3itHg2ptVwXa8mrUBRQhGTm4ezWYQS5EVfQmHREUD6ZTEGHHEXaxNvel0fopox288L/YRaTiTlVpzJGjHls1/eyTjHy9aJ60Aib9SZFnmjp+mY10TidgeQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDJmMOYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDJmMOYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C465BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780920273;
	bh=MwoQ6rC6Qt1yDZIERPyqKyMD3lMKzzlwjZMHgrDMs8A=;
	h=To:Subject:From:Date:From;
	b=bDJmMOYpCk31UHx8f9SiP05A5HVRpZzXRWohcnpDq7KbgLZHHwbogMqIWt4qpy4J7
	 6pSn9ZpgFo62TdexLczrtXwS0yQfXuJv98XE7KW3raWSSbWV7F22yNkcBckh19cAc5
	 g0ksPLTmE7Gb/tCuUuRMaG7ugSkSWzKjp9e/6GdJ2TCyggFSkk/RPgn0UxwUbHqvwa
	 Oz32e4oWxmuSihJSla3u3M9jVGEZQy1HMDPSN03/9h3o+k1V8w84Td+/KpftssZZsO
	 Zfq2EkEDDhhNj3f0+XwYiE3k/zrTxBpbFLrl5sOALD/HvL/0XYRVdchRWpxMG+T3LZ
	 bD9DwoWd7hEHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF5CD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092027368.11591.18153185046065221784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f7ef7ba0cd261552fbf884724b03a2a15ba43de67747fd73c2f4e70263f8ca
Date: Mon, 08 Jun 2026 12:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780920273
