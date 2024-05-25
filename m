Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC4710F1
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 03:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716606803; cv=none; b=LzEBKg6cAPHCWjpFilcA2dBNKhhjFyedln1nt/6iOcyq5P/OWF4NVS+7r9ZyKE8TWsv5rjdFYUiaM4xAH9TCPVznHHL9nX8laep6/hBV3rrmUWjycGkM9QqFxw9V4uy282yKaX5FRWeCdGNKdV+lq6PbD2lJM36o0IcUL1XkB9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716606803; c=relaxed/simple;
	bh=x+Ga6fDKXKcEgw5zefwbqluZm3nSWtc88auNPSvp5Bw=;
	h=To:Subject:From:Message-Id:Date; b=uf4mhWLRPLT9FIBvGjg4k/7Y0eRXOMYJboW3HoD4OEdkp3NfUaQ5sA1HkPg8GPF+Qoi0lHYZjxZhtXTn4Y9TclUOGDggsdFbOyrGVLaEYYUmBql2NrL+TOFb8TQ+1u+edCPpF7PIN8CSE0pNaWk2YpsfYa4werK+HtLLWNWWEA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXRmQYGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXRmQYGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCBDDC3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 03:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716606802;
	bh=x+Ga6fDKXKcEgw5zefwbqluZm3nSWtc88auNPSvp5Bw=;
	h=To:Subject:From:Date:From;
	b=JXRmQYGxrkym41eLjYi5p0kkxaoycSzePCi6Blk7es/ojxcCR4g+gA4wI/jtG8JbV
	 B8qU1n0QA7A4XnQevVu4nWQmSBCvxHK5zBGCzJeVa8glxBFN9jsalMm2/CsFrNRidy
	 5ZYRI0iOpnRpwH/P01VWYLV0DlIDeMASMEct1HGl/JmHeJ+1BvCW6bwAYpMYdkkMDL
	 Wli9nRlOt0amWmx8wWbEvvpq4/U8Bij1asum5QyVtNHF8LJXyJmkOWX3h4ZKj6EYCH
	 TZr9iKfTtWWg9ULsH0oivPTqldrOok0oZZC4A+Mov45mT6j2MkIb17flEDt+7Y4GiW
	 0YITguP/1pLlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3636C25B74
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 03:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171660680276.30265.8019507473629431588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196e3c53aee48d89eeee320436197e695a81e4ed4e272fa84d9a08594cf5a0a7
Date: Sat, 25 May 2024 03:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716606802
