Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E0D193091
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735856754; cv=none; b=FiMdOzPBAxWV+AyCBRUdkcnompHtocMQ1PIhmUe+J97HZ5qa7f48PnMiANPm0M3U6QdnZ9t6bmq2nyPb/6HvFfO/ILzHTewAFHozqD8MV8cFTELkjxX+ETFmSuzOhDTRIPhNSkSpZO6cvqF2tSh1g+s7EkhxfcpHECkG3MAuCQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735856754; c=relaxed/simple;
	bh=ZjqISozz/6gIxJZSFp7amIFLDQ+zpk5v2NOq+w+FRNs=;
	h=To:Subject:From:Message-Id:Date; b=aRP+SmFiClkHh4alOhc4aW78rEksoM40Tl4DryCb+qSD7lzwvwFPvlplyeV9ph5+qmguMktGsDMKEeQlSu+x1NWzTfq7iNcTCfX09zlydPgUkuKPkMeMYqPKORY+umNGYBKsR53gYsQzYDPlFWMfmFz4We2a1nfeSyiLtVvgktg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tk+b2XQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tk+b2XQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BFFC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735856753;
	bh=ZjqISozz/6gIxJZSFp7amIFLDQ+zpk5v2NOq+w+FRNs=;
	h=To:Subject:From:Date:From;
	b=Tk+b2XQY2vP3VNKMGTLdsm6i5wGV61a2Xr16f+a6CyWONJ59ISap3riTvgbq7z+w9
	 rcVHjvBoUCey+QOIoULN4gw5PvlGDUYFyp3P27dzojWfw0vH0GZOlDwSc/4Tq0xHcM
	 TwrEkq8p2Olcm5rOh/ZG6ajDMQ88n8U0VRwbJjCMbhyZqTHj4yZIO4g2olOB/J4bop
	 QXpwa0ICJ/LA7KPpxJNoVeREl+WFV7DmoBJyuOFJtKFUSjnNQUF+YSDi5eQHiGkIeG
	 MVzo4czv1fOcyvcGQoS7wjfxNxxKFsa2mYfATdxnX9Te8Hxyr1/ruCo0sDHVlJ2X+I
	 X0aYlBR2GZsQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AE3E77197
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173585675360.4025.18063273330138271056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcd650bcdfaf4e6cbb6140f9882756be2f4f4e7d694cd40a54f73ed45b0f5593
Date: Thu, 02 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735856753
