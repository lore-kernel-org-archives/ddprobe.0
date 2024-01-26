Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1A3224E6
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706297897; cv=none; b=Ge9o1MlN383/IBwx7l0clmxim3tKnJ7PaZByJplRMhFcfH/odWVFhjB4ibTvcnevxrVs2So1xt7Fow5Xj+8jGLrpai940qhvLIK5Q/eviFzH403P6PPsW2giquEazBNw/UEeghBqsO6EzDj0mllINFRTcD1mKOWmnOHN1N5V++0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706297897; c=relaxed/simple;
	bh=vpmr/CRrMjztfZT7Ujox4K61RrWan0BPCcPDZX+HvqY=;
	h=To:Subject:From:Message-Id:Date; b=Y2dPB7m6b+V9B5MGrFmKx3rX43uhVAMMSeJh8/eTPkgA10GGbH2bsk6p3qvVWQkFKwFQ2fF1UW31YD6cUAra2AcQYevnEghVGTdM/vyA5jV6WSud+t5Fjobm21C37V+yOVahjNm/Y/AaFaHy29+HT1UFWEQJw+FUGZt0x1tAnuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGZZN11l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGZZN11l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7676DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706297896;
	bh=vpmr/CRrMjztfZT7Ujox4K61RrWan0BPCcPDZX+HvqY=;
	h=To:Subject:From:Date:From;
	b=tGZZN11lk7XUWk3ayp7oCcI/C5rsSvK3XzKKRCjD2Vjywz3GqvloHI0jabkJIY3JC
	 C9RAmvYCX02vkIxdqXxAnwYdzx2exWOSnlGx8irFqvQvsf7TwqL9dudYJ+h6KpRUz6
	 MAyL2jlfVvqcoaCiQFKMjuF1OS4w+a4ccrRkbERn2egF32QGc++qT31OS44tOR6UcG
	 +xVFL0ZylBbO8F6H1v55bk01wpAIHlXduSWwy7uJH/7T8Qkg1LSkwoNN1gIy42u4zc
	 v3D/sWOAGeK04ShRlaOXOr1zKmlq31RqP07ilfQRv2Lzom5Na4yfYNdw2wijwb1U1S
	 6ZAa+cgWsktqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDBDC47DDB
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170629789637.22216.4368872585344541352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31eab0b9b364838350a633a608017e3eff23507becc204093496fbaf44b47479
Date: Fri, 26 Jan 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706297896
