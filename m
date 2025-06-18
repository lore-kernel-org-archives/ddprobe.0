Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D5E1362
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750205394; cv=none; b=HPTOWA9au+uNneP12DstfoeK0cbtHm7hT7PzweSgLiSayczeW0ickSbSMQRDH7EI/hs0urbtYxImjOkyTWRBAqDhTiDabL0QPodIwhs+mbfkw25P0OkV/k7CxnsMV7CUvIDQiJCxDxyHUSQa5TU9sC89cBfqNCUI2or4B5XftvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750205394; c=relaxed/simple;
	bh=Plv/Bzu273XzZaafM2Rsm5mFpD3F5yvoglJexNLJTn0=;
	h=To:Subject:From:Message-Id:Date; b=dutp2oVRxRMsEg2x/i6kW+gLhaV1V0sYf3PEg/4M59H31gHOsBlVPGgptlonykAISXrE6iKK3kiMUbYXG3OQRn+kfXcNk15dHgOA/CpbS8Ir1fa9pWi4vBbe1hDF/VF4wQVwKQZauM8xPIfl0kkKCbtAvtsH8KEdfEGlvxEEO1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7Rdqgdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7Rdqgdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DC2C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750205393;
	bh=Plv/Bzu273XzZaafM2Rsm5mFpD3F5yvoglJexNLJTn0=;
	h=To:Subject:From:Date:From;
	b=p7RdqgddV5XKLzFyB0XnqDTVNCMMnXqZ6qgss53NodyCDI8ofPgBTUHZpCM27W1aW
	 9KbwA5DnEYdZCnSeu73RiPXz7vakImEa+FvYa5U0QtLvVVUoBAeTLdLyag7nD+WF6r
	 +A+05yVQQ2/c8jka5wc5mPsS1s+5o4zVb4zDmUKIXU+a5dg9eIchI6rPeENkERG1TC
	 sicmlMLte4Xqi7re/800Nunb+aGZpnjYd5ydAA6oesd6YEOrQkWAMk7Ib5w/NWkhV/
	 4k7UIl0N6rUjpnN9gyDNIEkVJl/kDgZKxpYiZNUDpaCnc2S/b6fcYGTR8qdLsreUoj
	 IVk5+t0jIes3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E08AC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020539357.9814.11665995976647749598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05cfd05d8787674316c6f2d1f853e3c859207d665289f99e9eae339bf939241
Date: Wed, 18 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750205393
