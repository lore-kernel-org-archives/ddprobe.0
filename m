Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3125723ABAF
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760173794; cv=none; b=NAQZ/zHOd2iLcp942zrClNJeNXEzvfKd0sPP47I+REOAuuq8wkz85pIdpabHFW/qUPJTdpOBa+B1ByIiBa3o+V0tZlBdmTDU8gin62FfYGgOM9Thn+rwCyB838hYf1yyYfK66F8ivgKnzgsrsGAKL6LZY/6KBgSpxpuwFRsGWVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760173794; c=relaxed/simple;
	bh=PqfSYGqvDLy42xbo/8vkB8eXOw/rPBS1gS+ac8qTvgA=;
	h=To:Subject:From:Message-Id:Date; b=cxoA8BBKGIiVQcoOeQUvdn5+pfzS9224fje4//IUJ0iwCjOOECTlJ4EKTlPYXxqpXfebMlOrGX8q3rRPjUt7fNWhIauISw59p2+RCZsLQjAG+p5Q9Hkz7XQ6JQqf4EK6cqdzwmSaiHm/EtCzzX0y0QDyzzPuumGGF89nn0lDxEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sL7ILTjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sL7ILTjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE52C4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760173793;
	bh=PqfSYGqvDLy42xbo/8vkB8eXOw/rPBS1gS+ac8qTvgA=;
	h=To:Subject:From:Date:From;
	b=sL7ILTjwjISy+LiHzY1Oy0YaLXFQkudOCjT3EgFxORIOavf3mA4HgxJD7E5AIT6rr
	 dfxgc2/skU8QLU16jkqKlXcrQSClq7gHY1uQNLPA0KlryNYz1eG0yccRXy2xnPSHLm
	 ofDY2KQ8uvk0lY0wihyeLIEHsljfgu5PWagzunkkOskjgJYJg1Eds+hvAnPI5hIZko
	 qhVzft5QtqeZxDJoBpVuj5OYYXiRRFCkaMj5g3FAJq6cUt/V+Uz7yeYRohLDcEPxx7
	 bcY+wD2OpF34XYvhFseSmRbrsKdDJmNYPDRt08iZRbcB+mkcf3H/wTEDgwqhg07zOK
	 lU/E4DxF0rf0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AEFCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017379361.11543.1613972037516601403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8270fa3af8775a6deb588b1eb5ef350e994908623644de57abe5ff17050993d
Date: Sat, 11 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760173793
