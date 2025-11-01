Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EACF13D891
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762012194; cv=none; b=SUMk7aqoRPVu0L9lxAw0mFAV/K1oooyB50OOVkcIDJP23peBDrAQLvPOXvPCyGGbSKcZTS0jY/guAnzVBwt7cx2t5dQxd/rzlEynDVWyoi+uh3KcCCe5mBEFnJVjIVJwitsGaEP/64li5fxGEoKOGQM4yWRB3rQ1yaVBEQOfNTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762012194; c=relaxed/simple;
	bh=ZQR0ckN/ZCYTlxBpKuAgCEybna23zZ24we9KWQUvmcA=;
	h=To:Subject:From:Message-Id:Date; b=K1IFwVNgtr6R0F8A1C+X+GscaamNC6icZyrlZxHxNboVRekvnOfy68JsAIUOYXQYIZim+iHiNqD86I8QcTTFrH/KfUte4HlTjfMur0TRoIzilNgaCJTXGc5zHQCSpn/rQ3833zjkQZ4ZMXT2/iVJjkLfSBjGTWU12CeWdaaVrZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wpf8IOnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wpf8IOnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3D0C4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762012193;
	bh=ZQR0ckN/ZCYTlxBpKuAgCEybna23zZ24we9KWQUvmcA=;
	h=To:Subject:From:Date:From;
	b=Wpf8IOnO2xk39E1Cvq/VJwyLYUXNlDreJ6ApPx4zOtJiX15D+hOOGXCOOcG/vXB17
	 xO7icrDILw2GHlUNuofOfqXdWlOpnnNVAcCT20D8OuMyzAwIjtg/UiQRY7VseVzId7
	 8LmW+8CEP3EwNrubEkUaLMRM3AEGpVEaUbzTx8R3jgJadFZ+bzS4zvQktwGbXpH6Sr
	 ZyqbKfZJQXWC+EIAuuxOg9sr5q1+AvaK/6yoGTog8wLdoeyZtGeyZyNT9y5eND5Icq
	 f2ZweaJ03gYdrjz8Ywsao4jkFIkHqiTU9m5dCFd+RXmllMwj+GjhtHOKGwL4uxK/vi
	 pPS7sqNLI1aGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB5ECCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201219358.5049.2899568154949632575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcbaf935e9751274094419f8c6343f25794171abc4e38f0eb1c20b5609887169
Date: Sat, 01 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762012193
