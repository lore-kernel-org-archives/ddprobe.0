Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF0A23AD
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754237395; cv=none; b=J/R8NUt/gSAGfygPka9CR+Nc7+/WMkE/2TZfRowEsCQy4iJ8PTG5thccXJQSZzCtEVHYREnFuqp8CWDbkYd4vovGvjovneJBViu7D2VeXVrV/nOOQDo++tdFye0dv1/1U+iuQp44CySWBzImg4fCHhjxBhye76csxQIx81o5uE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754237395; c=relaxed/simple;
	bh=e3PJgUXw2HGQxejEzIgMsVsz+YEHMErNEe48UFMWh6M=;
	h=To:Subject:From:Message-Id:Date; b=Ahtdpz8C5L0bgDn0xZDzI8AjxofgSct5YrkYZbv8+yIHWpZznYpeTlI8ArjBR1zdmy4843q1lOJ7dc4HArH3wE0FjKvhhKhp2dHHdnl91kNbxfkHhhpokwkEtU2Wp66Z/VKNS5Xd9CBZnIDGlJprrVpKZKFXJ0abOnepHpyZJuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOzN6Dg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOzN6Dg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0182C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754237393;
	bh=e3PJgUXw2HGQxejEzIgMsVsz+YEHMErNEe48UFMWh6M=;
	h=To:Subject:From:Date:From;
	b=SOzN6Dg1JEugk6NIYejQywpP+YOiOwx1sbFeaelHjLD7T4uPeROkQQxNBcTUNDRwO
	 LAIbkb7QOBhLk4IH4Q6D2WGqtl5TOgCQNrsuoWYf5hX5NplWW5AJxSHBilu2XZ+/RY
	 KSG28K2//xPHgYFLuc5VKt0n5KEBf8LFi+A46kUKdnJiKLbjhe2vJFlG/k1EErJJ9y
	 05r1CLJrQ6WWvXTs+leF6MyVfbDXoEnhYlFPzhJc13j/nzF7vywadIMcfPH7WL3H3+
	 dlmeamHqu7Kn8hHsTupUPLYDTGxougV8JFW81K7F622O1TSCzcdO3P++DLbIZPqueC
	 QwFXiEx+8Hgjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBFDC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423739357.14998.3035344387507400340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe26793ef96e3c6a14a41f8953b34e628e7de12ef06726b53bd597fe3b41615
Date: Sun, 03 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754237393
