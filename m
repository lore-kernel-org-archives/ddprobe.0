Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B51267AF2
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759289994; cv=none; b=DCowqRF3ZStbU0gkIj/NfUR9Yv9yMblCRdzvS4vWwAXq9MV1Je5b3nvkXqgWQLRnueTTCjRoAPiTz9XFsNE2djqJzqFxUmZuxRoiJNSIovzsd1DPcqPXmEolwr180idRjS4dUj8QBRUxM3KE+OKgoFal+NrwvdMSOJiUlhyzCZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759289994; c=relaxed/simple;
	bh=7+fAH0uLx0p9lgQ8Lq6SKsj1EGT0WBk0xYg0OfJJo40=;
	h=To:Subject:From:Message-Id:Date; b=O1Ae2gDyIrutYqjNy2fHaaVEVnD7zo5kPw7YlkEPWxjpNHQqRaXreoPNu5p5TSxzra/uRZENu8h4HEKfXvp+yeJX7VoUK2/3peyjyDnuMWHzKDiJAEgZCYtoTmybq0O1xEAfy54HKYQZTJTF2qsL4KxayfL47Em9zvzhrfbI8uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECdbPLcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECdbPLcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0291DC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759289994;
	bh=7+fAH0uLx0p9lgQ8Lq6SKsj1EGT0WBk0xYg0OfJJo40=;
	h=To:Subject:From:Date:From;
	b=ECdbPLcGwMhUIJE2NYJIo8JB6qbH8WazGIUIwAKHLVIZyaGmM6R6PEflGFhfMYmpe
	 h9wdWOqWijCLX7bBsMR7LVnO34FTUyopSKOM+mgm6WQmGAbz07+R+NR/OITd576vEE
	 1vZdVaANevGx5JPprO9SM3EbKlFAlAKx/SMVkaQF5IiGYvdMCWymOGGXxS2nj8YDbJ
	 zWVCBrPn3ykS/b7FfYDF7ZYpX/nkhAf053tAXzJq98azSXrGxAyFQbBy5V4+5DEnnl
	 x2e3GtLZAoeVWMNBz1HI3VLi8VxWhv9B6i47fi66ixCwm+8Pyjo8o88hzXJx85lM+Q
	 C+qAN/CrpbMbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64F8CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928999367.5943.1547140241119223173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36238dc8e022f580303fa26898b7a47e0f965959f8108e1ed4ebb4d15d012f50
Date: Wed, 01 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759289993
