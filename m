Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2134145329
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754651393; cv=none; b=d/3GRGfrhD6CPS5YDQn0VbF9zogdu0uNgbKAKYUdIvidC5gU5In1sJru0LJK+9/XqwRYQvMG5t3SRwAoUeVXRJuHnPIlB+bj2kXfnfINBU8J0uF68nCA0ljyBrvhpCpJTt58zn1z2jw0IsB+Vlmtp9NS1xZCJaCyn2zsjnmv5lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754651393; c=relaxed/simple;
	bh=XQVvbeyFUflqaGVnM/lLoOBkpurbKYEahGNatiH67Wc=;
	h=To:Subject:From:Message-Id:Date; b=N349YxU1PZU0mEJoK6PMRbgUSiRDS84zZsrxykE1JYbewp6o9rXwM6gTDtdkDp7arhNm6TrWutOw4Gorv9bpACoplSv/jmlCp/AZCh3W/SPhTJ7K6pUwft70gK8/nJuI/1gG4b9VbdsGoXkz/Uv0Xw+hlEB2GuAM3S1aCjHnefo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRXrqVLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRXrqVLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC33C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754651393;
	bh=XQVvbeyFUflqaGVnM/lLoOBkpurbKYEahGNatiH67Wc=;
	h=To:Subject:From:Date:From;
	b=lRXrqVLHQtItcWZBoEDXS89fejuK4I7tAOOBRToOE+Eky27nQ1WYII3V9yPwK41RT
	 3f9szm/xW76Ez7WRfgypYwLq1BgCid9rKOu0IrCoYLqiewPLdW7JP3lkL7nBLaNC8c
	 wY8KjfZm/5zD183uo+AYborAXtNkqTcYEtky8VADqOjnw3YXPUqXWiBREqlFloID1m
	 HXWPHff+5TkQYOE/8xfTuJfzPVtf6FygXNBgvnaeyd/Kuz5Arxjnsdud2VeRUdzTnk
	 nZSJk4Awg5Z8v46qRv2sjq+lDzLItGy1ENZH3p45VAyUHjABS16uV+o/OAvSaEQnfl
	 DtEUh8aNJmEhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F691C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465139357.12623.1204460806237298447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37cc665525662de195f95df05d49e09bbfd1408a5a9b9cda53bc2d76919499d9
Date: Fri, 08 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754651393
