Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386E8FC1D
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742805594; cv=none; b=Ny7Is+6BczD36Pc8tUppHT/0qI+L0f13k2ZOUhp2KzOEaIFIoyI/xF2zU8JNiCEW2s1VR0okVWKv0ZQ3p8/ADH2WNGtm48BTGkQ8dJk4xHJCblD7RtzmUt367yT9TbuLARBqQsYcaMH60hor08hmKntr0sA1kRsu0JFJkpk7Kgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742805594; c=relaxed/simple;
	bh=uHIzqO8CvvvoVCJU3XtYh7mdFY04PMknnZlq9tRXL6E=;
	h=To:Subject:From:Message-Id:Date; b=C9NbUC7tL322VWMZhmjdeQBpuAa8guTLRhw098utR+g/vkaq5wML9lfMBWX0jJgynlCWYd+fGhJ3YNmTwDE9qStgLyFzTWkojcfOCEZ19tPmOX1dYttMU8dwilcQh5nbievECWWdUNCZ4uGoI/aJAlKhVw1tQ3UKOw4uDcnfIi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJuFAZ3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJuFAZ3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9DDC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742805593;
	bh=uHIzqO8CvvvoVCJU3XtYh7mdFY04PMknnZlq9tRXL6E=;
	h=To:Subject:From:Date:From;
	b=AJuFAZ3Hct1Vk79IeCw9zyiFJzB1aB4TMVkoeujpw1uf55E9vjJ785W840pLNis5s
	 /Wj1KEM23SCKBdhoTwZmi7LYKCp0ysPvk9OJ+R3MjAKoB+pXiOv1Ly5jsCdxZBh0GI
	 UNdZuHDPvpP+iKs2iJML9dTmhguVecLHk1mmIJGaj7rc6oT4OuOYSP8UfOyxzuUeJ5
	 pOqvRGHgiC7m2b8mrgZMBbhe6F8cVgAAQ3yi4sYqgzOwTv7dwrHOaoQ8Dg5OpU4mDh
	 h1qwvUQtV8yOkiOzxbjysLMkBlppm3bWHKUc+rjrQe36DDoOfp5jplhRx12FMTpTfy
	 vNUscAmskfC4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98219C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280559361.4262.7232893509401546241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863e2812bbef79770e3d811ce89cc65a1168a7226f7e4d4f7b3e26a48f391cd2
Date: Mon, 24 Mar 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742805593
