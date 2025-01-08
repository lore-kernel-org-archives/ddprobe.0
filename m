Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA1722611
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736378154; cv=none; b=GmMj8cHouqWT7qYgcDAkd3McAghw29/DAXsLhVF5+GJeuJmRK0Wow0q42JagJvu+MzKW54eooWbHZHPx/qwtIGZsZl4cKXNnLpicpG1ZXtJqVwB9b0SRfKyGZnwdQLyqpfr22FXrFxjMxcPutpbUOTQ8fer0WaCBQ+2AQl+iaCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736378154; c=relaxed/simple;
	bh=fW60ajrSaFPiycCJw74ppP5rJ14WUVH1NTBVUU+TjS8=;
	h=To:Subject:From:Message-Id:Date; b=jATPDE9HO/ZTEx+/waPvjbtbRadcDib1wtzg6qbL9qkC7KDD26PxS8EYXSN1211ptprDcxg5GEjcxO7B1p6jYTPZ1eKOhjkkeel8yqew+03czd9mbPwekKz8R0+wpQq1FN9zTJPMGbi4PW5mu5Ym4HDRgFGaoRehUlLZiJxzwjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIJz1KbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIJz1KbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BEDC4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736378153;
	bh=fW60ajrSaFPiycCJw74ppP5rJ14WUVH1NTBVUU+TjS8=;
	h=To:Subject:From:Date:From;
	b=BIJz1KbMm72hDIlICN+GrNJdxdLgpL2iTFHOdcYhWciDap+HTF21vAnfz56IRIlle
	 h8YVz0YMM/A4avlyUydHOnIQLTCW9zbyI/bLrhADyJIa6GBEZzdk+K6HRD429yWUOz
	 0+z9BRsCWy+t+cX6XeKkollsU3/ZG/kjmH1SyxHYkjPxlJafF+dGpUmMGwnG2GuC5E
	 AsbIJ7sLPI7PCaiUu5ys6LpWOOEg0FLoymmvEXCKCkB5M+U+9NgWBsH64tMWZ+gDgK
	 r+b/hSXHkIZYIQ2Z3CoP+LTygJyuBOPQXR9B+dcyoInn4KeoZpi9RiCy8TiQiV0TqQ
	 xnzY1adbVJOAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956E2E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637815360.5296.3612298775643405969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6073dd5ef293a874fe85f3d2a17f3e36821e55eaa567ccce851f5447e2e94203
Date: Wed, 08 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736378153
