Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294B21DC98B
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745707194; cv=none; b=ku3BOenTH4XD/oV6IyWWVrZOXNwhSRhcROMY5E3XdR3eXxSIugTmR+LH7fDBqWCZHyPUAs+HojS0Kv1GDRRJnOrxxdCCJeqT2hkCVoBVQR4BDbtEYTWX3Nef+5qzL+q9G7wXONow5+/IO6gSeGKjvIWHdkczBGmKygVUEGIupBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745707194; c=relaxed/simple;
	bh=s9NwNPyu9uu2fI1kYGf6TvR+hQYQqjL5ERpw56wju1Y=;
	h=To:Subject:From:Message-Id:Date; b=TPHIhcpnp1+756tSbl6eL85qc0AllHhJRVVEM7IeyMw0yIti95cGE6SWMK1ZCJ9DvoFC4TAGR4I/XAYI4GQoIs2yMAonRdHAaKhPRi5mD5b3oIDVIbxSTX+v4ywFFaz6dII/WQSW6iZ6KFcbC7dMAvS5r/O8WAahbdI9q73QgaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pF+DElzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pF+DElzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ABBFC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745707193;
	bh=s9NwNPyu9uu2fI1kYGf6TvR+hQYQqjL5ERpw56wju1Y=;
	h=To:Subject:From:Date:From;
	b=pF+DElzhVkEiuiVn3j8p8f9mCoUVkP0Of/Gjbd6g+mc+U/2rdeUoVxWdFB2Jo3/76
	 mFVIWC5lYfB36TUz3uw6fSteUmgkI/VjUwlbBhFttJajFqT/0ZGvZSp0i9oMmcfwGf
	 yP8WRfSJz3fSsAKVu+pedIxqgu00+xcxnHUpSNqmHvA3R+mGW5bMa70BsqSxfolZ/f
	 anoTY5qPl4ZWG+lSklBIBgDNiQLGKyXkDfuhdF98wH+zEH//DHQtE4mtl5gVQihiE6
	 r/oxDxdHOlCTO0qBYGsi8gKMcCF/iA99T9N+dkvS+6sMR785Rsx2ssXpc7KpHQW9s7
	 Ak/M3e4kYfmmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB38C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570719357.6201.10308647126644710918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47920543a79c2357cee87ae6742be8182e999ab9cd3ee6b2ccdbc41a29a4851
Date: Sat, 26 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745707193
