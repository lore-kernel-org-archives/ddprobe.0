Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C72432D0EE
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790231434; cv=none; b=RkOvYySIbPeMu1/7DNYx+Ym1N7AjN1dARU1xXuJb5bFPHsmrm2K0/PIIrYN/ZlDVY7/lmcrn9gJNMpgUVsxx1GyxrJ6lPjHXisXcRlXVKE5Wh688x6N/oRQjfLIdKuQDW0piDlh/DlNBjd2Ukm2OmJCm9GdvoqrkMBsv3bCfs+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790231434; c=relaxed/simple;
	bh=jnxngt2KdYdAMobWMbzY4j6doq61G2oOM/tH+q+5XhI=;
	h=To:Subject:From:Message-Id:Date; b=BjKjaoLAbcJpUpQF4vqK+b4fUgGs3hx9/73CP7xpNNyesFW9xTMapqgBAbesPMg5Pdrd15E6eVsTnggBYD0T5qNaJKu30OGbLwfrsTuyBpClEtVnwj4LFkIDSbgS5WJwQbWa2O0g4muqRy2huEb1U8qS6CaYgBoLyraPcfO/Xgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1sLN+hU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1sLN+hU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5143C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790231433;
	bh=jnxngt2KdYdAMobWMbzY4j6doq61G2oOM/tH+q+5XhI=;
	h=To:Subject:From:Date:From;
	b=q1sLN+hUFmjoiLAJWO6POQULuwOaR5K6yH8cLDustrP/a1bpK1LrbP7wmytDi7x8m
	 1eNVE7MExvbUp3TRbaM1wTY8wEKSDGFN6mGL9LbLGNxxhIOiWCLyW5hfhkqnbMe60D
	 b/xYQ8wmC7Qz9nsjH5n21dRWcWrMVwWXP4iexsggYsQ6Gcyc7z64I7hFaZKCTOLBJN
	 M4BSvdAuGOdKlOg4C66z+IKg7LBCBUhjjcugIS3QZc7SN6ugBNX+PiOa+kp1bRfAaR
	 D7Y2seK9ssDH0BbH4S6iMk/lEAarDBhad5wWmdC9KO0YtP5OG1qF0V6D1y+rl1wPp/
	 K7Q/1lALrN/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF1CC98314
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023143371.31027.409355493611524762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece75cd6e52645007c316c89fac883f16f0f448f4910ffa38ca4163f50a9092c
Date: Thu, 24 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790231433
