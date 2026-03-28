Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067A81C862F
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774709694; cv=none; b=Th+kZYNxmZklecN2voH2jhKsH+2MAzQzIaGKspzk8lJGxMCaYPEqYLLNgSfy9TsIL+gC6jY9FGniW0ajgoMK30nJbjP0dKxNPULR5DS6u/qf0vr69jZ3acThxPfxK9wg1WaQaj4rUWwjQoVa0hYPZv+PCUuofXQa3F5r0bIYoWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774709694; c=relaxed/simple;
	bh=L02mqL5NnutXBlbhLA1ja0woFaZMfKWmD/Z4U5d1uyQ=;
	h=To:Subject:From:Message-Id:Date; b=ncZDk4kO/ays1cFvkKMgHMoIA9R7DlT2NBiVcbfXSqOyT9DVq9GsirmhoggZnfr0Yq89TD5bAXbGNdMCZE1Dnd9gI0acNEhgpFr+9lbVD2qP/QzlW/Uw3UsjnNNyGz04s9sdBgR0jZrl7Q0Om/VHcSNJvYsX5nm2AEN+MQ87gvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsZ7b9Yd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsZ7b9Yd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF47C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774709693;
	bh=L02mqL5NnutXBlbhLA1ja0woFaZMfKWmD/Z4U5d1uyQ=;
	h=To:Subject:From:Date:From;
	b=MsZ7b9YdVCIGTQJwxufi0KWLsib0gS9e/VnkcNOAV59E53PCM/Hp1CdrPml+PAJm3
	 5xlw9TasoHkasuhWVAZG9sOo6FJuKJUdjcvXHKfRS+YxJJIiKX4//rhiZVe8maoEg6
	 5k+3tLWqxhT2S2GNxOsp7TNoMDMB9O67n6sAhx5Mh7FVUkeUfyNvi7N5vqUCYhJk23
	 WcsWseIcqeW9M8/fNMR6dLlvGw1HaA98uissXzmYe5bUEczHpCDwn8Nnj7CgxIaejC
	 CVFIojg6alrKFzI7GasFEYJFz5fTg0W6mo6nvfJ8rYkKvBQX2X0O3Ijn4XdpCbj5GU
	 ZgK9NieeGwh9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9055D10F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470969358.8904.9789905286637741623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5214f8631f7b21fff9bd8b4d839e07ab301d38e031a426908a157f83e36b66
Date: Sat, 28 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774709693
