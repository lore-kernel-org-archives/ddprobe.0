Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5F42AD2D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738050354; cv=none; b=uyZx5He+KqtfroJbJuAU6Tne/8zCuuqbEV/A9kEoa9i3sPr8qww8q5JABbUe/Ge+xjwXsWT+1ukIvooOLgIHNC7z6zb9sjlmrlphISerbA8A05CDESALJMNYczHCanUqbPulbrce2xVVhUV/OV57FwGyaTFflYumT0pLmBvdDjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738050354; c=relaxed/simple;
	bh=QK/dj46bF7I9JHGby+YuUx61rKTIcE83mEhFdYi83X8=;
	h=To:Subject:From:Message-Id:Date; b=OVIn0iYpnOUPenm0pwUkemT2Vuwgs6ilN+9Zvw+/tJYdNKNN8JlLOT32XXV5bDB3qqhF82k+EqpZllCivB/s5356cQdXvMbuyk3YZ01jjk7UZU5QbbmwvEAi7AfuyR/DBjBxqu5GxxyB19S/dgn0slVC0KYdXDd88EC3aMqQ0EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=em0J6sbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="em0J6sbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B779DC4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738050353;
	bh=QK/dj46bF7I9JHGby+YuUx61rKTIcE83mEhFdYi83X8=;
	h=To:Subject:From:Date:From;
	b=em0J6sbsVFy4VS5sxdk4vxKTH10+L0Lep2LmZJxTha32z0EIWSz+Mk/xY5TrvCqUu
	 2ASSUn6e0BlblXv+jxWQrgJ1pO+ghwlTirlrJU3bApdAtEEvDetS0EebAqAs0qJBh4
	 RTE0RAHbKoKs2uqyNRIOdEfhnDrK7i5/DSQ0/tr/cAOwKB5saEu8N3F/oseL1wXaGq
	 1R8VPnF4diNlmb9tpOI16chscm02SDLq98yYexWDi1O0v1Q00Opm9hgUx1G6GDfLpb
	 UBRx2xi28+oJMemevhM7TqYPaU3wwJ79h+qlWOxkDP6B3+rLxbZrZQqWp6/C4l3nog
	 mn2jOy1mEV5JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2380C0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805035365.16190.4897554680183560382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b52aa55be2ccb2ecdfb9e229b11250cc80d1bc7fdfba368363a6a19d611349d1
Date: Tue, 28 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738050353
