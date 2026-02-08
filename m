Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1987C15539A
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770555234; cv=none; b=X+lGkhQjomqdmnyLipA/9ZWIZRsKGoxW3dePej7QhnUz4fq0F5DVKMdQ0bTPtCKcADFiqTHajU7zVazQA4ZHMSFt/9EQ8PFXlJECOQtGiWD9uuYbDkLw6vgyf5IlVpkGbH7OlpOzIq2UuFCtzNHW3K8bNrZcCyLpbCRGV1eq290=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770555234; c=relaxed/simple;
	bh=RwcdQ89NSp5XDxHHaC28yri10UT+9DU4WZflIQ2FBkg=;
	h=To:Subject:From:Message-Id:Date; b=OrGvosB6IW+NoA0lCAVrJR4T4ypXcrUz2w45lE5c4kxrwjkcDaCFTpflUWoyL2u/7sqSzwiGLSzrV46wwGnusd/ikaOKTEsW7TYeT/OWVzRxGGnFF9bFkUcZv0UT22trf6iQl8933SPStojWoACZoEV68J1vrPTXeO75JbFSPyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jki/5Wg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jki/5Wg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF085C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770555233;
	bh=RwcdQ89NSp5XDxHHaC28yri10UT+9DU4WZflIQ2FBkg=;
	h=To:Subject:From:Date:From;
	b=Jki/5Wg8RYX7rMPy3tZj+KMnj32ckVk45jE7pf4hkK+gZQUL3KN3/Epoupnqg90EQ
	 2mkxMD+LMwQumxIusQ4I2UTJqNBKakZOYWHeCjD03IrrR+Y91QaoTh+CaNgUv9iCTu
	 cUIMpLhmf23WN0Xk/zvkW/jcNoHMxhtxNqtg8wvdNcxCA2VQGOx94nuMV73RnYIZvx
	 NlwEuXKyo1Wjh7ptqorXJHQuRt1CkoPUcoCTIK7x5dNjLByztLfnhTOQuOsknnH//5
	 yrVw18HQ/Jx1fbhXcfQe7H83svgMlraJKcZVVzJyVKZWRhTbYELnah6AQOwbi2CroU
	 QTYZCRxXcKwng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98561EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055523359.16410.5604969716577587163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc4f49e44cc5afb2cc877e0a77889c42d9ece4acc15ab27177a4868b22a77d7
Date: Sun, 08 Feb 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770555233
