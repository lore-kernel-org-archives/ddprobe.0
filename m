Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098D23B95F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773113694; cv=none; b=n94qiRL7Ro/6pZvyHDIR1aLpnEx32ucXUWOX0c+DRsoxU2KOIrJ5Et/EoiusFzfp2ehrUf7Etg+DosPcbkPqtsfLzFG/vay0jKatfAjP879M8PnAqS24uJ78nuXIbYr3Y4K5WxdWR1msvz2vV5jtNd8JnD6bbJaO8yzQz3nZG1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773113694; c=relaxed/simple;
	bh=9QKa75WY/fpZji833TBHPgyLbJjcREE/ceDp2ID/+XI=;
	h=To:Subject:From:Message-Id:Date; b=fcedeEaOT2qPDWvGGoNi8EgO0RAytLkQL9vvptgizoR8loMbexteC7yhaJeQW5IpAs4yRxcrDBkI0QeXNSHtsq7eWs0VeAn2JkRroIY69dDvXhApkfaFvWtO2VU+hDWTKk6ZtM6uoY+KtoWIyd1b+HUt44Yo8iJh8BptMI1kpHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USEllUb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USEllUb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC42AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773113693;
	bh=9QKa75WY/fpZji833TBHPgyLbJjcREE/ceDp2ID/+XI=;
	h=To:Subject:From:Date:From;
	b=USEllUb85Us6daSeDAW03olmfWCaiJ4+C5+1JS2DWDg6SLkJFO34xVFnk2pNEpnYD
	 DC5zBNE0p185b7bbEzKT+FJgSeCDcz+Kd3u03Gw/ysDXvS6wc3HqdWyaRqw2wdqUPv
	 JMArnETbS1YFFhnvdY00O7ej2gx2s3bAiEx9ZFeT/HfsI53u29HU1IOCB2+sghHOaN
	 OCE+epzLi7hHE2SKCXgF3ahJXBzAFBIETZl9qbwxDVwPc0X7HHpoZzFi1DL4vYiaPB
	 jwcbxO5pWtije9bJYzNVLCCLzsU1zU5Bi1KTRcYsrLTUbmSKYXSTWEEeb4KOy28Hh7
	 fPyLD6z/w3njw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9866CFCC9AF
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311369361.2228.5128194810021101565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c94e04291ca2113f00df16d7f611d66aec0c52dcb6caa6c605f1b788048c2bc
Date: Tue, 10 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773113693
