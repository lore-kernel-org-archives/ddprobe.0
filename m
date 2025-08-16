Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318EE1C5D55
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755326394; cv=none; b=KYkxoJ2ysV9eiylxxLpWZNGphxyPdAuYr2iCqOvcqUiN7vCUBN25OMBynN0pXzY+jr8c7l/N9RTmnDnLv5AevFqYN3PgRxdgnpex8TXR6MWrH/Cz1srMUneayZ6isLfZWkPQTUFqtRTc/ot0OEzV4ghCySiELkzvQBRzCiPFsH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755326394; c=relaxed/simple;
	bh=665xwmDb9xBGb4sALV5fKxTcf+TzB/J8MqQW2zUFRK4=;
	h=To:Subject:From:Message-Id:Date; b=tKLeyeN1aw8o0LOm5y0oUL2sscrfyiFInKyyr6tYUPsyWw9aAXal1OyJaOlan41p+YcCmjkgyraoSLjKBTK0m7Ev4BU+nXcLIkpINuDhgi9x6i8qLjS0PHVI8wU7dCfXxA8v4MYmCE+SGf9Z/hvQim2OcbM4WibVLpmhtAP7TMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3z+RVCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3z+RVCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F364C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755326393;
	bh=665xwmDb9xBGb4sALV5fKxTcf+TzB/J8MqQW2zUFRK4=;
	h=To:Subject:From:Date:From;
	b=Z3z+RVCpzcRRX1JyxzSVroE8+X/ZcaYEOeL5kZ7DXF1IVaiDZz17PPp5bgahc7MoM
	 6VR7Xpjf8OE/w1GP4sJiMeHcBgLcuVbWGsIZOtbN6SRoMXUj751VPlu3t4gv5FdOqd
	 2pb6My9KiUh4JL/7BwOvPNHElU8zxTQ8MTcLSOFjmVnu19Moz9svylM7lULT/rWBtd
	 EqIf1ez5bm+W2+ao8/y+GSZyJtvfmH07g/9RWxsBPHyyQSPkNtYBChHjahvE1ycUZA
	 zA4xa0DTIzw1rw6RS/h80zbjEOybgAZGNRt5ZBgvwOOm3iA13duofhHTLT66p4h0lv
	 o4KLFKJbaybtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC6CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532639357.31350.16532579590169832540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb68043abb9346b5d7e670a4f83c812d1504fc3485c98fc31491c1a99d57ef4
Date: Sat, 16 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755326393
