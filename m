Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80917158D9A
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713954023; cv=none; b=RNttqEaw+uhOT14ng0e6sR4kCgPl0mtQ5LWfNQTxjJtBxEEoffy6TQY7YlEpfYUS9VzUpvH1v/kkY2zFlY/kxOYpgeftn8HjnujE99iEWgrTPKwt/7XSRjXOFnlV4rDJL1mAzqSynfkuMhknKoYPP0IbXndsaMbgfQK8upI0T58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713954023; c=relaxed/simple;
	bh=svVbsTfUPQbIG0jvtYY52aM4f5FECnv6MuMy6ADCUuE=;
	h=To:Subject:From:Message-Id:Date; b=CFDZXhEjMtSJcOZelH+0fBBr6dAwYTCJR1fYZhkFaWIYFTdR78GRSBw7PRKys9S4XIuZCQNc/c9w4h2ozmz7/Z1sebbHdChNExQMa8uVh/z6pPCnLVsHoG9aVL9ubgnTMHyc/sUxON0//TE7BvNOGcniE5Gak91qInduqwZl1oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL6aReMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL6aReMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 073EFC113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713954023;
	bh=svVbsTfUPQbIG0jvtYY52aM4f5FECnv6MuMy6ADCUuE=;
	h=To:Subject:From:Date:From;
	b=XL6aReMw4A2UdDIzbAkXMt4xR27A+ZSnUkZB5anqmqgoRSl9910iEGo4HQSVWKlYc
	 paurc1+H8UaR+wLgkZDDiuKLFCOULdP61N68X6p8/CfvrygFTBceoYAbWlP++TsR3l
	 rA2NRk0RGQpCNJh5e0ZVn6RnXdncjOlT8MUy6fXu6vihdaOGVbmJd+X3RlZDSTjf1y
	 vYY31pbrKpGlX4Amr5P0M+/YcsF2HlqCzvtdSZR9hKc+wnc3CqJcNKPC2ZCBgYJdqE
	 ktiAX3nkV2yTGvPl5c08bibXwh/qGCfeEfx+Rpy4C5LTrZG5fGdQahv/ZytgZdKzRl
	 D3Vh0f3LxidLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D942AC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171395402287.25872.15085577833039382016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e9623f2383e1491731e89c2beed6d86cd6f3172a418e8e191d047a790079a3
Date: Wed, 24 Apr 2024 10:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713954022
