Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A377353A77
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791612634; cv=none; b=KMJa++40Zngl0b1UCHXBl5pW6Bb/wsE6qUfrAJKiKcOgOZhLtbEIZHEfAQCdWS8VkmQuueSn9t8YFgcaNmuFTH7ba+ZNOEnR055VJkjjT/yqp/3RMHHLd9ZpHREq9/HBzxLRHJUar7a6PkZu6lsIJPJ3oywbjldX+0sBmaRt+WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791612634; c=relaxed/simple;
	bh=mkDzx/I9a+qzOdMxVvVqlzkH5uoPxpSGQbD62yon8+g=;
	h=To:Subject:From:Message-Id:Date; b=U8cUmn9h16Dd9ky4ih+m9jfS/vviS/A/9voyCPduTYWjCocBCVN8HZX1kmWFqMj9QgteYNkVy3ijU4s58CK19TSnhg/MEOW7u7Z5aux2/f/yBHVBOOOS/MC/oe57oUA/J4X86N64wXIY0IiDjwflxdRri6vpZKrwEcky02RwZQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=El7mIdhr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="El7mIdhr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39AEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791612633;
	bh=mkDzx/I9a+qzOdMxVvVqlzkH5uoPxpSGQbD62yon8+g=;
	h=To:Subject:From:Date:From;
	b=El7mIdhrfX9LP7CEyUu6wvpj9sBPefPEH2ZVitCMLgonUp2i48ObQ5R9VpFrKyhZB
	 wz4cruvXS3iWKJBpwcCe0hgnjY5OAAsuuFJ4KA40i826LTHZoKulg52F4ZXZasQLLb
	 9rDuBpTEOdzb0JLIb4y2U+YfUEfO10Ne1E/a8b/7agqmvGVuYhH/u/qVBIYx6rPEKK
	 YFPwAdi2pyFjxBRgDFtVC5WEQq7y+Rlz3rAUS8YUbzRjwNABlKpfu5hNOV0V5P5l9u
	 8mJAth7TeElfsCWrRA5jEuGTpt99dG1RLPeQ/9W6iRrrhLtamMkkvaSAO6jTKphNC5
	 M7H6BiQi5b1ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D78CA6004
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161263368.15623.15510770720858637225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a6554bec40fb20ea347e71bcd91a5d2f9807148b8fdb261a5250a5da430e29
Date: Sat, 10 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791612633
