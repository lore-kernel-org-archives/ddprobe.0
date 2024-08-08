Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF15B13CA8A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723104354; cv=none; b=Muf/rHXBvtjrusOzl2nCxsBeEAVM5aishsiuMLoFUfUf/GrXTMSBRyaTwVnduZ05uugq3tL6iaWCXsy4o7NhJDY1P1AphxuZNLilqwj4kYsPm5K0kFFjtbVn1WkZPEv1Njkg/d3RtRSHb6VyOQFPSlR5BHA95Pb3Y8h2VZTIJGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723104354; c=relaxed/simple;
	bh=tNDMBry5JkhzPgbHUj0IXFQyV2aeVarhMZxZGI9rWlE=;
	h=To:Subject:From:Message-Id:Date; b=pHLBZziL9LdV2OrAXtK8J5XirbQfxPH4ID/q363OkfQGwiIXNChYmL72vXoIIRTYBNMH5eCD2BbBqFkdBeazRuLHq3OJYkUCFGF/6PKn1K6lVFkWwlX+D2xko7i/gycmwtsJ5k9YyZ74G+9vVbTqin0zS1xF8mMqfgsejNdltq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lu+jQKAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lu+jQKAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D69C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723104353;
	bh=tNDMBry5JkhzPgbHUj0IXFQyV2aeVarhMZxZGI9rWlE=;
	h=To:Subject:From:Date:From;
	b=Lu+jQKAQzoKiitDQaozyXeakG21JR1ml/26BVigO/vUkvYO37bfNAWVcR8y5Zmoun
	 VDELO/VqFSLVEjGEGdxZQ1FHqtzyCbEgcdINpfFJDAZ6ffRXtz4MbzLsXA3c17JR4X
	 6ER3yKZ9fYtsYehUNfIFVCx7+jxW6sPJPjHV9kQH9ELshozrEU+SshCatUefSJsoLh
	 AsmXHfY0iGYCPhIDOs3xKRfl2HcZ+GccDYHXEXz9WrGDVVCxDubweYabMdRENB7esw
	 wBsv8j1Nc5Qq16axXmNWdFcqng3udkaXiV2ZteIhFfTW9RsSobtarBbGf8T2x2uB6v
	 vbAurn7yBHjeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E85C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172310435361.9073.1330957684334523245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f42491e9e39f0e4a1628c0bbf5e8367deab11839e1b7b499044d8c57c54faa3
Date: Thu, 08 Aug 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723104353
