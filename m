Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FF6417BD6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784555314; cv=none; b=qSab9ykX+JZIU2kSUzhElmuUe669mK4oby0J0oQsxUhTzd+Z+WLeLypreR7CC8h2VFFuXICnTHx3osqKMn7MxMUED/fzIZxfPgUjyAqHsSgpaT2CrdOf4G29aX1kIv+xcU90G4rgr68lvHxl+Ag/PhmkDa+SmAo8SbzEbl+WV9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784555314; c=relaxed/simple;
	bh=rWppD73kNsQIQY26w3YMd8J1vuigntFcyjMwGAyMdSA=;
	h=To:Subject:From:Message-Id:Date; b=fHXoQXNQZxhwIV4BnjkZ20gfWd+mBYsN8VoynL0DnlOT/JwE1fOW3AbQrHmzjVBzAuybpIFH7QktgbCdqQkOiEnCfcewiZv10tjnwzhmU0xD/QS47JF2a7dVP29lMACKDrXaPsEkeh//a2oalLjDIhKRHWdQyBlHMsGSoIRjQoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIkHWsQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIkHWsQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4915C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784555313;
	bh=rWppD73kNsQIQY26w3YMd8J1vuigntFcyjMwGAyMdSA=;
	h=To:Subject:From:Date:From;
	b=mIkHWsQx64FrUVuj2YUoOaRIaO6XXRnqErzxjt9nvnbf+k3Z7dxUK9FZdt0DZqFu8
	 f53kuxbAF8003DdW9Qlxh4jyX6iTlhHRrPemAbCCkEfQuIZd1EethfJDGXyrNMmqJQ
	 hcOnF9Wg1jOTEGEk3ggRNxQAMqSM6oa4j0MSBdMeukscG3rlhhG/fF6L1aG8OzZKLb
	 Gxh6/BSDIAHqsO3qHCaB1K4vWdlZNVoqijlvG76PgB6ZwmAPLt4Jl7W7Z2A9Gy2I63
	 52VvQj93e8MDXsXQ+AWfdqwQtcVSzn5M0Lfibh6L9qMOlWkolI4j/SaB+dt/HlFmTm
	 Hz16rTpVEWcgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF85EC4452A
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455531371.10761.12652516523871758387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40d90b0c6b6635802bf5fb81d947a5378e6ce4055395091f8252b5b102335e3
Date: Mon, 20 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784555313
