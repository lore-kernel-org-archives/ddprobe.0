Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4E01BCA07
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759591794; cv=none; b=U73a2uT5xl7lprJJaNWu99oQalt4ssgg9ZzJteGOlkux9Oj5VkvdQvIxMkYUz9PKZVxfBJPnVCwf2fvIQg0sK6b7sC91wnEsYC+0G8WxFnyaYuX1R5WhwCy73Hsy37emKLqf2OISB4s6Wtqzikj6JL4P0QbTi5/jLDdsmvqa5ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759591794; c=relaxed/simple;
	bh=X+FVn7HR0dWStcY8hN7Hy63PMx5et7aicicCmEIrWzY=;
	h=To:Subject:From:Message-Id:Date; b=g04R9NAtE9Peqmwugt30RgpeLoY9795fdQ7DYMVZ5LiQMbEJIqKslyv/nC5stqilfDU1AhwyxLzefTryfzUmv6gIPuueHWdbO7cuM0V/FtOop1eZrB5qT3/SrQmxSKID53EY97TvTVrofuc/oE/cIgrjimIFyW3OVfhJI4NQTB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkgcO4aN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkgcO4aN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7351C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759591793;
	bh=X+FVn7HR0dWStcY8hN7Hy63PMx5et7aicicCmEIrWzY=;
	h=To:Subject:From:Date:From;
	b=fkgcO4aN6RAN4+58IIZZTRGzuaxHs6ePg7UvKzwFrHorfPdpjKdv+Oa6Se75m7V3q
	 Fxsa6Yob347oQC22hS5hmI4BC2Ae3lN4weT2ZtRb9RTKj52f2ajUJOz/smwpUGkRvU
	 Cv1RYbFzepIetrIe40EcB7SyAJTWZDVnwm1WGO2/ufmhnhzKqndvcrj8CMtud9bLl2
	 J9UOahvQzkm+mjWFi8PFz+78yTrhY3vYoRE8bIE97lANbOV9tmYMqmc/ixKn0ul6th
	 C7Qm8q63UOhI23QxsXI7ndaAZuX8IR/PQBl5WMVKcvsEQQJQrfnMS3AH5A5Zs3l/pJ
	 mfNF8if3RmtZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92425CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959179357.17953.18096696847898293285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c4fdbf581d94fc37aaa1c49606f186c75a27a37f9b0baca103b13b1ae6abea
Date: Sat, 04 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759591793
