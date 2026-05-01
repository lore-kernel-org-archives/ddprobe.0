Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCAF237CD3F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777629454; cv=none; b=dqXbh8eGbFhndurNrh9L2l5E4PkuZ+o0UjO2oCsrK5fJbjI5jiaMhMhei5D4O7nb0h2IqvaVdevU44O+Bi5NkuVyYd96dr7tGsGdMpx1xYgPVLBwwYugYv5JqClWWnhFtAWtTbptdtsUlY41cI9V8d4USNve0Y35CSXb4bOLbTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777629454; c=relaxed/simple;
	bh=uY3tlIYGGdi7ThqhrlfFVxPYgIJQ9Avg28jptFDHIpo=;
	h=To:Subject:From:Message-Id:Date; b=LNTIkPhkoEctsdQVM0Tg5GmODSOsz9kkLl+ZwBGxW6WpVD5qLEKl2o0gZ9OgbE/wOSXG+CQgOe9VlBGaZY/RjlcPtqmlsM+B++6A5F2LQLpcI71aqFfaxpBdZ1AYui8DVpHn2Von8q9g6yfWYhP8A+h5uAQF9aa7ZQJHNOLKvd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsC5mp4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsC5mp4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA1FC2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777629453;
	bh=uY3tlIYGGdi7ThqhrlfFVxPYgIJQ9Avg28jptFDHIpo=;
	h=To:Subject:From:Date:From;
	b=GsC5mp4Uc5RXQ/ZxdpArP9tgtJc+ekYbVd8aRuRQaJ7h6v/ZJ/ITh+EMfg3gytjC1
	 1w3FPvCF1vQMAx1sbCawbIWypWdOS67tlxbQUNjO6++2XVlxRPU4sda9Fps+1mHhhr
	 D/m6aGtIs86lGq0KwNQ76QhCFudOHq7FJaW+xV5ZDeyFMD12xG/tI8pPreLkZB4kXq
	 6KeGR7PsxkP95DVhoRfZnwAkvMiGkC7CXJotuv4sEVSDKz1tW9wEVPt/7JeuNnBmpQ
	 gyh6YYoKzMyqTQV1sf5xXSHQ93LO/sEt0VgKEoc/HLlxt3SSZiTPYHqH35b+v9rSKn
	 9jlAvO9YQ7OGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB9FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762945368.29202.13913431786548209404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2559faff3729470594b38df2df8ada5b44c1139c7d052b42cb6c640fd4f56915
Date: Fri, 01 May 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777629453
