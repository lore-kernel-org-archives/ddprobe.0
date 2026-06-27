Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305C613B7A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782592114; cv=none; b=HqzGHprs6ENUJlB1zj679694B8cHjcV3LVKZpepbhl2Bzyrwi7sygO11F8GfRtQakBkE9uD3H2LO/xHl+9wttzrZxD8g7LovBioxXaNIU3HVLN5c3AqsPZs6H4DIMKdRKnIVGbORK9DCR+cGVxJTvzUgJh+m3adHW1P/ElgzJ8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782592114; c=relaxed/simple;
	bh=qQdGDU/ovALbVvFunk/1IbYUJ1IfDeclr3LU5MioHJc=;
	h=To:Subject:From:Message-Id:Date; b=IN6ntuEBWuHabEjcX0MLyQJgCqpRyW/98jC3BtgNXB3ad3B9tLxzd1OHQVwrcXC0EodlCd/deFQEdjTV8gUEjY5Ti79GNejPupHpo9e4+3AdMwquJPBBXDYU1vovVR4p0v+0EmP4kN8fwQjbPnFivGNY17P8JzUsZq4codfPjUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LK1LmJsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LK1LmJsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA672C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782592113;
	bh=qQdGDU/ovALbVvFunk/1IbYUJ1IfDeclr3LU5MioHJc=;
	h=To:Subject:From:Date:From;
	b=LK1LmJsHA4v8wwTlYm5ADYrjcNF6bBzQyby+ar/+Qdj7Dh92Wvdy9QZHEfMiM4SRp
	 tMnhJXvhOutkp+bDUHzUZv5zvt0X5emsHZ/lK2hZfwvnMx+4YMUPi9072oiA0ZKAQB
	 PN3C7bDoftGBlo8kmZy8Gs4PRXplJ+TRuekrRNa8ZgK1qLauOXSx6oeEQWbQir7y8E
	 ikOkD4iuY4aIWHduSEuZwmpxl2FFngdtUC4a6byouieVS8lMztgH0yBVGHOcZndWu5
	 RUyB3UNn1L13LOOpzSKqNC4sYjjEkZNDkQJ5EZgxU980h9Tdz8ocxxdDL6uD1aT1T3
	 NGu/s+r9kwwGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE753C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259211368.11640.486344763679526063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d1762a86fbbb4bcf693dc4072c637a1ce781ce1842d6ed13e8d8ae00fc1530
Date: Sat, 27 Jun 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782592113
