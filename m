Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC252B9BA
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771790094; cv=none; b=mYhTVJStsX347mHXCel5/42VgxdHHnO+uklHvu1PObQFdmtfMQBxjhK2S9r2zDdc06fK+e9ZdNVFeXHYXr3vUkub2lvUFH/SFDHm+ZX4EzK1ziAqERoG2TUCXZPyi0fWkmUrvC/1fQPDP6OfUZ7fTtnrobuxjMdqfW1AICPRcJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771790094; c=relaxed/simple;
	bh=yAEiuu6zjQbMn+mfAozaR+Pyn+KiUEKSR8aOyD8ktns=;
	h=To:Subject:From:Message-Id:Date; b=BiI3ImfnzaSdPkqG0mRg7lUVy3lOuGwyCQgbDP5RrhUe6urCxgU8MQgYkFuo0sMSiwI/BQFQatUHL3Q+o0Nwb11ty2Dx3AEIPK10wD9oIMkvr/sl9Uvk76ILCp6BFmj3pSoCr033zywOU2hecVxyhV7Mjq7Ddh6axb8HuXWiBOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khF0iF0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khF0iF0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC82C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771790093;
	bh=yAEiuu6zjQbMn+mfAozaR+Pyn+KiUEKSR8aOyD8ktns=;
	h=To:Subject:From:Date:From;
	b=khF0iF0cxJ54HdlNMFOGdMtq5oHscRZy/DQB4sI0+UZ/fdeLvMHC6Kn71PxizNxwf
	 ZZvwaBLdlOnudJz3JG5gKQIy1rkvJVyXYiD1L+ZdJu3iSz3FUjTFFf10E+bbCCujfK
	 90X9cUQu6swfs7c3rLiSHUTMfnrdoOup7w3kIY/+zzSN89/FWzClWKzkjMrBHiSMbX
	 /LrxDjdfKWVok7giNwI2bqlUhAPCy4TFGhjV8/zG2RxSMNOb2CLpkNyjkkV84nae78
	 KPneg+G/YthSMlA++z8tjKmXgh/GiadOB4vgf9RcyGP4OJqgmOcSedNjaLn3ZneTs3
	 xRonr2LMWe/5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9732AC636B3
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179009358.15081.6954145410618669829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b1c2a6333d3eb5e90e8f9b75d4c1ba172601f333faa944db033fd0e7c22941
Date: Sun, 22 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771790093
