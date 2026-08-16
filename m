Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A49F30F932
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786911634; cv=none; b=nzVKtAxLeJ0XHx351rE3PuVMgKebQzWzCYbgcU9VCh9TZ8SiH4rY5SiKGHZecmPvLiKFZNnzlvH+Q92Ook+BdSXlLaMao+HXdYRFK8EUErqQnvAVRHtmv8eeuDvkougijIWCNJ6zHYoDMM06rHClx2ZSxJxaWoTwyDIZsgsQDZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786911634; c=relaxed/simple;
	bh=on7O/WNrGe9dVuwWyGfzZsQVq3WPUdH9LpKkkqE7I5o=;
	h=To:Subject:From:Message-Id:Date; b=Yk9n/i+ugmKB8DgBOLkhP4jvQj23jxgs83Zq3B1rvzUShlQp3kput98JjjjPjANMlmSQmegG4kGwqqSSFwot/wtzlJ2FByA2I3JFDNHUHiG/wujxOFTo1hnjZd2/PPlFpNLI5kTv80TpptPK0zeKVjHGWS3c3mC7NyfaH4N+ms8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTFGWT1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTFGWT1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62E9C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786911633;
	bh=on7O/WNrGe9dVuwWyGfzZsQVq3WPUdH9LpKkkqE7I5o=;
	h=To:Subject:From:Date:From;
	b=kTFGWT1YBI6XS2L3pV/6ePuxUPwMlRxyR+YcjK5/JatI3tJsp3f8Nzbf1fq3jAhaq
	 L5yOp1PFknKwcub1OiOX8GzCtQJSX9bNmIU5ScprlJdY7oHznYrPe956t9Tcvz2EFn
	 hHn9zF/9ZtCTHym5mMQB9rROVnJ/tFruZHxhxTrLp8QeIt2wGHwjYncxdOvSPcbRaQ
	 0qgtLvgrkRibfi1GySp7LbuEutLMDgzgR5wEyUD1JtYLVbshsMG8J/M0vxne96F05F
	 OfwuhdZsZKII8nu2pi0TDA0xVv/KPAtaIcGkYb8tk0WXl5ogUva99TO2LQEK65vNsa
	 ifGOurDDJ1WJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEE1C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691163368.21133.14731027732970020771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493b81741f03a4017d037bdb25f0a5b306cc2ac4e45b1112d3dd81ccc6988d60
Date: Sun, 16 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786911633
