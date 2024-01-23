Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7BEE20E4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705984097; cv=none; b=ZvsIrF9wdPezAvo8nIK1AK279nSto5xt9hDPS/4X+yHKYZS38B5n+W3oPTgrSUGJembFDzcLGHIAPwTFetTv3MopE6opiekUYczw6/WOH1kSWxEjWw1VyjS+sS6PkFo8PT4L/u+K2BeLmeGviyfhgzF2A7UMklNbZUWiQsREZBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705984097; c=relaxed/simple;
	bh=jnD6tZNBrBev3BUqlYDojK1KysX9NJv7QoTn9don4UA=;
	h=To:Subject:From:Message-Id:Date; b=TMupN/sEF5ILChFHU7QNrJDt8GVTGh1sWA5Ww1upPv2OXA/RSQO1flGGRrG7BwX9IKrAxCJsRabq+JMARJbJoSTj32lNMMHmLGK3/fGwhbaGt7KV60Q3y8F57lrOTeSCzpokPd9tLZH+FYrEvZ6axuK4ylfcMZ2Y8CSQnCaWfhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeI8Gqdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeI8Gqdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E0D7C433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705984096;
	bh=jnD6tZNBrBev3BUqlYDojK1KysX9NJv7QoTn9don4UA=;
	h=To:Subject:From:Date:From;
	b=KeI8Gqdj1lvWHH42AWGvX1lRL0WXzxiJcGKMfxApnoI33FJlDjzkLrwtLDhGdphuE
	 dTCJ01ZuNLHVgiVtQRUThQqim2NqM9rSkw9mzzK/QsfXRsVLLncZEstVMPTF+xQOmM
	 VSdgoKXnZUf5YCuomNLrW7I+lkBoX8ZYovu3+AAAxawyB3u5tLQOQVllzlG8DsNz1Y
	 PFgF7pcsvmgzdIRBToNJ10bf0wECkDITMEQDaS936mf7gUiG1sgidLxnRfODRMbzBj
	 nsJBE4sbjpxR+AS/XdAPeI1qjlMlzMPahikf5WuEpJC3LyVQj4Dk5PkeGSoL0d2M4y
	 th42ZIz/1njIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659AFC47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170598409640.20445.12795237935967544516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22418334bdf096f82fed943bc55b657ff302740dbb40900ec8cd48416afe5025
Date: Tue, 23 Jan 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705984096
