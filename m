Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD59F2DB7BA
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771259693; cv=none; b=h5fTbil6hJjigZ3joyQ/+F/PCFWpvB9w7qsUObaXtdUO0C1NjU5XIP6ScaXaDMPTHAb39JBDislRb0I9lmrj99VyT37a1SgwMoEuYY3TDzesuTvk89joK7gyv4GuC1fsxY+fescdW0HMWMnMx1QNPq0JTcKKBf2cnfVtv0qiHQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771259693; c=relaxed/simple;
	bh=ds/fmfo19SXKccPgAgB+63OL5oCF6VFwIITtoRZtYk8=;
	h=To:Subject:From:Message-Id:Date; b=t8TLNxw28SdAuaa1ebMXjT2SPt4gaqIPj+ZGHFBmOZ+oaJ4qkZZu68qRRSDkDuWQfhoSQCmLEvlUYM7wNH4m4To+KI1kJA7OzE06tIU+IbzWMjJ0GJXGN0yS3QwNHIB44WdP+G97YGBhvxfBpV3RFLGnihMcOW6+Ok7aXcqYD7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUmZFihf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUmZFihf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0D3C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771259693;
	bh=ds/fmfo19SXKccPgAgB+63OL5oCF6VFwIITtoRZtYk8=;
	h=To:Subject:From:Date:From;
	b=SUmZFihf5fQ0KgzqNTU8GpFXpisFQ374YVMpaZQuY/FqC7YLjVwEj7eZoY0GqUkDj
	 Kf17tD81gGTe+DJSscso7O0YupjodpQP2iKkqefXHUkiEUBLHwShlPxRzbfRu/DAcg
	 eY5oKUY3K42JQvY4kko5FCiD8SuytcWYhOLHD6b1n08DwPyrsz3gjoLSp4DTObUFEs
	 jOJh6PEZ7RfOmYEZ1YSDeo+Yhj0Mrj+IMpo5F1MEUR76kyCIqGw7EUCT8kdkhoJc25
	 ynCnn6H+TFpBcmwhECajMXiTrUIxkl1k7ciwdQwjayQZiOcew4VgS67d755XHkaeR9
	 XdP5h8BG/fseA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B888E81A3F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125969361.21136.13109998288835792883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54caa90e56b9be6d6949a8fdf652f5d1b41ec9cd12baea3b8e5f9c1a0b0eb20d
Date: Mon, 16 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771259693
