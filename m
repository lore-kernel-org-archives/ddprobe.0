Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC3AB66F
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718849963; cv=none; b=IhmJXl/9aTYvbnPde6zhV2LiuzkHsDo1JkzobpfE+IywbTX1Kp9BtyCqS1oyGx62GSbfp3FW+ju8ygU2Hukku0nephDm7CHZvvYN5jGnRsgKjDBHatGEbyi7hs9yDfJyjrxwUwr2AAHy9fZ7+Bri0T09huo98p0uXZL+NSMYdcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718849963; c=relaxed/simple;
	bh=hArwZFgUNOc2ElCqY2HLaIC/cL+cDoT7A65OIyhL5TA=;
	h=To:Subject:From:Message-Id:Date; b=F5jmkLnnrga2I5rBbSMeFfWRe1bqe4/MHlZuUGCOXhMdPPWj2pOopSruGWoKCHqnfegbmVwr7NnWr5aZMTjwwP2elFkCVFIZgU3SG8NM8f8iDiLrPBUKqZ+S6xTCoPwF4gGFmYUXDz/L+mRc3Puly832pZNMAqaVXlCFX21l/zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeVgO2rI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeVgO2rI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34E0C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718849962;
	bh=hArwZFgUNOc2ElCqY2HLaIC/cL+cDoT7A65OIyhL5TA=;
	h=To:Subject:From:Date:From;
	b=OeVgO2rI+YyMbrdw1nm8VtToMhWTNr4mPIPZzGi8HRiDmpeBUPxyf+Gs7sLEtehwf
	 gA73tiJUJF4aS7CBQNFSpHeJ6rxz0yx/AMlcq+d8zUFK9DeaSR/T4ckBoNV+qDzC7Z
	 AkUwCpPj/d3Ph+6HAg3VS/osTC0KTWwxSMagCUDNf2zwHhQ+8kIiVheyFyJnzomlMA
	 2JvO3I5AQ6IrO9KGCXDxcIRS16LBxTgGQRHnm7aP6aJ00+KRJ91i13HzCWImnTfFg3
	 uusOhcnOhHTRr+BwEbK1k4g1xDUYoUtuzZebVlekeeOAHYOuC/1PJAmzSWN8SgQh75
	 0PvcNUZtj+S7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5170C27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884996277.29817.3632746444724843531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67fcb2ae443ec96d6fedf42c9794af1852c20ee79f59881c884405272ea2aed
Date: Thu, 20 Jun 2024 02:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718849962
