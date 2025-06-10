Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392991DDC1D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749523794; cv=none; b=pWwvmvBesZuD0kCYMiFsHkyAKLlImlIu92VllDjK9CeI6c6mFfKckX6r2JVT8IuYWvt2R2PPT1wwXoaiO4UH+seS4I6gJER1iXv+5S//I1O61hWIJDieAiVQ/ySUdbPvBP605BcA0rHqM0hdMJlay19R/UQGdeHL4vAu9XpnQMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749523794; c=relaxed/simple;
	bh=YsC+zjRUuANs2u1nOC+HXY5d2oS1EC49DftM6+6KpBs=;
	h=To:Subject:From:Message-Id:Date; b=XLeDY6p4mz0aJcN3UkeovIEmV3vk74vZsrSuVxm2uLMg7ti0wvDgloaPqeR48clsdUu+Vu/Q60anXEeXseYFxcIMILyJznR5DQ8T9Z7sOYTkllXWb979qRfIPMcLje1nmhCwmMSyu2RD4IXpKIEBh/DlNLMEEd3K5PT/HP7AAs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+hLwLlY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+hLwLlY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14A9C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749523793;
	bh=YsC+zjRUuANs2u1nOC+HXY5d2oS1EC49DftM6+6KpBs=;
	h=To:Subject:From:Date:From;
	b=J+hLwLlY69S/JVKWzvBay53jeoDFaefu7r2HoKvwGJs4pl0T4jUrjGb1DI/eyuIzg
	 ckhDA9YpnQ8aKjk8aTlZ0h7cbnikHRZIZCsUZ+UAGv06OEFez4yfurlBuho5E+eys3
	 PW55sblmUjf7ZVOmSiA2PTLNZY0n0Fuk805QtQaN1EBYMzA1E4AudtjK31kEvRTZkK
	 DqJWQ60DiIMYx/FJdkikDbyglP1jHP5Vicv+w0wtX9rl1faEHmILNeUGVVnsD1lUxk
	 B8WfTbwzkV39xjbvkOs3e4JD9Mvwy4rVLauiWZWOrWXznGvH38S8qK0JOJ6DJc9Xhc
	 XlBU6mwF7thog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F351C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952379357.997.3903038799664395054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a339b7256242dc1aa0ef3c07958cedf394f5ccaec6bcee3588f72662a3f1071f
Date: Tue, 10 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749523793
