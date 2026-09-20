Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EA7345ED8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789919434; cv=none; b=jweY101QCo6aCj1bHdt1jLkbFoHjF2wAubkyVQL0z6926A3NFC0CjayJV36+Zx3CKjPbqrX76ZPDM3Fa5SYNv4leGB5bvpDJvxkAnAmRchcbIprI5XHe+PF++AjopD/BhSjNkki/+bbKTEnG02JCqdydz/PZWRqem5rJdM7CdIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789919434; c=relaxed/simple;
	bh=XwQjFKCMZ7lNPenI2uHNs3ip4zkepk1ZptzWPuLYcLc=;
	h=To:Subject:From:Message-Id:Date; b=k6R1BeQfX0tnZDzvOv1SyFFlfDNdIjf4t4CNVGesQekJ5ZA3PnoG8RdzbMsBhEjpJdUL4PyfyyL/fKAK04Zh/gHxuKAhlnLEGOGosOjsR4fqNV5rfLFqU0Lx1iK4Suy06hmKUuoev+lb8Iqi9Uho5mn7Z9/6mTtSDfHp6FyEdqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ld3HQGPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ld3HQGPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF91C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789919433;
	bh=XwQjFKCMZ7lNPenI2uHNs3ip4zkepk1ZptzWPuLYcLc=;
	h=To:Subject:From:Date:From;
	b=Ld3HQGPBskCxEZC45xN11arVhjhk5kJlyQoGsvk5w0DoS3Pi4lUmcOGniczeBQ1VX
	 VrDtsSYyuavgJvEZVx9rO7W/SlGDHuSugVB73mUrnUtAs3shr53BNJHA8lZABKBFHr
	 DefbePOCdnjHIzSW3zspcmrAhvBAK2AktS0Dd7e7j+UOHYOuOdIQxRC3TIh4/Yyjk+
	 Z3OEa0jlvG3XI5QEag7hTuvNOejZQXipU3rUOhQAReCNQXwg6GHm4jWS/H2V1k+xOw
	 NQVIKx4kYJOCRhsFbCMwCkE4I5E3+62SV48lh7c5NFBENc6xxXrN3+dCoK+4lJHMAj
	 tvllWmWjSK4qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D09C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991943368.15637.8135778828883210048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d3385b95732e911106e11920570b1e23ed9bb0945504cfe21fbd395ad27122
Date: Sun, 20 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789919433
