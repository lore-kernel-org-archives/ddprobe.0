Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C23440BCD3
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781098534; cv=none; b=gtccC2g+uGkaIFDrX6ihXaf+EoF8KXVVSpCTUWPWw62hHZcfOL/g0vRmgDOAO+DlT8Y+y/03hcRUon/xNwps28y0cSkSSVAvXFmIf5uNjTDbj6Wlu1QqCDRYb60avIFKbXMBLyujT13wYricWYHQH9FS9VB07Q7VVXO2ly7op/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781098534; c=relaxed/simple;
	bh=dUvpE7Ba37uO7xn7Y/mbd9wSqSbyJuuXlZRCfcX7bZc=;
	h=To:Subject:From:Message-Id:Date; b=gwNXct8RdZ/4KxB8Me/hd0duNEboi7dUXIIHy//GUcz/FjPIoeZMewNs24kaOuIKQwU1Jrq96VM7mxxClFp4xtdBql1RiatQm+RPH/ML5GxMtUnnbS+mhX1o6UoXrj/v5RHDbkRryGPeRu5WDMdoCcAio5EtnYDLiYVx31rOLhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uz1lNEoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uz1lNEoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50A2C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781098533;
	bh=dUvpE7Ba37uO7xn7Y/mbd9wSqSbyJuuXlZRCfcX7bZc=;
	h=To:Subject:From:Date:From;
	b=Uz1lNEoZmjTbElcaLBJsTWkWHMipWH0qR0l8f4K28UHU1WyWxwbNBHcJAN8Hf4MkL
	 qsiNYARfHp+43dkUWbGE7e2pgApj17dTnZB6lysZypg9ZV79WfHopsqb2uyQZSPLka
	 moDO5fVGE70VBnIkfYNgBjPNf8mKdGFHVSe71oqHfrRK59Kfyk6qtnpEn9q5CKgeqv
	 JMwvKV/QC3QtPn80fVKXRG7rZvDo9aM1yfpSn4wT4kL/ml1hapGTuj6KXW4ERPZh4C
	 /kubZMZO/KOA8Ul33DIjxY4ZYiYgrBsZJC8ZfJavZCNflwFzggQZX+WuYFl3TPGUaZ
	 lRvi8thdXQ62w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB04ECD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109853369.18458.5941768015987430106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54776572fa2fb04d49c233f2c8ffc787a255c5db0f455fa06c3cdd39d5b24387
Date: Wed, 10 Jun 2026 13:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781098533
