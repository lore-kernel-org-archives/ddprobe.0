Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4A81527AC
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735903554; cv=none; b=DRA5JH1nqqdXA+TpzxCm8/Lgl0MA9BMxCWvUl9Pw04Uzv54o0yC7HaG3NN6LAQXT+yqm0ay7AUW7tdoHZ8ZEzsNcjgddePMuFBkqODeubE3uJLIHUg4/a2h1DTRqyaEc9xzp/ue7Eo3b9xTRK00e87kc/lLM7UP3i18QSvnTLc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735903554; c=relaxed/simple;
	bh=sfq/AJ1x2KBziBP3ysJBHMso6bjBvUlHc5luriJ8Eis=;
	h=To:Subject:From:Message-Id:Date; b=hKf6Gght6Y+uHkuDRyejEdM5lr1b1qHqT+UHbt98vsaNq4Ar9p2XnRdVUHICPco1NOPOmnoT0Pp/E80c747CaXXEeMsV791Q4Bx0d3+xV5OM2d08XLa/TN2r1LC/nwgqmWWW3HE40Fiuikk5lq9bburcN7uvS4yEMna5YXbNKco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6z6HOku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6z6HOku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05E9C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735903553;
	bh=sfq/AJ1x2KBziBP3ysJBHMso6bjBvUlHc5luriJ8Eis=;
	h=To:Subject:From:Date:From;
	b=V6z6HOkuoIZKhummrGXuav9DhjhfM2gmMCpvnM+Eybcovfvx3W94WreQSdUrpP4gP
	 kcKdAnPobpxKsrjr5P6Px0wOJ7x1PrDeqF/kYIkuce6V4AwKoZdetwLdEpLX6/fc3G
	 2kIPDzMplNvZ0yxam/ZWQpDnZI/apWliSmIi6BfR4AYELFkHn0fwmk3kc6kba+HWpr
	 AclGZQGH1XtYmcRiBBYQARI7hZKuvtBq2ADLYm8V9DgXpgKIk7pqbUOarALrKkt0a0
	 p59TPCm5A2fUuo9Yi377ZYD6Ii7UoZmF4vZ9Jr9YA3Wo8CFvhL1vwjELVafT8THlf7
	 sP3uscW7XV2qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD9EE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173590355362.4902.15455636891504136758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b714254f400bb4b739edf05b25495c9aa94cc22ad94595613a72b1f20b36b936
Date: Fri, 03 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735903553
