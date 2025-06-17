Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E39249F9
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750158594; cv=none; b=mHeqDfBmVUcwtKKknUXxgNZK2riemKkxXLbNw1pOnmGBBEdb5WP0ceBRz6LXeC7wMdUprfa49YY/BW1nUWOErPqK1j9frHQPmMwr7J1Vv0TiOsoJfLROhHKqaBVyUzXaEn+5NfdvVLCbsni1JswaMgWi/PFt2ThKxmb9u7X4Oz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750158594; c=relaxed/simple;
	bh=ckT4RYWYFp/LBEyowXvgtX1sBYNu418okoH75eHBSI0=;
	h=To:Subject:From:Message-Id:Date; b=aa1cIlaN4fOubE99bb47rqE0zSFvDi/LBqQs/IW0oVwxPQlckoh6XszX7yVxlJDaYyOcG0N3tnRcVJf5O69Rb8nlx8smqJyKQwlTVyb3owywFWgfYYp3twULx0uSslU3sgeofZKGMdzU/b//k2Aalr6POfr5XicAvwP+SuwSzLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvZQNAEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvZQNAEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EFEC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750158593;
	bh=ckT4RYWYFp/LBEyowXvgtX1sBYNu418okoH75eHBSI0=;
	h=To:Subject:From:Date:From;
	b=jvZQNAEfnT4F15jEWVFEFaa1WiAmdl/EcISOs919dc/N2R6iqvL2F7gM9yKfXNnvk
	 CtUifjKizbkWVeY0EUQxI4EdqshGYHfB3LulTyXRb6RzmxTVjH0kaG05iZFU8f8hx2
	 Tp8FFPDnVE4J/TcU4gY4UiatwbWVOHf72IIja6E8uJqKlrrBN4O29LXgXEKLZRFngv
	 tXa3XKkllfblvEHIrce1dY4dVsmJrW1T6E1n2pRHYLGA57m4aT511l8QC69/aYsC+5
	 NdBBSUpg10d9LBpSPyzdifdIO+/19o5arNQvdu8s0b2J0lFoymHjmL5dcIuX5Olfl8
	 YdQj2z9OqDdlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F488C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015859358.32620.3498515564127591576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386ab33f09ef5eaec912546a26e90aa3de75c18d13507853ced670f8ec8e872f
Date: Tue, 17 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750158593
