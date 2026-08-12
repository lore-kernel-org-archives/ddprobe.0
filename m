Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57390220698
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786572034; cv=none; b=ePKYgBFEhjBwy2q/CtpKrWqoM3M3deGiUQcMyh8mJSNUKtDeUo9VEodL12Hxf2K0YgrdLeZiS9973Yy641GituOo927romcQCkvrNTzOImOos9oWujgQqQ68Bh1sBBio1uPYXpyoV5qPWvUjJyyI/CS/HpDABlqWPc8sdMpcapk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786572034; c=relaxed/simple;
	bh=GmAQsJuxEZLdXhias++F8dzqw9QDeNlR7SF4EYv2psk=;
	h=To:Subject:From:Message-Id:Date; b=PlHohsR3OqJUZAK0oYPb4t6nASQMFGWQEx60YiBmI05leBGPU97iJDLrw1ZOJouRluZcvUsWEeH7fZzEw0Bjd1o3+8NjKic7DoEZpSCvJIIeKqlpjtrEBMtikwQyT57JbK7d5me9NUTSvqKwXYMLz6rc2dDVNXwXGZellYpgTqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJ5I3v6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJ5I3v6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE174C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786572033;
	bh=GmAQsJuxEZLdXhias++F8dzqw9QDeNlR7SF4EYv2psk=;
	h=To:Subject:From:Date:From;
	b=YJ5I3v6LjJcyBILsNcn4j5AkDo41wLOw+a6MX23ifHdQE7FuQyssuDypiubooFpTh
	 bNG4mg1LDIReGHSF45ntNdGiNdssIs3ul+IOZE8ccm/uQVTl5JmATXxajKNMrzwFpM
	 h/eTj/wj6TDt7MUOI5EtkNg1+OBtn/F9JHfOkznNcEmVUDU77z1t9BQfhQkPYAhx0O
	 /GwGnG3F/E+1xgqMJZweAZqxH1NTawlJ6ve1mYf+4aYVBsZfkrEqlDkltCYp127v2q
	 RDn7MVda1VTYN3jfsE17JZHHymwhH6e0qm8/5qeEh9jrgLWvyMWYhLwlR0mNRrnB1/
	 hpTDK0YhzdaLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50A4C5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657203371.31894.12914793291027985799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49ab6fdcdf6852940b17eed73a8ddd07aa3c085ac1732bdb9bc64a32a755122
Date: Wed, 12 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786572033
