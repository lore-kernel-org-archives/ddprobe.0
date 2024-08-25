Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F163372
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724547954; cv=none; b=AJ3PUp9Xlb7Y6kYZp4fJH9w00bEdDrsxKu2gPMTGOA4GVuqPV5mt2g5cHRr+U/pmUS7G06PBWwmb3cNDKprmd3E4pr/i9iS7iSTDv55hycmU1TkLUxjUKuCoTaU2084hOzQYCE6x6UfMR5y5Hl46QWnDf1HamPM4UXD9oIm9a5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724547954; c=relaxed/simple;
	bh=WQ/7OxNB6P0dodChMEwqjepvYav1gnZhFoIpE6c+VEE=;
	h=To:Subject:From:Message-Id:Date; b=ZBtFyJ5MTO6su9N0ejLfQMO/UhaMJjOHWA6vMW5lgY+72+IYwfFlKlpVtgkZcbmmG5Djt4/iU4Q4+8XhSkzcTDSd5NdkRP/YuTWwZw0nF7PxOc7W8u/3TXp1IoyypDyIg5EYRIlqw/EohndP5fd2hKuT3wmrAnT1+S+73ZgalQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csXEMB2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csXEMB2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4F6C32781
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724547953;
	bh=WQ/7OxNB6P0dodChMEwqjepvYav1gnZhFoIpE6c+VEE=;
	h=To:Subject:From:Date:From;
	b=csXEMB2VhytxE4CFfjEVqmC3LWYp3eNIrjli2w1XOReIw6KWyBwW4aMR76bV8cMtZ
	 hNWu/jTVhAiZt9Is2ETdxsYp41oHuIyAztoPkmfxL5hYp9+RUuiLROjmdxCvZ/orwx
	 gFmgqj+f379vAJt3lW2rajUt91PPvbkufAMAOzYzbyGD92iLzqBbWuY7yd8LMGmbmr
	 nFUixcOQURoWQq6eWew9POHXf9ifFhGEwzZrXbtbGza8uvPt+2EskZMyUMDh4DOGGG
	 TeIW5n6ismydlLnadeNWOZ2ej0HIYRoem1xMeZnB5aCazos+t9IOPrjLvgz81lo5wp
	 YOI5jsDR2UhTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99799C52D6F
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172454795359.30997.9971990322746209845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5060aed7bde8827f9ab054a7fb2cb4a46b25eea5e7bafb11daa7b490c4b09532
Date: Sun, 25 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724547953
