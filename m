Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3423117C21C
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751065194; cv=none; b=gzr8RWPDwW9I/U53ZTGp3N+zcT9JARUn9d1iep/Em1A4jrRZsR0UjDoa1yVdPg5CQxzoaOXCmCnxa+EuWUFt6UMT3PH2ME+9GFYVrY2WYcryz6GA3PErSLSwnREyPsTuVg4HMl1pIVBZbmzQEhrWbp6JsJfoltf+k1TM7ZIfne8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751065194; c=relaxed/simple;
	bh=+zSWH1Wbqgq9aCLZBsfz8P4zD3Ax36on8R76lj83Yzw=;
	h=To:Subject:From:Message-Id:Date; b=Yw4HxgKYykgLu5HjcuruF0vJx7ka04GHx7CMdIE0NJD0SkyUpXwq2MeMMHeZmIcnFNPVb41EA8ioi0lyVGs4kdWd/CgWf6jX+IZO7wcx7jUNeGXLSLPnNGpQ2lU2DG5Q5TGYYiQ1FoaY7uYpeWr17dcITLrz3Jl7upR4WTjoCHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHcwPT3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHcwPT3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE49C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751065193;
	bh=+zSWH1Wbqgq9aCLZBsfz8P4zD3Ax36on8R76lj83Yzw=;
	h=To:Subject:From:Date:From;
	b=LHcwPT3lyHxf8uNdzMQCdB7qMtNvwOXgD0GTJM+IYIG8TB6HOckMvhkrapyUr7Mop
	 nmRRdA6C28Eh8Oc12iUE0IJbGWiDvgwy1fNt8aDNged0S+S81sSIEsmuB+gHAYK8jY
	 WTD9FZ+WUHSUMrr/Du/MWl7tULtFDDYRPDBEYsfqoyv5Z6V8sAsZ7VJF/KcpoMTYjX
	 AWhv8H9Y0wwn3Zs3tT+vv7OPHRSWynDaBgi8TqcWKvBA1fEvQ5k9NUaXnv4kI/nzl/
	 J+tLNeBdDSh7eaZA0XBQpB3h998iK7ghEiYBiNd4YKLwpSuMoqtjbcCLCV9Kdvb2og
	 KTvfJJkkk0QGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9386CC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106519358.16810.3789169784356575790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be57ee2e651e6dff3449e22b444d06cf50b8e95edbc38e00519085336124d1f8
Date: Fri, 27 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751065193
