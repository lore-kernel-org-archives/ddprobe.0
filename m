Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49ECF353A64
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786140034; cv=none; b=h2PG4EVtYNOmW2cSnhzZcsxoeAjgkAlS8Puz3n/lCBJKN2ZKjc7bLJf/5ooBCB91QFSQOqMREv/B1PfAxDuDS/+aKg1nY4UjvRkjZHt4JtibGaAfaeXNSnH/xF0CEX2Ft8bE8PSvsAeEf1bj9D0dh9j1S4Yor9kKdgGnv8Ex9GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786140034; c=relaxed/simple;
	bh=VEU+buaakkoliHbxruia+CsJPRF8fqj7DjRh8PFl3PY=;
	h=To:Subject:From:Message-Id:Date; b=WS+MYNjRZVDBDUSns/vHrJxwajDtWvCpYk+s1aWgHAGmZkSh9UWdCyIzIlgXBF/mWWk3l7podFyyASKLIEg83RAqj9F1IZK26AQgOxn9HFY4GQH5/WcGMZEVDMhL+ioRrqAWHIz097fi5BwqdhYksWlhVM2AqxU1wuI27fWCCQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbGdyQQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbGdyQQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF45DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786140033;
	bh=VEU+buaakkoliHbxruia+CsJPRF8fqj7DjRh8PFl3PY=;
	h=To:Subject:From:Date:From;
	b=rbGdyQQ6gGX5+7FcGcbJ9kQQf8uIYYuSNaZ9ZttZSi0QOjq1KukTRRPdUaT9jlzXs
	 epSsuMGXX/wXK/gP5DSNWY3V61yrNAdE6FzTKG6WI7Q1OoVcbJ5MrYy/jM3RbnHvGY
	 UYfd7aUlv8FceNiDtm05tywyqNXGCon6BqWpcvpifapnYcQzn/zp2AWSQxhNh0rvNu
	 A6t6Ibu5OVShafZCobGHRhGcFZ1DAcNOs07vc/zGqUJSwp/4W1szUJA7MuJmv++NMT
	 Uys4PYjHNB/1ufwrT0+ZLffzQn3i0PyQpkA/T6rbddjqIkTaaHNltdTtWNsbbCGeKc
	 eLXaAQCWug3Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B804BC5AD05
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614003374.24140.5558507202274391836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db59adde57c7966b55bf8ff579b31987979bcabbc3e3e8494d6d20e4a331761
Date: Fri, 07 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786140033
