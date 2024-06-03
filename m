Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7197346434
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717458323; cv=none; b=gBcxVI/pCQUAQlmz0MDzfnkxpKefzsvyhy4pJv912Z2HtwLGLdWmdC6RPmCzH04Y4D1yckDiHk5/NBAYgs+qtTfJzD1CvSyC8eqQaaFjNv62v1VyIh4BUtWdkrerLGR7JrhcB9BkA6YPaby9UdsXG73b8l16Mk0xSHD9wNri0so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717458323; c=relaxed/simple;
	bh=DhQ/hA0vV2nVbzsadMG0K0Do3Sddkur+tqyldYaN9CI=;
	h=To:Subject:From:Message-Id:Date; b=ja2h7r5/NGumNVn17uhSIOVjObGm8tHR868JoECyQ2BEc1bbNtJ7mai5AlnQDhbD+xNa/4anTMPXsW9UZaRIWTSkaBa0a1qy40tSqDEgc/F+GXZQCvtuLvhtVL8xKpzI0aTqHwc51zHp15CHvl+IqQIndOHxdpK9VJ1hn4OUAJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fazVxZqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fazVxZqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34D0C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717458322;
	bh=DhQ/hA0vV2nVbzsadMG0K0Do3Sddkur+tqyldYaN9CI=;
	h=To:Subject:From:Date:From;
	b=fazVxZqwCxuSX6u9z+2s38Ousik5kxijf5T39/r+L+pdYBb71+vFoCDzF6ktnv8Py
	 Jtr6uzqON4NziLmT4g0pHmfsO+PKWfSosieHOOY36T1bJ5bUHlDR5GhP7MSUWgY4xA
	 xxM8iZrfe0IJGa0boaTjgT8Kxz1VJEwWdTtUPps1Q7esMWCroqXH+4g35DDAHwlu0e
	 VoqvzISug9TESjyTPEY25cwwv/ldUP9/5UIorny0F+SbAtCYQNjFx1WJn6LwTU7zIy
	 8ZxJUQ/5B0F7xOA9cNsBANT0b34QaSncrRgyIEPOa2UCi/jcohxAzE9htmB7anVkkc
	 t4TEEyU4NNp+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1393C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171745832281.23417.13602369522300245136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ca6d60e1b4f1e92f27c0e5270f04932626318ca165ea2a7efe7b4f1d394431
Date: Mon, 03 Jun 2024 23:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717458322
