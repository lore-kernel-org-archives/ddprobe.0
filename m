Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E552B65A
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720949423; cv=none; b=otbqODWFjFa4AKVCx93jqlHNeudee+c9433FND84OBKwWLriXU79KLLQnogXTWa6cj7B6kCCkFHWKAwDOwIUGII81+xYu4AJnGAKEyrFEQXVosuNGO3BJeHrLhYv4AkLS0s23/QBxxwr4UMP/e/6Gulr8KwBIIYQpzBnif0WJYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720949423; c=relaxed/simple;
	bh=pV7nXs2ZEP6NOLKbGLN3UfjZ+kGhgg4F0TPCk59qD0k=;
	h=To:Subject:From:Message-Id:Date; b=TRbznzdV+McioRkXcS5EIisEOxjtTsXv9ExgVqgwlgPVrjvqROKvG8TOS/tksnG0dLYxDLfQQVRkQZU3OW/pQw4M1VNjyGgZ0je7AO1yuCwaYpcZO2MzIyFcJ5ecZZRQb75rQre6bCegBs0sGMSKuoapUQ2xn3LN13t/jmDC0PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJQnau20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJQnau20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAB3C4AF0A
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720949422;
	bh=pV7nXs2ZEP6NOLKbGLN3UfjZ+kGhgg4F0TPCk59qD0k=;
	h=To:Subject:From:Date:From;
	b=tJQnau20JVcBrNJ/nuHzQBOIHCqJegFQTK03/XVHe06uWIZhqc8TvF8PkiK1Mtnv9
	 o97ClitOb1/2wZR8JklOtGofJxmyGUsqkAmVY69sXOyvUE9YUjam6EallwezqMSVpF
	 ksEfv7/TspayO7WrLF49iqX75zhcxsmS4I3uYQNtFosEyLojgK/6x3p/Qn5sm3jktn
	 2ZlhvwhxzvylCOdLCvXuTeekSTXkCbTaOeB8LZQ/7ruVnmvBGE5jiv5h+kdekN4+Wc
	 ruoN542DUVAP/Xgkzx75tKh/JpsWP5I1BCoUkLeeAqZpWqbf3LYEAcMISssrg91epw
	 kGteFrBgorEWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4ED7C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094942277.28255.16917019214397024319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3071500ee9935e65778d46400326a1de5b3ab87575e392f733190afa4d3f739d
Date: Sun, 14 Jul 2024 09:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720949422
