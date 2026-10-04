Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B27334EF04
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791150034; cv=none; b=RbrPVYzVhf5NJ4ehpeBsSrltbozILOpBSFP2W3wInpBCS6280tdCSQV4GHFzzK25MiMx6Kbk2VFc/enpM1HQTsx8k7lo76uvHueBoJ9abi6hY04Js/6+KpZIgGkMyHqZl5IWy8JUeJZQA9qxw0uBg+nrlPfVoXzL92mKmKJvTyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791150034; c=relaxed/simple;
	bh=58/HGHRuSrohgkQHMP4rvQVQ469lGoRt9ara6Wg8PsQ=;
	h=To:Subject:From:Message-Id:Date; b=ffqI1pW+m7E+sKmKYjBf7JPztAt6bVw3a0+wEAnSWGg3TdP1AAHyc19J6MYWlPzQMEhPEO6U/c5BebyoiXeZrSApSuqN1p1pgkmlPJfMet6dgzAzloVH1Ix2ICQWXMngixzuTiI24uGzQwlOdmmrqUCbaeyy5m8MqfzFcH9NUiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FD5Fy6kZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FD5Fy6kZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BF3C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791150033;
	bh=58/HGHRuSrohgkQHMP4rvQVQ469lGoRt9ara6Wg8PsQ=;
	h=To:Subject:From:Date:From;
	b=FD5Fy6kZ6pGfAZAfI7MphEy+BPumL2GDSFZPpyjLGpzBqeTtJyTWXhZS4Nrwqxec4
	 F2CcsTcvhQlrAgsMiy60Y1UPfslM6WnzNH7yFpE+I4/Ai28vQxUuhNDKsPn6NlRC3u
	 wLYLeUfdRwahgEalnVgvpFquBUSxhbbb8VMmk2EsBNHhJu5JpGH/Ys7uHkKjFGnSqL
	 1Zmv9wGEUuyw31UMYRXJj5zEjhatlwx9S+nDaRzGJNZLf9WZSoZVz0y+4i21mj+3q4
	 j7Upsn7SlVsvfBR3g0aoxTOgOUWuKno4Ire0Ui3d1ifPMR+5WPPYWQtukRsy8RXyN7
	 kmyWjIgy1QFKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5FECA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115003368.7346.4319499309846379841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b520addc61165681d4732b35b5552d3b9103cbf06ad7dcf43f931cd679c38de
Date: Sun, 04 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791150033
