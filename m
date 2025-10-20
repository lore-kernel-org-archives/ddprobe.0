Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD762F5A32
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760962794; cv=none; b=o50JGAvBAAx7HNEd15viF3Ch3aNvzNl8pJkJH55ZxcEcDSVDzVSOpkMD+c2kFHO5Ta8SCpoVX1NkwAydapdv9hEdKsvS5EVrSIXdANDNOmGiBBdoN1QTKCpWleLBJyP15twdEpCwZicXTwdfLj9XyQ4WNkC//u2PtIkS5EPM3oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760962794; c=relaxed/simple;
	bh=dXIJcA20vNUvyOtjZSrDJkQ2Ee4n8B8spqKjZgkHt+Q=;
	h=To:Subject:From:Message-Id:Date; b=Wv/t+0axoxsqvHPlt1Fbh7l4+X7tykNsvNQhWbezGeDUHyoNlGSovc+0dHWxuE0Kjh3AUx4VVpCyD6VzVcXBPHYhiV1wtunz5shMwOd7+hv3pmJHWA4JanMuxStU5J0fN3EIFSAmj82ehB2L6U6duerFMZXFT5iEICLnIgGwegg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ht4EHJU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ht4EHJU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A733CC116B1
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760962793;
	bh=dXIJcA20vNUvyOtjZSrDJkQ2Ee4n8B8spqKjZgkHt+Q=;
	h=To:Subject:From:Date:From;
	b=Ht4EHJU4tzkA304G2NUQSybus70kYUe1VxgLfH9X2+wgHswxvfWY6Avd1vtFIKqH1
	 BYatHKo64M1sZrcLQg1m7gSHSIGq1Z8oCaZjJBrUg5BF6ma57lB6v9lDuk8DXrPk6E
	 pOC2UCXFNrp2jdIawRKCFWfUmtQye0R33VOFjSwVviw0DoHxJIWUjj/krn322bOCee
	 v0xg844Qds4heomI8KfABc8uZAiEV0TyGpg6Zb9UJxaRNBwE6zHdKTI0Sw9T7mMzw1
	 IyR2MV5n84n1gXLfMSu8yNVP28RVDdcNi1ao0t4hLjG9Sazsn4xIGw2NwdBQleLSPI
	 dwykKqJ7oXjoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96193CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096279360.31455.1322592409640765936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 187f64e521f686c857ff99a6df4563dd2af7241777f6599e506bfd2fce82982d
Date: Mon, 20 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760962793
