Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F2E2D7DF2
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764083574; cv=none; b=X9lmX/Onn1QqcELJ7hMvLbb0rs8I6lzYnN+Cl8XfCGRdA7ypwHYnAVyccfl2hKfl69/xwXrnnJL+HblM4W8B9ZowiSsEX2r8mm8+yhjrlR+qIrQJaKC4XFlop1FUoCnTrW7tkmz9JvUGNFe10xemgxtBbIZcaCQiIh+6X8OTrXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764083574; c=relaxed/simple;
	bh=63dMVI5L6koub87gb4Dg+p4njZQMovLPOUZm9yn0My8=;
	h=To:Subject:From:Message-Id:Date; b=R5b3iuWkXtWJvfAwDKtN9/WiONCi/l+EkOES9+2ip52ckbl24TnWSKIXQobmPn7V9pKQYPMfYi/0hvxVpLvLCRQlczyaaCs9jDnvwd5Ru1AyOsVK9I7tDqhuQh4lKd9opvBwJ5ugdj8Zg+kGYJ2qRtO08/ND7aqp2QP+Zifedhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsbBcGCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsbBcGCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E5BC116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764083573;
	bh=63dMVI5L6koub87gb4Dg+p4njZQMovLPOUZm9yn0My8=;
	h=To:Subject:From:Date:From;
	b=CsbBcGCxpOQEZSQAJ6/XqZv5Y+tSOkhpg/nxJj8J1hPtwXY9LMI/t6iMco4DYaxgP
	 DCr6p/T741GavuJGIyERytm9iyl18kKLrVXN55yNBjOFQ/IkcQ05HNvHmuZ1iijbf+
	 sT/TBp7K7CJxRk7y+0DTC0mFyEtO0umIYKhJUdTssh3oK06p/tuRsScvKJqUk8Jwje
	 XsJF2dkeIkfc8EK8QeDNzPDLmQ+NZvKCpsVY06EbI3vfpqw79uY5e1wzdgjRiKc3iH
	 T6w9GT+ukWIYGIyv0fgAJQ2iaShs3euh4Bc8XjlUUD0QGj/in8BXK+Vdr74wyDR0eq
	 fVh7zdkmQASeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9150ED0E6F9
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408357358.18034.3467916161130932886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37150a71b6c64698e72d33f632c5e5564a2714ae807286678a068ea232946ee0
Date: Tue, 25 Nov 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764083573
