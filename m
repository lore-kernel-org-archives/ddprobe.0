Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251B41CD2C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763684514; cv=none; b=Zn7hufRXslzjCWbgqHxAs2g0gOTntHRX2J4ZXNG4WuH3Fy/Vjwmcj9+14Eih9dmHFMK5Cmiz0yRZc6InZEajqbBG5jgCe/bQfdtOnhp4MHXiP7ZqSknw5yQLNeuwftHQEmy4xbaw/PH/xYm1fb2VQN6CUbQQQJf5eLwPKsOC2bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763684514; c=relaxed/simple;
	bh=cjeGfA1COej2XgTDcjjWlYpxd5ACeLohG827SSUthRg=;
	h=To:Subject:From:Message-Id:Date; b=KeT51N9gSVauoqjOxCAwSCd/m0UQbqnLU5CYXNQaXBsTDwNGDIb8iT/wIgiesJSUhkgJPRZJsWhnPiNR+8IH1sXZBOgocmX+nkFEqUF8fNZnOgtlc21ZsSuim+7ulf38c3qK788nHjUiDktfHtNoxfE2aWN/TEJnw7nDz4NsYX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0BUdk33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0BUdk33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2613C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763684513;
	bh=cjeGfA1COej2XgTDcjjWlYpxd5ACeLohG827SSUthRg=;
	h=To:Subject:From:Date:From;
	b=A0BUdk33pipPUFp5KMVGxBPVfPodX5nG9KwzIsma8GTmEz8NR1saSZ2tNzf2/j/aK
	 xSTO/BEsJuPJYTuOM4EPq00aflTME5oWoXY/VynnE3ZUub/vuOsZUFGq/ZzIl1j16Q
	 f4JGhFm4VBmR0RBy49kjmypFqbrMbsXaHB0J3l1kvs+Rfe4w2dWdBH8pHUG7XmWin1
	 cUnavbmfCZNFKFMINw4em5Dg+nrUQYKW+V95HY/zsWLZh0FBAYoakh2oapi6BQgcPj
	 IDVAkGQuKLTwzqaW68tGS98uPOBEGcIHonaWgBM0oV+MctNUAOwtfsEG8/iydsAEix
	 4wqzq2Gj6kI1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92917CFA459
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368451359.28379.1617226773587615290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda61726741b0ff075545f4722b61f4841528d4eca292e4e5ddb710a98a7439d
Date: Fri, 21 Nov 2025 00:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763684513
