Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E36515B54A
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739705935; cv=none; b=LmZUWLVWOo8oDaZExXOo+OXsPentsDrCfWoy4CyF78ggpy+wN6DfS/f3cx/DzfJOZl6q9uhgBSaBi2UH16hrWpop0oMe5Oe2P1/HadGSPTeHRnC4Bka833skdMu9wlOIu9kQx8zUG9UxFInwVNhECPD/a7URNua0DNBeKxDF38s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739705935; c=relaxed/simple;
	bh=ugyL/atiOYgcEJK3BY+YKkStM8qrECx1Ay5ydYcTpCM=;
	h=To:Subject:From:Message-Id:Date; b=OukYhNoZYhWYhFpiMrlHcOuGILqrSYz9r7WDQLz8JpPnyS8iJDGSWZ48nvOKDxspwnuKMlQSNMjtPQ/uIZzuugUEKPd9NAd/r/OlLxP8CA5I4HP4lhOaAC6HpGaeDEg1oH3aP1BWIn6IT5Xm8AB+wL2Kd4bVdYH/fp0JymJZVk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k71cNzgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k71cNzgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8253C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739705933;
	bh=ugyL/atiOYgcEJK3BY+YKkStM8qrECx1Ay5ydYcTpCM=;
	h=To:Subject:From:Date:From;
	b=k71cNzgB5BUxudkAumpiB5EgAoceR7IA/XOoqGOFozMxXuOGx0jBmqW5zC3pX+qbq
	 0LvAbm9er8WpZgGFqjHtCZfDcLjNppoaciIiPsDiyF5QYlElkIxSOX+8FlPeR3Wdta
	 nPQ/Hv7VEVY4CIVNRQ9i+qze8CrvlxAii1bxw7slrEjPgB2fxnr1gZFQT5fUqkKHzW
	 IdyoNKkYVPuF8SgSlNPuRxFyrjgH4rcfLz+/3vqtczWiQWeiz4KWPWYMExrtR9XSA/
	 eLyWin3imgjhAUC6r+5x5AiormZolk0aB5XyYEp7PQDgt3GfNhNoag7yqq0mlPOkhw
	 g2uwmCtXRjlgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3039C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173970593363.32403.4944721077303603823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952c3e6064a15f383af3ba59f797eec56c91990655e7fb1ef854304e09e9bda0
Date: Sun, 16 Feb 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739705933
