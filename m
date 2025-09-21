Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409571E5B63
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758445194; cv=none; b=JRJtLtk3l+EIlU5N3F55nVd6GMTFJ8kuBYefYlxvMKhBASUQ40pWkuB6GG7GLdHCH+wKV5EsYI3SdZH8Od11hqUIZD5OVVG4F5B+YdzqtAjhfiqqrfJtjF+4oAvCbID0tNW95BRR9xBwrqLify9puqJWxxBufNYg0yLdRbUvHOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758445194; c=relaxed/simple;
	bh=o1TMSuDUamUOfidKhqZAi5YckTBJH/vq9ZRhKTj2EIs=;
	h=To:Subject:From:Message-Id:Date; b=UMhEpc/SVCykoodXleXj8HEk7YaQXpjcZQFiBAb61sSO5jjx2VIzFf8S6G8Xz0SPp9sWKy472/2wJJ4NlHj9+2vHLeYHinkgDnhJ7EJPR00ngTnioEt5PEpmMsuTVod3kACiDFdLW8Y80p5dc+bN1xdwNSS+SnqRcsX1eYp7qXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAC1AI8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAC1AI8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD81CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758445193;
	bh=o1TMSuDUamUOfidKhqZAi5YckTBJH/vq9ZRhKTj2EIs=;
	h=To:Subject:From:Date:From;
	b=hAC1AI8N3CsYmRailPseE4kqt0qTL+O8iGGQYLXLN8LzEB5W5wERWXlhhTn12Kugn
	 YrxFFTRXMipBV4LB0wwiaxewi8ULsBP3c7IwMbGBtpaIPHGGM27JacUeHEZ/NGovJg
	 lOpAFpm6Q8oFZMwGDsMfpU+opBvtt/VuXBtdPa6rlJOiuw089N5iAqB0KDtOM0e0X2
	 NmI4kO/bwq1gBnqSJJygHG8pZEiJ76WPWexCUnfTzIDv4O/LmLvKBGzKUqi3wMdF+J
	 fcotfyj7WomZR45lgtAuGQZ4JMk9wCoGfkXv+S2Ec6SroPZ9iG1BKIkylBWPW8ylcl
	 sCeyzaIhwQHuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935A9CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844519358.9464.11118411865154784309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad187b15db49e9ee596c20275b905e32df6e8b25db5ec93df92614fc34955f49
Date: Sun, 21 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758445193
