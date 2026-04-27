Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331F837B02D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777275454; cv=none; b=iieqUMuLrNa06/je7Z9yniIZ8uoUgFLqjYAiXBf7t/t2NwrWPQe9Ij2Y7glEnCs0kMUSwM3owcy7xN3K6+EI09XiTm92lhjpugGDkxZSkmp2gGHH91WiFLzOeVyGWCmILvZ5g4lzrcG3T6CpD0ZgeAHDjpEyItnjsCu0NY7If5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777275454; c=relaxed/simple;
	bh=EOc361FeQImMu/FtywIZWcPlhnsmRshmUxaIdKhDiBw=;
	h=To:Subject:From:Message-Id:Date; b=QWFBhx2DqNgr3HdUOwcYv8neKxtUpthpCoXIkRl8vV10SXq7h2ZagKKQTBELJdwAHRg9lJmK+qCG3K19YwKAqb6WLLpQvqQs8QeTVpPL7nlGHvCDd51alDxh9xo7zqQW+70UGjduvWixxQqEZxRS+S+18JOgMdbUiWKaNAJonx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXRdu9OI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXRdu9OI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D71C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777275453;
	bh=EOc361FeQImMu/FtywIZWcPlhnsmRshmUxaIdKhDiBw=;
	h=To:Subject:From:Date:From;
	b=LXRdu9OIabUe1EZYuW3pVHRrnuCLmX9qWOinNIWNcyQ7CbVzo8+BJrypakMOkANel
	 dL8OvynJ7g5Pe79/LaXkxnw87ErEVGnw05QhoPfUrJvxSfv5FdDdusxdmThaYwQzJ6
	 14QD/L+0MRh8dhpIEMVoHsUe0INsnrMwM48N+m8O5i2wu47vbaHT9y8PrNO6bfgpVl
	 xC1GZTYdBbmyMVFJIjO8P4dn5KQTO+U3oNVHFTNIN1RTg9W689k0JKfQ3xOgvtQLJY
	 bs/27EGB9LUMM1Sl1uxX2Vh4c5+oisVE2GoEP4P+qlwV4viRsc5zkM944uo0OH9E7K
	 WmPJ5P60X55VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC05FFF8862
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727545368.15254.9057567532987777537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9749d42bd0bba6597d1f887cadad853a295b6e08ec09a65505c9ad36d95fc0
Date: Mon, 27 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777275453
