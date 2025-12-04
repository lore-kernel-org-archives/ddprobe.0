Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152692D47EF
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764852774; cv=none; b=DB2ZB2PtjHpiUes/MktFF706KK+cabLSmOg4HWWUPCBliBLwGwwkYhbn4ab0juK2ijSjvyFHlHoYdGQpauBKCC66OSwOdnOoe0MPAdC14sjHLlKvNNNxfcskyw7wQ4ivTccvxqIgXNAn29LiAwoIpTxP+Mwd1A397WRN1GFtKSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764852774; c=relaxed/simple;
	bh=cYfBn9yPZxJ+KumUyyq43eUn1srAFMmoUEn7aKaHEx0=;
	h=To:Subject:From:Message-Id:Date; b=OdUmZJa6ttbR99f6gmfciZzeGXz2DQbMP1Ed6Bp8YtkTECYEDGpXJpZUzYj4aSFgl9TxexHB2f1I9WMFQG6UbVxgQz2HDvpVMqIvVA2SSKN2lHyx8UxJDnRhL1KUA1/BrVpioYUvD8sBfJeizQVEdFBHkUfdOsa8znQVXa85qGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uROYHXqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uROYHXqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7304C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764852773;
	bh=cYfBn9yPZxJ+KumUyyq43eUn1srAFMmoUEn7aKaHEx0=;
	h=To:Subject:From:Date:From;
	b=uROYHXqZo6OK9eUNhDoFgJ9bc5SKhB945yQP8jKHw8tIzGZDnYVbhg2gz6UOsKhhH
	 zer9Hgsfx3TxhLmYhT2q6nKnqcQneJDeBnd0q82PbcqiUilYHA9KPqM2PAAzuP62Fi
	 NcyzXWjqkS1kEurCKnAVv1TzHlO4kbLinXSg5UO1JawEl0Goe9ynaygFBYxb7laJ3x
	 9WUu3ko/Lp9Ai/SyBjfIfaTNKGta27XalcVYlOkC7MRvhboOtD1BxAOLkkaDzx+92M
	 MPbiELVqk9NIC6/tdWtvIv96pPI8ndUX/ssDwd0gsZfa0jDhN/oMnYkYYr7aVTyo51
	 kuC6/dc7v1kHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E7BD1F9DC
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485277359.21513.125030856985124048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0751d32917197f37c8b5bac3e12148d72fbfa7b79fb90d0afd5fc057051b3c31
Date: Thu, 04 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764852773
