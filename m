Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46672DE6F7
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754992193; cv=none; b=mb2slYx2i3phtPwSg7dBnVHklOwptx1hcB9eF+unfsAW6gOFnMPg8V5IZPAaQI+ufKwDXW8IQX7rz9Th3N6H/d2Vr0XxBJWTdSpUqfzkhdXk8PyFHgEoY2WivikTyYK/28GDX3oXnJHmP3BgWoIOowkTE/Rysy942vO24So1Eow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754992193; c=relaxed/simple;
	bh=G/zx8POLqbsNHrsRfw4Dx8LhBOq88mjlaqSwqSTiC7w=;
	h=To:Subject:From:Message-Id:Date; b=uMhWoxv5ElUGJ/9hwClVqTX5lPOo1eyg2hTlDl6goRgxDjci4CgCemEi43SYpJK48XqY39KHIUNztJT0WGXYYALAw/hgjZoar/OG731DUTPB9PZ5FVYvUJ3te0b3+EAlFNh9NUMcWrsqK+D7rjoDZVh1jhz6zF4Mgl6ZgsWTI/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WP1vOIkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WP1vOIkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AECC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754992193;
	bh=G/zx8POLqbsNHrsRfw4Dx8LhBOq88mjlaqSwqSTiC7w=;
	h=To:Subject:From:Date:From;
	b=WP1vOIkZcZ0YDoCvqk5rTd3gs8SJYpqG9JXQvEG8DJywcfh5G/YQFthAdNlPMlblg
	 Inj+sz+Pm37dOBHKoJ/HZe6Dwk49IfSqt3n3eZleTlIFvdZN15DBA2CX6NfYSXp7Ex
	 I99ijoKay7gbogB97gRst9hQhZMw+YdwCJXODiYpCWENRcLw/KZboVcKQblYH/njoN
	 ivhjI4r/zR9BxG77aCedsEjiLjGTAJ9ZRXebMrYB6mQaaXuBOcPXUhwJt36UV/C///
	 8tnGGcO5uHFAtTmBU7qurM8LyLCx/C/y7DTeQ6oDnDvOMmukQZJnDywNuGGP8jRctf
	 Zdph5qfkPVYUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973BBC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499219358.14537.18422726965455763143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6e93c0d2bd8193bd221979cf0e3d22bac14747f6e2d7c5d338fb2b0837aea9
Date: Tue, 12 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754992193
