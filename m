Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF92301719
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784277514; cv=none; b=eyamT27NSzeqCd/lZ8VZ2lRKyfCfzT//xVa+KNbZNr3mJt1Ar+p52ZB3E1gcyiM6rBIHyRvNhOnagDtrxBBpS9tRvhEEJpgZS9mYxrGmIgPu5PZuT39lv7beH6ypYcpVkjg+Ln9xo+o+l+J2MMoq+07W0UyBvxqHpOs7pqc4fbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784277514; c=relaxed/simple;
	bh=fxcaufinRTdTFDMTh3wZThhNsA40dXtIG/kzi2MtixE=;
	h=To:Subject:From:Message-Id:Date; b=np4uz6QH9ckyrsuqx8LwXoiuTOvufYkIdQERjb0jbdJvPGRom1MhyfgmZjz6A/8DqXkZuksFD74qoGLKRMa1n7zONCaaCpK2WLXQdUX//vIMsddH5s1sdSfA1A+x1vWNC0O+vKvgfPGlDGWzAtOgBHi2Vi86RqVlaPxxV0MjUuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFwMGNgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFwMGNgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD927C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784277513;
	bh=fxcaufinRTdTFDMTh3wZThhNsA40dXtIG/kzi2MtixE=;
	h=To:Subject:From:Date:From;
	b=GFwMGNgJisFVvoMPjZDP0/38Znx+HBnqVwZm+e3DVyCoI89BfKlObEzt5yFDvfquO
	 8BOYg5e8EZzihm/Y6Dkp41QABgSW0Z4k9ZMfmwUbxIN9tc3J2C87jEc+XBeddc43u/
	 5fMm8cdylfhRvydYK6vT4t2BdcKNSkZQXzsOSvisRYXzW9aTVIW5S4wgzN2DF/m6zA
	 HrLSH/nJZxVbRXssTD7QDRJYsNwAJ64hc+5h+OTWcfOoYJ94VIkGiU51n9SIyy3+gX
	 0B157+HG10G+ZNQcHPH8xtiLWtyq6tpOIIF9nFSnz031BDRGsq19F5IoS1YXrRoYzf
	 8ONEP4y4iVTwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A26C44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427751368.12041.214636863910895894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9fff4aa7a4fd7bf05c96c9c4a07723a9e6e5d9156ae90d14eab5bf81018f06
Date: Fri, 17 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784277513
