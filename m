Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D4A1A3035
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736337954; cv=none; b=Tom2mP8HRACXTViaPD2c4quzQcMhE5f6avBY7i6jpjByV+ZV4yPuiNTFQbDSTOMT3U0zAwnypfQUYqHeIO6VxjHhqoSXS8tPtnpnbXRZa9VdRwHGq8YiH0iOGZjFOr/99YZ4YQd4Ad8ySNU+cuY2RUKDJ+/XGCCc0z80/4q5kIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736337954; c=relaxed/simple;
	bh=AYRyvmT43khcCICL/CeKaiguFU2FjwNuJeu0yY7tr58=;
	h=To:Subject:From:Message-Id:Date; b=N43l3munkagCNgkWwLsUzPxaiZueA3+r5jcg3wx0r5UiIsNIeC3ntWQG2L8X5uZBJb9VzSJyNjD331LqZttxoDXFrLldKNwxR2F77SsQxJWVSH+TY/+H+oNWQuQMyBrjtQR//h9TJVurbZ4yWCzIZy5zkhR0CAeEVSCTG+HqElk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz3S/5d9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz3S/5d9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB43BC4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736337953;
	bh=AYRyvmT43khcCICL/CeKaiguFU2FjwNuJeu0yY7tr58=;
	h=To:Subject:From:Date:From;
	b=Qz3S/5d9UuOk49STajXN5vfTazXWV4qNw6Jt03AuxbEO8pOge3fer/S9R5leF2Ff0
	 CZpgAiKNJGPgUQW05gZFXBBWhgX3V1X9LGXdqduA1mJnRkVfSesFmp0EZxdVuUGdzL
	 sXPC2mAfBvhuu2fWOYOxjnt6C22vSaRLDaEEJ1DtHsY7yawLsU2Pz4LF9H+hGg4r3h
	 7sSp1QpQYSD4Hzav0WuzgKtT4fboXUvohx2qXJj6WPAz+U7i422LGQbXHvTusHy/Ej
	 pPbol5wMfJ1B8ggCSMF/OX1ic0yptc2uL6AN4NJ6wQXhyENpz3vkysVBxFuqG9adpw
	 /HR6N9dtepOzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B9FE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633795364.7223.4598028797273813159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6352365dc540e3456e2b7d3e75269d67c5b35973c645e8221c30548ad931835e
Date: Wed, 08 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736337953
