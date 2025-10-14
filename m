Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDBE2FC860
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760440794; cv=none; b=EK6+48EDyAOriePwlL5YfqmXWTRTNIYSyx1mFLiq8lI25NGmXw4Xxl4SF3A60EUmZOwJYKDMutr47hKvIML4NXQiNZFKcxWu3m82Eg8bmBA/g5TEcRMHnkxAtC9dh/Df+allWOdRcUXZFoQVsPotrLL4c+fuGZT3wTPlR7Fa/JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760440794; c=relaxed/simple;
	bh=CZ6E2vGBgUKASfu9yNAY9Km3zeZPpZQsKTRq5GWcgCc=;
	h=To:Subject:From:Message-Id:Date; b=ONlRSk4iJ0l0xNXijk8Nn8teHWffIL6cKgep1yqSsivc3kbDZL/HqvT2wV3Dx/LWtw5CLV8qTkXVaSoRweIS9eGYnn4xK63GYe7fN5/gIg+qxjRkE9ZPgblfeC9Md4ZPPHUxED35Sg099ZR5Z/yxkIkDTjmgQPoFOHQXTF8AHb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezfzhy77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezfzhy77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CC1C4CEFE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760440793;
	bh=CZ6E2vGBgUKASfu9yNAY9Km3zeZPpZQsKTRq5GWcgCc=;
	h=To:Subject:From:Date:From;
	b=ezfzhy77ERbIbwK7p5KzSkKzVvupxnrLL4qDsERha9eS7aNc+5JRsCE3XxbWvsuYG
	 uVJFuzpQJVWPyE7AYvJRh1BmDv5zIKKsnpFfGUYw6yAdSFwca1AH0RyuIaUwmzjOgJ
	 1R5yS7WjFqI2Hl+NUuoxfsSxwNW3L8sUf2FoFBKVgT4jXVpnz+yWCQYryr8jWxnBJv
	 fdwHmJILjA4yOzOluQIaBhJdkudl21gFFCQBDL9dD//0qg2PkpNrf0PKTiCm8jOom4
	 RNQ95m1G7U4c9R+hFJk8uq4rGigxSkY1H0OZekcdR3ahYU2UOpMuKwQ6wCZy4gC5/E
	 14VSIqLYIPifQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E71FCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044079357.13829.17958220909570392535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3465af9489ab8d2029ec9d78b1d0bd6c5ed7cbeae2757f408a0c527c597dbf9
Date: Tue, 14 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760440793
