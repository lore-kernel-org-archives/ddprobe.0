Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87AC347D94B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784815836; cv=none; b=mQBLnqFyK+cz6ZoIP6lzWuQUvNo4O1/du+Lnw6tQi/VXqXKeaVEMp1yb6TricI3jtvY7r0CtGpI/X7lcpUhxp/4kVx+Sr+lAKrsbshGFdlhE4vg0JcuLkGZSQwaic7OblYl2nnNlnONcqtMmdrHvU7jR34aymPFqt58BUd0d9LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784815836; c=relaxed/simple;
	bh=n4qq4ASkO3SI5wJ1OprE0jtn/xJnOtT0T8eJDFgGKGE=;
	h=To:Subject:From:Message-Id:Date; b=X9md5Pbq75Dnpb7sh+8Rn4XvQ0y12RAbZDNyg0SQFxInUeBwxWTcns6FUhex1T3RjULDTgboHXnnoXZW2T8b4TU1md9Gy+J/sxn7qmQpHJgpWowrz5XfiS2uAb7hq4CxSNBiqoGfkMGutXZ7lF+9KTmYLyalMGJec15n2mHsy98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5DKyjzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5DKyjzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B9FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784815833;
	bh=n4qq4ASkO3SI5wJ1OprE0jtn/xJnOtT0T8eJDFgGKGE=;
	h=To:Subject:From:Date:From;
	b=g5DKyjzX3mLSKaA1dm4ewxzhe/kupQerQjEf4KY1R4tsnf4UOzY3tLDT2fQ9kVh2G
	 7m7+Q2HhU1yJBK0yD+mJJs4MbbcWN9L8DI5g2QQz6fAGhxmVxGHZWz2+3PzkgnMKIZ
	 1T80VohUGSdVMpXltrR6S7r4M/eFPRkGM5vFeS6wp4mN73Xp/tnw3JjJN0TsyUaOhR
	 +6Mfaol/h5D//f7zhbw2VfWdlH5B+od/Lyk6ghMEjP7IIW2tWUAdLO6UtVqaRQRGju
	 QMlCVximj+6eo/D4NpT13ZClM7Ae63UdEfD2SC21HCTkRi3DdxWE4WFIT08YTxXjAH
	 fiGzgNqySc6Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA97C531D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481583369.6257.15016615169351109740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b3137befd90ee2fdf8d68cfcfbb0d8dc010a7b4582b0f8ea5a6ec03091490f
Date: Thu, 23 Jul 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784815833
