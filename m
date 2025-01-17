Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD31194C96
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737137754; cv=none; b=Tdd3HD+KxyAV/DUUjyOPXcSbyJ5vsarCngNS7yCa5Xh9prn/MDk6WLZ9IFSD2BlWROdvKVpWjK5f2KdIP/IlG4U4Q4ANh8roSR7ok9yUoFtp/zMXij+nVcwDP/IvrFw8SyN1KfpkDz9sQ7XUbeQML7LD5c2heaJONEgLx9mczyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737137754; c=relaxed/simple;
	bh=IpbF+WzsskUBRrHJmEFaFZldxAWBBmH7A4uFe/H9PNg=;
	h=To:Subject:From:Message-Id:Date; b=CigNyRAYFAcRPhQitqjCV3+vgFgR6juVag7H3euBlWPUDGGHiRy6tqCfsbihY+R4r1atQH1u25Rh8F2DpaeznkT1xpSSKPmKbOQEA50ZKz7APML79KUY+LjlcEcVXLjsnc0b7CfUX4k5hkpIa7geFiKSapKxugUAnLj8vYLGk8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ar7ULG42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ar7ULG42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7700C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737137753;
	bh=IpbF+WzsskUBRrHJmEFaFZldxAWBBmH7A4uFe/H9PNg=;
	h=To:Subject:From:Date:From;
	b=Ar7ULG42GPKfhuA98itaESGzT23vVwb+oal4om9XePaOSIkuKopf6jXhRYUUxupWL
	 U15Nk5JncMKm1VY8XXuu/caU5BW6iG6IK4dZFDo99+5KN0NtHpKW0430RnCQiNB+zo
	 oCa4Vi5mQeFi230UocFaOfZvXN4/cvlq3J7l4n67gpX7GNMKii00HwS3tRFbbHiVrt
	 gcU4DybzMsoaMi/yW/F4L/EFGnhV3eGhatLftsnbopQi0IGmeb9h4y7UaBdFb9wxta
	 D2oaEOAvnKLT+1xngFTsOSUgeHh+w+ReOFRnegv1faStWS2vslJgzNn4VtIAdhi2RR
	 U19cAJn05jh7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93396C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713775359.8762.11477815028370705443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1dce21cc24f63295fca8e8d7f0bcfa2720aa846e8ee1dcff79239df255fd907
Date: Fri, 17 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737137753
