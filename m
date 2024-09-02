Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337F814287
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725300354; cv=none; b=dtBNv2xBfm/2fhPuab17DTo5YBGBu2oBcwRA/tlt8F2cmocNW3KOPeK+0LedwXproMaGfLxm7byq3Of2PfeR4lmXqeuZkvWPUeS2opN+tu3ABfTBkHmGVbOeUPFQPApFWtbRx0VrX0Zm+pMZ0Cact0KwPulVJJK4OQniA70iR2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725300354; c=relaxed/simple;
	bh=65h1tP7RTICB0sU9ytc/shC9zkXWgDrcD+hViZymmgw=;
	h=To:Subject:From:Message-Id:Date; b=LTTsqb8oxOxESXBxoYdiDHXis18zEKYtXghX7xNNH6udw6hSeMl+WZOfrM/2dxQaINifuOKLuucI+EmdQ/1eOkrqHk6J6P7wGglTmDw2HXr8UERorQEgF2ZbkoyCqmbDlzx8CI4i+WG8IEXaZjt9E4gf3l3OqriC4Mwu87PzKTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxyOzPAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxyOzPAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B7AC4CEC9
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725300353;
	bh=65h1tP7RTICB0sU9ytc/shC9zkXWgDrcD+hViZymmgw=;
	h=To:Subject:From:Date:From;
	b=AxyOzPAuxgwiKg8fg27ncPpdWisil8HipggMeNszQ9rPFfGCbHgKs0AihmdJHMY+u
	 RQ5KAPJO5PssEykzmnLeF4l48mLpcJCArr/FGNkVhlERLTpLmnLjwBlGRKKG1x/cD+
	 BGmZsKRhByg/c8rxD2zvUem3HaPE02VAn3aGNjBWnAGSeHGLyu0dqScOCfQuRRHjX/
	 Z847Vq+ZFas3oYJ3JAnonEHM3tLswZPFDAcUTOQzGC9JuGSpaRnkM8XD8+7Yp69vRk
	 6xqPJINRCfczF/ag9TMl7pnOepcBAqVT1G0EhhdZNVQZoapQFqJ+itMtrRR7q+e69m
	 Tr0px22AovMBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A89CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172530035359.32668.17082079097016172724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41afc6a49a2ee3992ca1b90659716a0631b17908adb2c214d6893bf7e006f4c7
Date: Mon, 02 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725300353
