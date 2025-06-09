Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7781624DF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749434394; cv=none; b=SscOwrBwOuFbMYUBb2/AabKkUTGpGCV8BfaJKjul6M8KNxjHAHAdkKNb1kHLP5XuHpYhGmKlogmxrxNmpEo5fi/yIz8AF/7syCOw3XSjXUW9A3wlkZbruIdqkLrEg7fRmKdV5WsGqwoqBAJG9HXYSvFC4Idn9YD3abqWuzXVoT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749434394; c=relaxed/simple;
	bh=9ci6cTXJvRek9R7cE78sMQKsckqYYMUIbGiMRYdDM7w=;
	h=To:Subject:From:Message-Id:Date; b=OJ45TN+0kqAV3PewGGjZU2Yfotyngw/4fgXWEPCfk2CONzRfSvpPqMx0+LWppHBEEvY6JPjxMWvscw9IR0ebR7Wnhvlp/zZFf0jb0alS4E2TP2E+JjeEN+YAQbRyWI2BrC9H/1SpP93iEmGyJFltL+3E5Bi3ZZtPIm67KNFEJe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFaRleRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFaRleRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F90C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749434393;
	bh=9ci6cTXJvRek9R7cE78sMQKsckqYYMUIbGiMRYdDM7w=;
	h=To:Subject:From:Date:From;
	b=DFaRleROHmsFxlAKwdKgTY4tYJWaMg3076/VfrYGfXCI68g6Vu3CJNMn0NUvNBhys
	 x8ZbRv+zbR46G3Xa+N86f6OPmPk/kAcMaNPdxCjJPaCmQXWjkzQSjAK7wHV6Et0csC
	 m78Rs6yrMjNH8A2RNfa4tcFJGm+vmXUyUK3ruHQCN5HY4iCdnP+exKheNo3K02ZdWH
	 CPWEIv255jDIa1hH4roFIdpU+O8a1dJS5npXD8992OXDkgy6xvZgzOJSszgdyQzK+z
	 XSU5HyT1X8p5z+IyeS10gKalb20PMPM8IeHLPAi/XeMW82154iunAarsKFN+k3K1WM
	 SYxtbPxsRl6AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935E3C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943439357.23958.17718602769044006671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e1a0094b406d15d144a1b4aae5f0b99f4a23a4625a793bafc33780127c910f
Date: Mon, 09 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749434393
