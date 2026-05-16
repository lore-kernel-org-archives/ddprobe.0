Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195132EB10
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778926234; cv=none; b=Vx7yk5jZJbSicz0plngtai4mVtDOnemgPgWX7sLDSU6U8mhTORHjIlYgmVZSiKHrl4x1BK7PebyjmAh8b8nyJx1fWPJ5NvLaMr9mMZKgsK2Jncd+m7ETj/NlW2Kh7TeQ7Zq8GqCsbzJaapcrYCKgCHLtAzgK2FVyLrCqfLOd0F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778926234; c=relaxed/simple;
	bh=91XYNjpwe6TJOATHI/M5pesFBF3p8uArk7oxDca/0Hw=;
	h=To:Subject:From:Message-Id:Date; b=iNygSGyFdPDqnIc6+DbXWdyQqzBANrSOncJu0Ck+1MsqL+tHR7WQwW3tVkf31+mYrzbQkzTVZ9RHsE0njzDccF3LsPwYQKTvLEnBSQfFrM6KcQZurTvns4zRb4E2CJgez6Ggs7My0T4qNdYUoAsIi2N0LBQsay8Uj/U13xXvtjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANKhO4U5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANKhO4U5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F52C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778926233;
	bh=91XYNjpwe6TJOATHI/M5pesFBF3p8uArk7oxDca/0Hw=;
	h=To:Subject:From:Date:From;
	b=ANKhO4U5p6V+XGprJ7SmjW9omYHtu0HzTwn2iLnc5Iw0JQeIeHFZEi7Q2JXD7N/bL
	 H8SovV6qpfv4icQJbTVCR9Gz1rWvztEcVNblBEyEban2/Fvm2mXxxv2xBEcoJdFHRd
	 tej3hMVS/OoQ7cSfMINySPm7SdOrdEbHTnYe7vJIGaAaLalg5FALyplb5hez/qDq5O
	 Rli0A5ORSVomrSR9j6dxJ8xNcXU9mNJIvboZQK98ShppFAJ4kYVnBoiRNCEZorSH/e
	 6IVSQobQtXrVz3IR/pZiV7WA60QGJunR1oXw3BBctXW1tFv8lyCstQvT/4g4c5FbK9
	 kwM6SarZResAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17EACD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892623371.13543.8029373785063686823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626c5d89fab842b3af6494840caf07a0de5fcd21ddbd97168fb9d053af8d7d8d
Date: Sat, 16 May 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778926233
