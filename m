Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F3CDDAD
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720993823; cv=none; b=uK9N1clPQZ9wHN05xXrwRgKFSfkW9pbGBxCj+plQ5wa2GNhfCEqElo68HotycVVstzY3t7pzBfT+MzDsSXqrE67dKyyjAogUu8madAyU8atthLmfQBT8OQZTKlPUQoXctt6hlGo6TemJhpxfKLJYl95AaHEmvMtjl8TaCe3Rh2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720993823; c=relaxed/simple;
	bh=F6tge5RAP60bATF93aPE4ArsPcZl3hrk4YSbauv8mBc=;
	h=To:Subject:From:Message-Id:Date; b=Wv2gnAEZjUc/t7PMguZXfCYG01PgEt7g3ba+7HeUUpWint4o6bi1RqodtjAEKRGZ2Onb1gTE96qt+Jur/J4wQldxQM7aKQlN+NFGr7x0TYHsPYT+eclf7I7ZztFLtkop6vaq3Q7m9f4C0oCJAg+uPknICyA8adDxITAuCmP8p0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxmqqkiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxmqqkiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E7FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720993822;
	bh=F6tge5RAP60bATF93aPE4ArsPcZl3hrk4YSbauv8mBc=;
	h=To:Subject:From:Date:From;
	b=OxmqqkiOGegeA9HnStoKiaFYK2YRLGkSIQnx2LCvgmpbs3tTgwyfnBerPM4WjOsay
	 jgm+mNXsmO9fcd0jHu/pyD6d247WBIkV13XR5eWI5RmWVZ34FYh+0d4gwxU85AvnuF
	 L+cPh2KtiWhoJMi9BcfKNsF6pUtYnIXgZzX0kANneCYt54zLPHBccmh144mkiH56uO
	 IgvDSWIMz/KudCSBCfvP/FOElF4aFgKBoRr/y+cueB7m8gOPi6OTMJT627SzlOsB+I
	 88PAVlX7UVaylrZxFEAtW6kvBn+2QNLfA2E1eftTMz71+5HQWOngn8eCF6mW/btnya
	 IoQJ0E5Tkft4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE610C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099382279.24802.3023734422300252598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f892c18dead2cd80284e3050bd1f84e6102bcd274a3b34ed93b0cdc335cfa8
Date: Sun, 14 Jul 2024 21:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720993822
