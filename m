Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56175B653
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 03:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715658743; cv=none; b=dX+xQ55nd8Kg0IYbeEoeN9NTHwgk+DQhL2izR0XtVfq3BxPBquAd3fnZwbTZ/LmdhMg/OviQp4na/CujZyksku0kVI0ljY7Sx91D91wKvJh1MrphLiIxwk77yP0SM1XsT+F0hQTvI3Pw1ZnAfCheMYiEVCRwqnTRVh0JByw0Kwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715658743; c=relaxed/simple;
	bh=xws6WqWiCYapQEcN/xETBH8BX7dmwB0Ha3xil3u5z6I=;
	h=To:Subject:From:Message-Id:Date; b=WH49/Rz2vEepqP35jjWAHDnEOZ2ojcEWqbU+5oZ2HctDft2Zz2kzGV/Q6IXjGeyddsRUCkBVF1KEdmoqS1iwJy+bnhl1XEL1jy0WX5j8Q2bsOrPYLRkkN2BBGe8+v5gqluduZHAMyrrK0vkC+W/JMc9DsX0gcokdMzqOpeDwap0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MczwRYTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MczwRYTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD133C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715658742;
	bh=xws6WqWiCYapQEcN/xETBH8BX7dmwB0Ha3xil3u5z6I=;
	h=To:Subject:From:Date:From;
	b=MczwRYTZ+VeNLwLPecpr65gvZXQriqGb1KJuprbHs175o6WeUbx0T4FVWhybYmOKS
	 lsvEELp7jE7Z+V1QAcqq6mp6VnrTQL7c2okfYun8SmX7SL8HsD3uaX1aWNCnWguhPF
	 KjutC3bvwLP4fnPfWcQjZnVmU8cnbuHTSJ3+GW6i/bgoZ6E8ut4Cw330MmfsgjyTFK
	 dJK2YiU8UEP53NKCvybvkzMNdzFASFkFc4fCdG5n4p8V5UitcLavLxca6DmA8Cytp4
	 I0K5wLHzzUyxd86fVi7FdAr90x/KBBDxKf4fSl1v/lcEkGqYaPkXgoqm/NZI3JB4nj
	 FmXSia+C54WBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E96C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171565874279.15523.14104894087728624334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd920f251399724a08127a636b07e72b83c044d931368924497cfaa540cd604
Date: Tue, 14 May 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715658742
