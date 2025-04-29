Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389322AEE1
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745896194; cv=none; b=a8ekZsHd/pFfCZAw8JST0+waSIoL7+iG0PV9mxLwKYzmj8yQECTe1/F3o23N94IHh5BnzQOebggfiw1obVkYX3JdoSc4/NsksBUT+VyuHUHWXfUoAlvgHX44MD7HZyc7ogBbdA5zAAAxeez97psRB2JU1T9p12pHQ+3FSSFHoL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745896194; c=relaxed/simple;
	bh=WSR7HHCcw81xvPkeX3+Lj/VC9VvSYDvjktgGzNd3Enk=;
	h=To:Subject:From:Message-Id:Date; b=a7E7EwSxTP4NhqcoGaTjrfxWSMkjXl7HvRg1rIbKExnizrBNXIaN53XR/owUp/2o9LTb7G9GxZ9Xo4OvjqkiBXSlshVBK2WyhD+9wFiUGNaAtN/dEbn4L4b5zSIqK+SJYMXH/JweB7rz/rKx6bNA6b0mdLbZETBWI7E9up2X9ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOXpTq0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOXpTq0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEE5C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745896193;
	bh=WSR7HHCcw81xvPkeX3+Lj/VC9VvSYDvjktgGzNd3Enk=;
	h=To:Subject:From:Date:From;
	b=qOXpTq0Z+4xw79lYFRexY/3FMmQLLwvxyV4ni+nQYY+PiIt3N0IJczbvG0Wa+c3kJ
	 iylnTAhidIcYtF6U2AN5aXt2JIKUMd45KS67LeF/JJD1fG8LL4oEj3wkGuoImgaC8I
	 3lhq0m15v1ENDcucEFR1mx/5SoZcjqMe0UkxMDgEKAPOuEOvluseAQLXSb8CJy60I/
	 1YafYUxq0uvGkUhK27pRzHSlKtLnjoB1F1n7mA++jJe/D9eLQA+2Ggm+xx1qmABB+c
	 yWXfZTAiVYM9dMlngdfU+vFVJ4kNIreSTMDbYxUQARbg1SsVLQUsdsdN8BzbamOcXL
	 NfAjFRx8rIqrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F804C369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174589619357.13506.6722816923842938559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec8d1c866719a164c93862cdd842d142c16ef10a80437cdd4b80511f971fd09
Date: Tue, 29 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745896193
