Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A242F6171
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756978194; cv=none; b=Lleu2Q3QnFqu22bcpy81zMxWfNUPx7XkI5yFwYCogcJ/j8SqJX4vMjyi3gII3jaNRSFw8+CMCbFD1/+cH/Y5f6J9B1GFrpD7cUkCf8FQmseGMLXImaR+Unu+6tOv8QlOUBbI3I0iEyHSW9v/OptJXegDx0FtJewpjkZ8CxOncME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756978194; c=relaxed/simple;
	bh=e/WrKqzfxIJ2U3nmTAzwybmlr/YGkzVS+84SZZ97h/U=;
	h=To:Subject:From:Message-Id:Date; b=NXfECG9edNTXSGBadeT/+QaLOy3BbVLBLT6yLvZRET0d2h0txvBtB19Z9D3fptwVMvRyO16icyCzOZSUZpHTBpwPc2T/+zOJj83wg/NNdQDl0trBweGDt+5smQBUY/tgWv7KIpCtQHJ14rRb1eKPb0yGfnvmu46ZUJX5oVUjw5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwVMX9ZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwVMX9ZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC7BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756978193;
	bh=e/WrKqzfxIJ2U3nmTAzwybmlr/YGkzVS+84SZZ97h/U=;
	h=To:Subject:From:Date:From;
	b=VwVMX9ZEFtpdSBEmd8IWkcX/p9BwVSzR6g/BONbJvDJ++dj/v0RE23PPoXpPj9okk
	 2OwBI7myWNhLOOoC+FWzo+psdC8wadzWeoVyYcByhK7p+YB5icPN/SjfoNW+gDYEyd
	 qoenG5wntE1+XOaazUQqtyprZJBKHca4me7RLTfn7R/KwbpUaNYmYLz5rNrknEa3zu
	 VakTrVaidlLmzy1bMc/wV6UuIhzoxAYUU3+PD6rsltKa+gc84ogiqv8UB453Mm9WGW
	 CX2iRTQLt4aBLmR5rW6+mpAWZ4/maaC41wdPEgI5RzaHSfHOa5jty9+KDbgwJmiyln
	 jIDGcANwIb10Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90289CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697819358.23446.11307677262449277035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d0dc9e8f396b93e344319b4fe493e99811632ad6a8b8d538fa143cbc46b313a
Date: Thu, 04 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756978193
