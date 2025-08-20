Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A04D2222C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755671394; cv=none; b=S7F217xG/VSzLIvX2K8SYiW9fab6x44sNzBxjWQVDJqEbDl5olsGW3oowQPzyaVbIQwPMGS+wgCjtMLNsWjCsByHyx2H3jOvlrVSbZpU4unEGoLLAs93KVwoOQEvhoOdXdfn6X4cu7jVpAVEWNIQGZHYnnt0NI2FpgGnN8Kl5Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755671394; c=relaxed/simple;
	bh=sxpyoPCCBmd4z0wMXaw3p5e2FJxMU4yyD28jVNOyCWU=;
	h=To:Subject:From:Message-Id:Date; b=NOda54w4LIgDdEOf8o7TkJdBsRMaF2Axe8yTp+n0h3PFIaySXYyxcrkpQQ7FOyVYYtOK9G3w6GyYrUfLF/tJlxsLvEDv64WK6MKTYnZ7zUqPTaqOBV2EC3BTZBGb1mCsQqbUetCtecz+OrwhxCjgk68SmXw+6TWj0qDfRTxXUko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZQjlomj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZQjlomj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9938FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755671393;
	bh=sxpyoPCCBmd4z0wMXaw3p5e2FJxMU4yyD28jVNOyCWU=;
	h=To:Subject:From:Date:From;
	b=JZQjlomjGx7szqfO3wjF54y0O0rt8UHCz8cjFZn+39yrWwOaGZXyPVc+iGP4Z6tkj
	 tQYjA6x5qKufZoJw3vCZImXLXUh+BFaiKAhM3pgQShG+tr46wFNLA96SKbb4DsaaXT
	 BiavNJM6ACWphFv+ykqlazgBZxwiprh3CI8zVSyNc1JeiNhvXXJdMyN9T5TG0VEYV9
	 39IKizYuf+8GJgI4SMerXu1JCLsvgyTjwRhjaLBesWU3bXFCojLViJ2oHJ2MaVLbn7
	 FVS1S8u8vr9SW0GW8tKxTfNVVbrLaI9ifMlyv990keVcESl/cbbRpx0V06QqGnZQ6A
	 KMonQDti+5xgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE2BCA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567139357.26898.14383905919539720210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9dfada5635bec1218cd3f9b748bb36285521e0098216da2435081e8a546fb25
Date: Wed, 20 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755671393
