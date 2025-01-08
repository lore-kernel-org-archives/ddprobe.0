Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8529443
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736296554; cv=none; b=MrOXK5jOG4k7m4zPnLcyV9NyjlhWjMnBw3MgjzC+ZlKO2x/PvlSwp/2mXE6D+w136OKZc7THsw4DfDy9hTILOGQ7f/v+/nD8lCHOhtlDTP24zbsqOGJPIBn3KXBeBYeni2aS3nlD9G+NC5ajDyDfPtaMlBQVrd2gxP1uxbKsE6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736296554; c=relaxed/simple;
	bh=fCWhdk3zwocHJSauyZp16QPxlgdTxTJ6E29n7eQOIS8=;
	h=To:Subject:From:Message-Id:Date; b=l1uWBKBariP77zrpySD1PW0TgG4agi5vKqP9+Eqr/eFg6MHRBgwZUn8tC3XKqGaqoBLT00GmA7Pdak2ae/ml8JB0dQjtxcO+UExdbWvvW/V2Gg/e8WqlDCw2/5yN27LCzua/sbiWItZGaa6QmHLr3CsxJETidREgQLPZGZK+ag4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ruw21GC9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ruw21GC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEE0C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736296553;
	bh=fCWhdk3zwocHJSauyZp16QPxlgdTxTJ6E29n7eQOIS8=;
	h=To:Subject:From:Date:From;
	b=Ruw21GC9t8O3K04mk2ZoRpPgYCljh269EHoMV9a9dIlAhH8Xx47vVTbROmFKMYCx9
	 WNvJ5ESs1bLckf+v66MwnEWdCVPb33y71+6TEx6UXD6plWnz/KXyzUnrXZ91LaiQFq
	 zthxEh1xljgHpXqPgQrjeFfpAY6JyRcrLDhjrueRCiMyrLEwiKr+gmY0Oof7RNiIkf
	 S+QQMImz0ffSm0VwhF2uPMsloMFQQLrJa+rnykm61CWdbpADND99s2tSPWasgKxKXu
	 1HegnLiDsh+9GlAoePZi18roaXkH0z5K8mD3hiffDsb2RANWdS7/kgDREJBVndIQi8
	 gDHrZwji2NREg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FBAE77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173629655360.17265.13531738807251408821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c49fd0a718a984e9307a2722415aa49c6870fed5e98454069f00aea5ba7a437
Date: Wed, 08 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736296553
