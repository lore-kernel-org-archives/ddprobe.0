Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B71F39FD9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737176754; cv=none; b=VNDZJl2BdCaHNSVvs4iNu2X6VyvdZpmRdlAkFx8DMkuwPn6NkLXrJBLc7WqeL/Xl1iscTTRoZ5bGpnctLW8DVmQZsFWSv9LEg41bLwN0Rtlszccthalmm2JY223cwlLz+huI96x89PXVwYrb9lqGrKDQpvFWFOyr4T3btf1kLTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737176754; c=relaxed/simple;
	bh=6nbhSakv5nqrAdnSfVKOSGoiPDHEiFcg0NKoJggaNb4=;
	h=To:Subject:From:Message-Id:Date; b=CC82N7Cik5rZ3wuR0PHXkL9/8mUkBPasE8ArM+INgK0WmMgQ8aliVonW0uQhepBTY1sUv15gU4qkxR1JdUtVB7qbej1MIBu4LcXswz1kj47thsSq58SwK4K9JCpczXjm5HD096P/20rzPM7T1ERMnkX+6o5qONxv6tHcH5i5pqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ph/qiz3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ph/qiz3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4A1C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737176753;
	bh=6nbhSakv5nqrAdnSfVKOSGoiPDHEiFcg0NKoJggaNb4=;
	h=To:Subject:From:Date:From;
	b=ph/qiz3rUJBJhmIjVZhyLpHP67WP4VQVKtOSlnGV6ZC3B3wbfMeznNc0z9dOhKHdJ
	 oLfIxf7KDo8BKyDcwMYRk1BdqZEEEsakCG9ZFaAhAJvkjmRzr1V8tc39p78WGk7V8A
	 qYhf3Fgxs8a4eliJGuclC153gF4WPDqgFec/Td0MqgbU/bVv6bwV4T2okAMxQfTq6g
	 ItGWme2txqNh4bUF13CXmBFiemIwRheXlL8SNCaF+cqlAzwc/LE48j/NJxFUUTqFmW
	 zXs5GLJkBenaFwxH5mTbjDMK6MptLG9CbqRTPwmqY0zybcEpC8XvcTPIEhnoq5dvkH
	 9Hwd8/Wyo+mCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F71C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717675359.3230.11444650222482218366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3dacd72c26e1df459ebeb3124c294937b110e0889dd8a82ced79906864aaf72
Date: Sat, 18 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737176753
