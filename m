Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD40522A
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742676594; cv=none; b=FjkFoECImF6I/tdKnJkvjHUnTfWt0kjeARLbnLitc3utpk7ly/HeA9PBjWb3t4o0QfT1wabo43dKrNMKr8cK6/6gZkIA5zJ9WHSUi5RE/V9x1wq6hxRjhpjfXEggBbvYfFUWP4fbz0z7efdnmVkoKuVPF9tgVNUzzD/Lw9YxCKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742676594; c=relaxed/simple;
	bh=SF9+kMujHa/R0wH2DDcHmTJye/LXJ5jpgfpO1Kk9muY=;
	h=To:Subject:From:Message-Id:Date; b=HhI3chwHyTHBPx3Ue4hQqTwNIhCCoQN1VEhOosPsSfg6AyDyuTHkKz/qPP5KwnVkToT5XpJLkQvHLRzqOzi0l4QFkliz1vpILcJ2OWTsDuQyIvO8AfaMaUxLOQSR1aq1yWDQrDqXKqBFYBJRDeJUHPwvfWayrzFVFLyNxPCI++s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+bjYda9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+bjYda9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6C2C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742676593;
	bh=SF9+kMujHa/R0wH2DDcHmTJye/LXJ5jpgfpO1Kk9muY=;
	h=To:Subject:From:Date:From;
	b=h+bjYda9vmlpteyy2nWHeyCIguVGScZ2/MO8IGqdQXoo1YFF6FSEUSyA0pt/hE5My
	 EkbhzF7eYLUDL+Nn/VwVcmqmLZ4pmHv2RkTIQgPGTklBwurDheNUg5c5pUL6+MJYP2
	 UGeYsHz5Lc+jZlu8UgYMcuIdlxPvaay4/lkz8iMyAiEfPCAoaT793pWR3TYg5Zin1c
	 TnpaReGwxxOnN8v1I2QJ8cmQbnNfvQf8Z/HI1bHTXGDSUTbf4FucqF5yPq0xrABS9f
	 p+eLZzsDhNL0nyX3M1GFd57r4S62aYsRH3Xiz291Pbdf5vlNlwVYZz6IYursX3j2Jo
	 UPsLFA8L5JdHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BE1C36008
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174267659360.8478.14166630468271177437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adafc469dec65d6489c1772cae95eff05cd9af647085ef44801308a2f46d5992
Date: Sat, 22 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742676593
