Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7B423244B
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736861754; cv=none; b=ZxDVjHpQAa1iWcw54laGF73/gc1HhRYo1XfbKoiFw2p5B++4gD4jGQXN5Qbrhuo1ENde+6iLPjpRgoFwpQsYcPeFItbBk8UBTErX/b06vzufkVxkpFWptWVXTfhqPuW/MBLMcM3NbnmUqW0q/nXE2Mga+l6UmOAuQAm7cyOaWSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736861754; c=relaxed/simple;
	bh=hLP9Vzzbzjp6zuLe9tQwOSKouadzaP3VY8US4n0phOg=;
	h=To:Subject:From:Message-Id:Date; b=q1oJSruoYE+TQKbZ8H38EQnUZR5dJ4eZtDDBWe2LPhJOTN8SO9j8Cwsp3/jhJitwghENrZtZX5AydJQDJjJL8Oe28+kffuJxyy25tEQg4rUayWOl/0nMH+l2PjOylwHb1PneEx4AmO7bFFFPemY6JxsTjKPAx92z0yggYjz0j6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nu/YArTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nu/YArTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBBFC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736861753;
	bh=hLP9Vzzbzjp6zuLe9tQwOSKouadzaP3VY8US4n0phOg=;
	h=To:Subject:From:Date:From;
	b=Nu/YArTAEYm6F0S1vrfGf5kYtfBacmg2UgpR7tDkOvLtIABXzW+fdHB3X72dbVdlI
	 ODyGb2HLz7Em0CebI95Juin8OZenZkiYwO/yJ1IQ9rJyLOzUIdgRTisnfHgMnLuMjC
	 2aYkw9SOY2HSuTeygLg1Zyz7qqVZ4I9PJ3BCM77Hh5L+rBcK0owedJKV4189smVGHd
	 gS0i6O+wp8kBR7z558paYeWIU39RI6JRFeQGVe6qMfX43D0LHZOj1AHAVrKN53uC2/
	 1Go82QxNj6pc/uqfSDHMr/3H5C/vXoJTz6mZHHg8gNYBr3U7KDTn3YJnnJQvnAYfEF
	 5tx3kHJhzjF6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA0E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686175358.14519.10900638901607151068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa85e2f212221a36329d532389dad130e94fddca4b09e73af626974f0c24ebd9
Date: Tue, 14 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736861753
