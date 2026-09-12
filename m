Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED0B2AD3C
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789177834; cv=none; b=rKrcLAZe9/b55zkpR/14fst2RS401QGs2Qe+aKDxZvVyqGEOEmQi+G/NVi4GuYsZ36mQVUUjcQBotwBQbPUvna1p5v17661YxbWJZPWYotISBj/28/JU5BGMcvKhZUmQiuqxFRhCu+ZRFzAVQ4paksFsv2dsOK7O5gIJGHb4pvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789177834; c=relaxed/simple;
	bh=h1cWm1ozRT7UR0Hms7qi9yxAqfcyuiAiYKUe7o6mXaQ=;
	h=To:Subject:From:Message-Id:Date; b=T/LWPbs340r+dpEVO9nXQg39YrSZ5vPKE7fxcmCL8Xt1SLsi16jvWGAwxrUbJwHlQFidL7+PPUneFPp3XGJo+MdiFv8QJwTdlg5wMwIqRwoEgi6J0QD8JtbeM072unWEeYCREvgYTFmXuTZ49rbfZ1okXkHhSESz0ZyQnYaj6PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGWoKp5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGWoKp5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6923C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789177833;
	bh=h1cWm1ozRT7UR0Hms7qi9yxAqfcyuiAiYKUe7o6mXaQ=;
	h=To:Subject:From:Date:From;
	b=lGWoKp5q9HEptywfk5LliExE/XS4uUYPA8YVBFAPShBnkSK4Luet1B70E0vK6f+Iv
	 MJL0gC3/gJgaYPlRDpsiS53I2nmM44M3NB7tvnpEvr5TLeRvHBrhGGU14za79+odLO
	 WDtQ+i7kkucUukwEbzzyiU9d08aXBOymJoF1298qtsRf8c8A6uFNGu8uAqOuwA/F26
	 sikzpMBwHigS3E8cGESgOzKNPI5tlaYE1Ss9GvMueyxAlj6IgHu/KQpF6ZIdwt+wEk
	 myl0fzjcpZrkNOZi2hThNm5wTZjlvnQeMkw30iToTOP741W4caX+Ex7oYxI24hiJpV
	 NXQx5k+G+SBMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0494C88E50
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917783369.8525.5985538249655950581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672b4af212806c81064aadb9f37f29f596695c7358f31da69f0e9bb73c9f8bc7
Date: Sat, 12 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789177833
