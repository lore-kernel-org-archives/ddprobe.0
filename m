Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBD449622
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720819163; cv=none; b=tG4VG551qB/4Jz9cUw9l7/AEi24DaOtp971UOpsPRx2rv2xSJ9zoAqahjQUz76Sxgg29Ig1M1ycJei6qoCAcN4HHl5GWZoxyPjrOiw3zF9CswQ6wo+oN9Lkckpkoo5lvJAK0ACliPv7ouGDnW4GWAs1kcKGwN7p4c2Z8HMHQ5Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720819163; c=relaxed/simple;
	bh=HR8iahULrvqVap0zeqwMEHWI54uLS37DP6BeMQ+MWAg=;
	h=To:Subject:From:Message-Id:Date; b=U9//EUjt9Qpr1yJnCHhWDpw2DsSV+d2oju5uFg+yXGwhiS0gQoILVl95Xp1pwnyNsQ3HmzDM4/Mc6P5bK11jjaAqTgT9BRQ0r2j5vuV12py1QDJgaKtyIS/033BrnnXfa0p6eCS5y7drP7Mt3ybuaX8WHiDHQt9czOYt/TfAST0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdUMTtu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdUMTtu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4716C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720819162;
	bh=HR8iahULrvqVap0zeqwMEHWI54uLS37DP6BeMQ+MWAg=;
	h=To:Subject:From:Date:From;
	b=cdUMTtu1IvSUflTG5ouPOU/Nt+MkYYAtTCKdGIijTb5y15THmhM5p9BFmljMKrh0+
	 xGxjJ46+LKFlWdH4UzMNcKF2uU2geaoUDELcuIqWgfqri8+kK6HHfitxWfpZY5P7mC
	 MNKZIF/1PNQE00h6P5vtBA+QJ1rlsXtNDLT8auzDBzhzAFnEbtbgtfNsJPa+BVRxZ4
	 VL6Bm/EHxnWG/Apg9tPks92qap6U3vZEWDPKqQWkatFMF3j/MXVb9Jmi4SDwE5NWuf
	 DXyIfiU5FjgZ0CH58anxHExz3JZePLEemiW/nn5pgdZ7WGMSOFFO1GIV/awcoz7l7S
	 xsfOLLWbjVofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0209C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081916276.6201.14639687711359812535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2955a74fde3b19a5f828aa3a001126081fc38e9691dd295d00e528b0a1a6b7c
Date: Fri, 12 Jul 2024 21:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720819162
