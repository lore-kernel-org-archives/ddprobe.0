Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D761B85D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733330754; cv=none; b=EbiJ0i0y7+UAARYJwC7ixKck1XvzfwGYinpYSSy1DeKX4PrWZpMq8Yp2z4cAOTLys1foL9PGORiIKlWy7RTV1hgU5ZlwAavzEUI6Fzb6NAwBe/wcRnBRa7CK+5cuW7/6DhOao+xOSbg8oYV3oIJMNZxLyjeOhxxt4yTKUHfusSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733330754; c=relaxed/simple;
	bh=2hyTsDvKZRR6XqkUCjSK6suuT522h5EmTOhTAyaBmX4=;
	h=To:Subject:From:Message-Id:Date; b=sXisG4X9E9rv/w0mQO18bb1t10GrE7BKST49QJwF9rxh5rQfneEsmTXX1Dk5xkXC9MGaPC5hY7KYTpIW+SXhQqOXSzuPxKUDu9FHUOZZOeUJY3gzsRpzWFduf1PDetcZUhV4TqYXNVuTv0caOBI9ytNgeYIBevIUFBLmyuXj4yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSTKdr3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSTKdr3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F74C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733330753;
	bh=2hyTsDvKZRR6XqkUCjSK6suuT522h5EmTOhTAyaBmX4=;
	h=To:Subject:From:Date:From;
	b=BSTKdr3wiL3u55H7tR5dBUXIYBCqUe3wygEWGh7LIqjMNdexCbpIesji0wuRLSacK
	 LtapReUWWMUb6wZtu/ZGG+V7czTcD2xnBc95PJEXG0C2vBeuwMDHRxgjZO8WnwGb5M
	 zr0lFREvk7SeEXhFxnKdVPQbCOHQ4NrcJEn5fMHES2K2cnMzSAo/T53+TnAD+j8LUr
	 IKX4B4mwN4Oe401L26tk3GRGIAuKc+G6BhBYTaZT4GVl59ZznFRzqOhE9CGsanvmUA
	 cjOnEU1t7pxLIhON08f3cg3auQtXjkGxW2c9C5cFruOdMNAWBZD3qX7QO466584lE7
	 riekCc9YToB4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ABEE7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173333075359.11099.5542868554753549808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c8ca720a1220d80c30dfb39dab79075be615eb5f8b669a60362c0b84e20857
Date: Wed, 04 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733330753
