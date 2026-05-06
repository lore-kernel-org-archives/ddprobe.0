Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8F63ED133
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778074054; cv=none; b=b69Df6osEfEntE137egEJ/lhHub5zZa0KrBWKdv/2jwGE6AONgm9OXrk7Yy/tT9XfuAXL9G4NBUBxeoNku1jCJSJ4QJ8y+6sBpXzCX/EdAKNZ5vEERgjWp4iw5JMj1tFarenHyPPqMVGpmdwlqyrB+OzoxDHrMUYAApq/nCjhHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778074054; c=relaxed/simple;
	bh=G7zo2dedISPswLhVkT4IUx3bgPPDHmfm2Nj50y4BDmA=;
	h=To:Subject:From:Message-Id:Date; b=V806kmi5gEo1xEG7Mpl4zHvBCn4Rr0qSqkwhjC0gchhYrT9YkqeKH3Eo2ohtNYyZEQzElPnrH45rO39wzZRezvFeGdJsPcyt/AAx414LjSKaIJKb6JIux+PIyv/RE0pUFgugVbz+Pt+BMYIFUs3a1mRhDaiqk/nGIgmgsT2bSnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o27hc5DK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o27hc5DK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BC1C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778074053;
	bh=G7zo2dedISPswLhVkT4IUx3bgPPDHmfm2Nj50y4BDmA=;
	h=To:Subject:From:Date:From;
	b=o27hc5DKVe+cICMUDug7iet8VnkgGgW80ZOweTYXywp4Rj+awxT2wg2WGb13egwNZ
	 171Wej6/9RDJeYDvTndrvFIYqg6uQUIgjJ83px8SxZ8k6C0puBziBU4VCGScT16afx
	 mQ9diQAFhsZvHcVNeIKcSiZ8M0J1RrF2CVzhpceBDs/5+3oAKcBPxiKMPD0IobDldl
	 5M7YNhtMJ4HzFuFWfXAQixNSwaQ61FOr485Tx3scSUO2Gei1aH4p/7LAvnEzVqIVEI
	 ww/ccVvjwLokHcPhQsX158fzcMqm7c2Mmunh1uZoRP3wh0uyKlW91KH6NEy+e9kcZS
	 pRVnI09AQM+4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB675FF8855
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807405369.30907.8454107136664300581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeceeeac7cbe06b80214da6c3efdeccf31fccd79380f20dd1d6db852fa04bdb6
Date: Wed, 06 May 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778074053
