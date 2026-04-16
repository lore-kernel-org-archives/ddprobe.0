Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C6518872A
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776307054; cv=none; b=ZUvegJX5y1TR6mMNKOAwW7adSX8NI5ZRn405FgQbodel3TZJESr2+IsF41vaxbOavuPIWl7KbrcuffIWEW3ooFLIB51E878k5reYO1t4fEab4gO/cyXCbQIM8+tjVf5Py5QVcqMuNgQoMk17/j/J1zjhWfJfHLoswlrHjN0LeYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776307054; c=relaxed/simple;
	bh=wYmQNcCpK6H689C+O+tafireyCrY4qF1LSen09eTlxk=;
	h=To:Subject:From:Message-Id:Date; b=Z3U97SZxOi/lHcHiAqWCWZxVTJVUTQd5sHnMYXzf08CCnJfL2IF9wLa8xZq37jsY+sk+2tfM2Fe7M7YH5cW2RU7JdX1lQAiXimjn9wEjBXSgE2mqMWMIRAEfcu4+EOS0SR87s7Dy8qG0c3pNHYrrJbp5nKANMRqECfsyURjBStE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlL+uPyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlL+uPyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFD4C19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776307053;
	bh=wYmQNcCpK6H689C+O+tafireyCrY4qF1LSen09eTlxk=;
	h=To:Subject:From:Date:From;
	b=VlL+uPySWBQg4EzyvT4b2Ngyk65Gbao4/V+orpcPtABwbQ4yA7U2PCqIvbus91H8Y
	 IjuPoiG4EiPRMp9+xObaIVc8Z2bNUNh9w6CD+3n/VsNlRfCsWK9Km50/F9QjqN5CUP
	 NmOP6ApylxQLT+QOCDWv74XKt8wfwlscd4u10rxxPXpcWRs7gVPiCr9/kvcrW5Yow2
	 2SZVdKZ8SdOBmdC+cqLlLocPIqQkzBsaf15Bc6dILtNj0Zs3ZrKxrX590i3u70acL0
	 wCiA0ykLWRJygdBgYCPBFIqlA7nci8lhWRErSkWRpKPE8NR9hMJC6wTlYJi2zOqQNq
	 umbdl9XTgxl7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9865F433D6
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630705368.9388.17137771502730065743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2945d05fde9ec45318d7d6fdc59f659fac5d453be8ede7022b514fc3df60c6d3
Date: Thu, 16 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776307053
