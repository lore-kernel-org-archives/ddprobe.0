Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183158248C
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722182754; cv=none; b=Svhc5E0dgSbDsavZ4kDecYsnc0mgq7ndPvU9PqcAfx/qBsYdvTH+gy3z1DeBOANiWtQ9xZmwqDTfUTGp8sQbTUTPZkqDwXP3JNDj+95TKrdDnHhGZgz2kmTyFhAO0jItr2QP8l7WiGurHnzEG6IOZXAMpNW1TTc2/l8phdPDcws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722182754; c=relaxed/simple;
	bh=7ycEkSIPfZaojrEwkbmiwW1HvS0jgHBVPPuRXwquXqs=;
	h=To:Subject:From:Message-Id:Date; b=c/szg2fNFONyDPA9XBpJFi1v5GWNFZq6U97SVzMT5JeJRHbEzn1EtWbhoDdGxW1HWSOx/EDX6CA8OWLRNylK3rET48A4FXXg5BHI5Ki2rHFhVG+20hOs5nwV7uDqMa7yYG6jTBwTIDR5CxmBezStRmoNxfUQa3RuijlleMcGl1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRmrrl7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRmrrl7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA03C4AF0A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722182753;
	bh=7ycEkSIPfZaojrEwkbmiwW1HvS0jgHBVPPuRXwquXqs=;
	h=To:Subject:From:Date:From;
	b=MRmrrl7sL4UhE107y8EI6HDy+Juyc9Gf/Tyq4h3ZNS+1ho+xuD+fPgUovxRqVgetV
	 Pv7MMQObQ65ZrZcO1OoWcqVVIkTPbIBS2wPBZ6mHoVVfP4jtoA/k7l2nqo/jq8BekN
	 oFzBULGFzCjf/eaMnLCH9o5gVHbDF11llsPYPzehU/dzeKkG5djrRY3+Dnx8trIldQ
	 NqQr10tIoAoMrEs+kMfE4s6gkkETjZYktScTg0RlvU2G/1PJybHFbc4rHZNJky0oZH
	 tSLEibwxtj0EtzbL5cR9Cbg9d0tCs9j5YKeZhWX4auJBoHvjgTV2bXs9o6Y1aRGgGV
	 Nkfup1k1YYwBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE5C3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172218275357.19251.13825963079819968982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0459f274c902b9ea1f816a16760be570eaef1e712b4b173690c766b0f6a341
Date: Sun, 28 Jul 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722182753
