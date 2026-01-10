Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B5E19E98D
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768005234; cv=none; b=qRUmUnwBZPPqfJ4ggjn+RI7pX+yuce/GOmPh99RzuTl+PPlfU7uy/rrKEDHxF/jskzlGKdkulPUAqCwbo6IrenPNKbTib3xP5SiKIOoEHFPWyUvfChVKZgzHeIrExYqzGIl3JtdYPIAACRu+plHd/t2C/wGdUAOGE5Q5PXZ/ay0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768005234; c=relaxed/simple;
	bh=NSWIwunVn/kMYbfVa8nxSISpRV/rVkEy37WcAeLUcaw=;
	h=To:Subject:From:Message-Id:Date; b=TJkd+FLTIXVGqYkS9IzsSwlR4UJ8kIQaLMFhsPiC71tMOvUiFY7EAX9Lt0vhrKrcdX1bu/fsQ90cORN+fQxk9VI9NWEtpeC6lsYFV+7Ji5PLynan8U6YXYdWYK+mFOrFb2Eblr1iIQnDCpu9+4TSSGmZy0nHuByzPQN9NmiWWIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ct0lAGpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ct0lAGpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1798C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768005233;
	bh=NSWIwunVn/kMYbfVa8nxSISpRV/rVkEy37WcAeLUcaw=;
	h=To:Subject:From:Date:From;
	b=Ct0lAGpK1fIvpwFA/zNQ33v+YhHdIZRsT0VZAwxMdKe1qFntPqWUqhDY/t+ohGC1H
	 bgvfay/TxHk7oq+perTR9oKmrRWXtetsh9SoUGKBW32BteIt35pjPhYMm22i/YpieX
	 ya5xQx8/AX833Y5ZEaVa2+h0x+6yHWjK9w5CMBVcA2lJfbpB/ZdVbqNp9UqTn0d4cs
	 U5mnYywOo8XfwNMj++yODU9U2cBazMmIpztHP1nitRk/F0FtZLkPyNbC5xj985hzBX
	 WEkTFMMm/1Kqv51yfSBnEPAlfBAMNFT2cFVU8vzIeVYapA2KVf6aXKRpAY2QhYaGsy
	 6nP6Uv8sS0S/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9322ED277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800523359.16102.6826143106700161783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4af107390ff3524a65f87fe9410834040770dd2b9b57ea115be14b98c7e7f6
Date: Sat, 10 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768005233
