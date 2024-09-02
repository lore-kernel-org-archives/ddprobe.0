Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C8F15665E
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725262554; cv=none; b=E4qvhgja9Lp/PTXsywokZ8Nig4xnjV5fcIPHLs0+NBz1PdvhADm8i8s/8QY6dXCdI0vEBvMPdho1K+wvk7bOs6QZ44b+I/MGUW45WJEHddIZdfdQz0mvzGP1u9XZm7lBtES1YAt8xo+TrzCqTAw+65ObAFEALk0DOORJJOiTQc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725262554; c=relaxed/simple;
	bh=EMKuA8W0ygH5whfVGDiPxripAwbfX6tx9lrGcCxfqKg=;
	h=To:Subject:From:Message-Id:Date; b=RenqxTd6oDiS6PvthqpP5vwcodnS7iBGrQR+dTZNaKswDiYrrpl1cEkMcnBMbGgWkLV/OgSb2cdg6ikQaIWs4gk0PNaaOCq/qorvkH9xAgYKpjvzqUxL9oeUzER5L+tCyTdF6wbtOdH6nPSgA0JGsxgfEoLjhTelcKOHhzIG3Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XREs2kiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XREs2kiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AA5C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725262553;
	bh=EMKuA8W0ygH5whfVGDiPxripAwbfX6tx9lrGcCxfqKg=;
	h=To:Subject:From:Date:From;
	b=XREs2kizjpgwruN2eB9Nymr2DY/bL3kM68wY+bh17y38RDmKsiy9jlQd4bx7IiPp1
	 NhXU8T3TFjTWXmr6XWt6CMM+jbLTqRoSHKOqNj+1JB+NenC0NF4SQBWGliHUElZ4F8
	 +p47BPWM6UXQP3qGh/8Ct3t44s5J3x7poWybFpuqy5u28+J0lHpSypXmnEwI9Moxyv
	 WCPkUe4YTaH8ytLKYWimlr+9w5Jpq4K9h4F/1Yd0YZd/9ZNKc1zE4nAms3uzfpjIC9
	 Vo+Gk27b0ddYmr8cmdKghcCQ/0ZNumujiN6y5z7ykwN/fmxF7Q3UnRiangkkSMdSfE
	 NdR9ZKMfiNEfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F72CA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172526255358.2766.15604169740514470882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9d61516ca2faacd1ea02fc17fae25559913df4c701f4ce330586d8816b394a
Date: Mon, 02 Sep 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725262553
