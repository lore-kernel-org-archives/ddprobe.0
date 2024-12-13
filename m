Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5DE38DE1
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734096954; cv=none; b=iT+I3rVyexu0gFlms+EK69QZ+fXFU93qtDTpy5eIviTaIYl4+M45bnTTnIv/7aLyqECq7eLpA4CXWwouizdIJRqk/zSoHj7OlSZTmcdCHWYSCLx8fCCi8QDIsAJ83Y10F2vfy/4Ha4FVIFoPj45JTBMcoZV76H31YIDy90YT584=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734096954; c=relaxed/simple;
	bh=KfzJcvYZ1dwJAQ4Xhijt3LWUewW2QL8QEo8cHZgB11c=;
	h=To:Subject:From:Message-Id:Date; b=Gupza+7xzya9Y43Y69hn4NSeUhleI+UnBwomU1z5QYnuqIHL5xpx0Q6FJ1SpxlBTlpUKgKuW7q+k9Z9CjDiHZKPJ6IKwjBdBqzjclsctC7h5MYDZ+N8vBXY/mMY7UUlpfI32eq9Er/IvM7MlPSokPmPkO8qHAPqIArWQPePZtL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRxMN0NW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRxMN0NW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB3BC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734096953;
	bh=KfzJcvYZ1dwJAQ4Xhijt3LWUewW2QL8QEo8cHZgB11c=;
	h=To:Subject:From:Date:From;
	b=QRxMN0NW/9SxuOzRU/hMeDFyiAcd6KH2mqGpYr5yaZwpiLxALQuMhHnrJ4GTjlV6Z
	 AeS2Ic1w704HNRyn+8Alo0z3C2XAcvN+W1o6TJYQ78P2SyDJNgLWG4hK2ptmRDkygI
	 VGZi1h7NAX1TPLlIQ+exhLfGHhXDBISfNR2FfsokpRByyhuO5PPXi8P/GDoVeZYt/7
	 AcqrVH5u3Q7xEPiBqsZ85Tmpue2n4CF7SBguU6pVKzeZuTL/TCvOx9/WfxQqlIJqwX
	 Wmi9LWrSnxyZcYPXfzHTxdiVtwL6ILidQlkiYFfdveT9Rt+OFBuMVRsUmLXLYL5J85
	 as6fijNSFYCWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D300E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173409695363.24225.12324012453363783602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c3296f2b021925becfbe66c0632ef94d0035a976c691cfb8f6c8da34abd259
Date: Fri, 13 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734096953
