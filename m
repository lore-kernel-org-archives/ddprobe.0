Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273EF2A1BA
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765753974; cv=none; b=P9wd2YDwxOJofErx+B3/1WN+s5RK6XZhQFREB0EOUcPr4iSoPI6bHBWsENfTrTg2OwjV/l9Bv4Y15dZ4vZfNDM8jQaFIcHXujvo3ol4tOMldp0IBbx6xtfzNXilYHixBicq0RbrDILDeUOqcKJOXcj+nxN0utcqQCjSQVZC/zMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765753974; c=relaxed/simple;
	bh=KzsVf0eKew9oUefM/Up1rQ5iT4yAxUjv84l9UqHEdqY=;
	h=To:Subject:From:Message-Id:Date; b=LC6U/IZz7PI7Irtxo0XgDNTixehDRuv5GY3+m/uYIlOEMUZyUvE7U7T5PAfsHuzi9UW/CWEDTMhEO1IArwX8qCGbKjP6/WlIoKXkjXqtourANntxGjd2/E9obAJ2R9vp1BeCYK6lininO5hq6eh+0phJ4yvddeXDweg7VJDNQwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=II3gi6dh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="II3gi6dh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB02C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765753973;
	bh=KzsVf0eKew9oUefM/Up1rQ5iT4yAxUjv84l9UqHEdqY=;
	h=To:Subject:From:Date:From;
	b=II3gi6dh+B8FXUjg6cnuo8zRWh6tWU/WayLWoVDRIc2zL0DuDIHflDVZWCTbfw8zB
	 w8WLdLp+t9DiDGDajYKcSsktrQhn+E9xxh8XEWTs4IitobS0KAtD/fVNDcVgL6HuyQ
	 9+gGkoyq8alnof7iMo3vn3cfOd+3QJaKPEB2JAh0S6JKcHXGXfPWplERjw0fLOKzjh
	 KBxvY+49wjuVBoFZ/DjTfTLDcVrgdS8+7K9fIiYTSoChrePloPGVYN3pFfArObUT9/
	 739U7DyFTsW+n1W2K+bRYiWLOM0KpcrE7Qegr+3RCAR0NUF8+MZYZwy7bRJ2GbNxM4
	 RKLQ4Ke+WuKqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A628BD59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575397363.8176.3300322292412011850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89fb27cc4853fd4e1dde84b5b5f1cd1d91ee74d8e07ee79267600aa4b5b7d4bc
Date: Sun, 14 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765753973
