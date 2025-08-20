Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D418D7FBA2
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755700193; cv=none; b=QhBQDv6bTpdlaPYNwdDx0y5lUeqHqozV6zh4I3UWHlGFlRuffDc/c4e+BWeVVCJXhtOcQAbIesVBxfWvhfaqTLs/274C6WPXsLH1e34f3MuCv2suEG8Kj9ZQyQsyNAB3UT9GpGth8+WLmuUr4s/ZG2c6g5f7MfYyRLSdC1dB0lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755700193; c=relaxed/simple;
	bh=0wyR/PT7w2UgaLB3wRTZMeU1Dv1bBEdyy3xBMdz1DsE=;
	h=To:Subject:From:Message-Id:Date; b=HN0j6+wDEnHQKG+kFfdRr6wyjT7RblSSseS9rBitArvWKG0vkm7eE1OZ+6kvhS9Xh2iLGoN2TC3Be4SUNLmEpcdKokgNFyG2+rrED1UGqEvAnPQCkUueGq/J+fTC3L7mutjt+Dmmk9ROm9eDQWJRTdt2XveyDxzdxiZgW0guW4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+6tY/v7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+6tY/v7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B06C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755700193;
	bh=0wyR/PT7w2UgaLB3wRTZMeU1Dv1bBEdyy3xBMdz1DsE=;
	h=To:Subject:From:Date:From;
	b=K+6tY/v7NfeNkar1baDlFYwb96q4j5nV1xDOW9z/Wv+MY4hNhHoHC1KdmH8ngLZYl
	 XDSNaJ2O1byUEZMmhfYIjDvKx5+s7MFavS5qZtb4nUb+bANtgL48F0a+2DmIGIk9++
	 AD2GliI1e7o/d99pV3cENK5/6FSjsGvbIhZ0nUwsZ1NYhP5H9iDiy3sZ9Eg7Pur2Wn
	 Q7aZav//+AhmRNKDZqsbUrYYcX3sbgY5nEmMwD7NgHtkZAmqTVkpG/FBWtPj8k9Y6n
	 xbApGruVIVluK9AIueiWyCYX9Xj0Ucb2THpxkME6rOfNQHFVNekZmng3hOtIuY5QWl
	 uV/7J73rbqZEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE4CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570019358.10267.7641190139445419994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4632ccdfffc48a378021de3f25336be78e4c963cabbf7fd460ea03e1852580
Date: Wed, 20 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755700193
