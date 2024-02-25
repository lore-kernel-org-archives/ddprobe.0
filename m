Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1231617BB5
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708885697; cv=none; b=gYUZmRLui4lCvvBmqujTx+XLgpxWwgPbbQtA1AQhmeuxU+Kp/G3UTJltc3KXMT4689vwlrYLzkZB+TikjDHiX9ckQ+DFViHQdL1xiDqp/w3IXqTrDlXvd4PqglkvuEFdny3kgNZBHHStvwcRPpxrv0bCwWKmsY01FMfgnEVE6FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708885697; c=relaxed/simple;
	bh=BcxYB7ILvjialzOpPTsjq7gLcUsFmXmLZPqzpUEYyLU=;
	h=To:Subject:From:Message-Id:Date; b=BpUDVpXiuBftPVpl0lHGxs23SIK+Kb4UGSn48nLMLifR640AYOZ65ps+h+3nZy5SUEAemrMMiQV0neilYa1DGETvLyQNQlXZbUvz6V6lbcRt+G2J55ygNzhD19j4X9mZLBK3nyw1DqXvBjT3d8KLJ9GTMRtfl/3OLC2O7opPObM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/zoLvJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/zoLvJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 896F3C433C7
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708885696;
	bh=BcxYB7ILvjialzOpPTsjq7gLcUsFmXmLZPqzpUEYyLU=;
	h=To:Subject:From:Date:From;
	b=I/zoLvJPZ8NpQn96i14livuTPI9zUyA0fGjoTS4elWE/BgITo3hSFSlinnUMbbWWp
	 8plLyzhEGWQEq2pQzADG4f96DiUSlb4+LV+rK60veFFuMniFGdAjCP2J9XnF/rfohA
	 O3DHA3r7M9E3G0XPvsRNqco1zrynis3/W+loHqorgnkWju9LVQpqVU4bT94PMCrgNk
	 0fcESKW9f/sLfX71ayR5NsGQoc+gWvslVeyDYgmHg5HIOByoY7AKZdNWuSXmKwqzX1
	 4gPPls205zaaTjUkzPNMSdOhX8iEowgQOHiUCNIAQb/xdrVKISnZ6DwLDEL9w35jQZ
	 UNDo175AKhlwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CB98C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170888569640.19382.10132070748232139961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ddc2993882f11547bb5298f742defb915114ef36dc336451638c360a51f1f30
Date: Sun, 25 Feb 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708885696
