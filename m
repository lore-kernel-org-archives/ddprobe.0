Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C971D6DB5
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755928794; cv=none; b=Hra4lYlsIm+uPUJk9q7swISE+Fst82Kh6i8VC8fQ8DVohq4inRUCoZo0pOh/Vpn4737u01nm6ZuWu9s9VH95Cb+NG9P6yYXDdoTeDL0S+QPiU8ItWtFq7uBxZAiHiM3K4GVuTm1KaeMX6aAuvDzhhTihTgEbbEdg4AjyZ/xJhyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755928794; c=relaxed/simple;
	bh=Xkq0ZpEaz9AwqP7wHVzAomlNYzqGy858Ha3IQ9sHGIo=;
	h=To:Subject:From:Message-Id:Date; b=EUc6pHXGrgh3Mt0TVAHbK2kHQU2s4yrp4Lzljb0M4wEB+uk7EkCShNVDyKiq2AQMXbORnAvbDZIi+pCvPx0BJ1Ym6RDJtvnRtNauFhexVyjgZ6sBBQ1G5wB4cEVVCofMW8NjIjNPd1sBhHsFZJxCtCS0SaqWI/SepRzBG8+hE4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECoGaZ4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECoGaZ4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ABDC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755928793;
	bh=Xkq0ZpEaz9AwqP7wHVzAomlNYzqGy858Ha3IQ9sHGIo=;
	h=To:Subject:From:Date:From;
	b=ECoGaZ4tOX3JJz8u69kXzlAwQ1t3c8bg8uZXloVf10S8l08VDlxbs7tGuNbXgTusU
	 4vXbgUMY0hv4Miiaced/1K720j/Mv46V53ic+PCdM4xB0UAhFEkU7zc+G1WExVkiUz
	 nXufQLgW9RbBbBbABRX4IwzxUIlLrS6iyhnUW16H+fcT63tUA2sSfht1oYkADFGW8a
	 jD20sNVf3kY/miGSD+AeHPX8QT8FsTcfLW6ZzvGpI3AMiANiETU9Oq1SSzcWyY99/Y
	 N18r+nyOiCQWs+a4ZIXJAogP1yVHcxVC3GhEFxhL6ZFYsfG5RVdO+ld7ijfRWVDSOm
	 kW5QEafu1l+Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935FCCA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592879357.30930.16170376926311567395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7214b665e1d9d8a28af0b257e3158e2b3f061a738ac596e43a546e4054d3bcc8
Date: Sat, 23 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755928793
