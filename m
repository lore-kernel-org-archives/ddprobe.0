Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD6B1A0712
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773323694; cv=none; b=m1FyERK1YQp0Lh/Aw5XwC2/S4BQqFQ9Womudfufci3+FESqgufUSnYyHPv64hAdzhLvsqcqlY8wR+H/kPREkIX1mpBODX4gWqmlCl5/xO04epjbhBC0kYoO+HpW6ymSCOKY90gyk/E6BtG6c0+/8ml+osUrvNaur3gyD/+527Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773323694; c=relaxed/simple;
	bh=LxPzAV124Hw2rPKAG9M2kac2gHzO5e5a8jnKQqm/+bQ=;
	h=To:Subject:From:Message-Id:Date; b=JxtHNHuWHHuhn6ojoulFuMCDzKiv1MG7Exeexdrrsd/pHspsU44Wbr6QVYtSBJHTzl6uJ/PP5kkjpJSl0kt/OocThv6FYWZH91qEwf57GgGxI4BAsfppdzSSA9NhB79S416HI+KmIi7DZ1VkZaHi/umMM7U90FWAlH5VXwXfDqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRVmTEbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRVmTEbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB11BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773323693;
	bh=LxPzAV124Hw2rPKAG9M2kac2gHzO5e5a8jnKQqm/+bQ=;
	h=To:Subject:From:Date:From;
	b=uRVmTEbpIaM9FOAyC0DK+ci27NJiEQcn2yIWj0RffvD6BGLGGKK/9cM6kQh4wEdqK
	 EK31yCNbrIUlnnyjxBntDCyFS0bytNBTV009aceJDxuzeunfrqyKS0FOIIUhBQVsiK
	 dPZn1yBQ5MF8Ew1ya0wA7ltXD+r6utNkNhnenXG1y6dfrIH6H88mWYdbtFfWYoD7Xy
	 q7QAGv0gflEflGZYjYXWlaeMsNTrs9BUmVvqy3zi7xV7deDVzz2uXWqPKY7Wz7fD1g
	 K6xAtpbzCvcktQghx/gtnu8q+2epLisHMqLDATaKhxUjRYSls3WDJqfG1StrtY3W5T
	 rdl2fZWkyIU2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F7B1067020
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332369359.20977.10251643848958612448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55c09bf89083cf1c27faa0ce0ba1a6b4da29506a01c128fff53b1a3178094c6
Date: Thu, 12 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773323693
