Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404174A02
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 22:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741647535; cv=none; b=X2hom+O+rKbLW4Mf8zW7iZjG09Ib8eEdKMZP2YKjWtfoXwM+vj8aCYpMb6j36cgZM15+Y8eW9u6V1ODI3xWftYwNBIqoS5ZT7rTuUF2yN12JLF74r1F4XHVa6rKpyr0hO+rQ0oml5qkI6lv3j0P5nv7XwvHAcDi4Dms0Gig7INk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741647535; c=relaxed/simple;
	bh=KqyufQPPS48lGdXJNvzrSrpXTAZR3dNBIGxwWNM5zEk=;
	h=To:Subject:From:Message-Id:Date; b=sTKijY4sgZnedkZTMqMiedG0A8HpXfh6oGz/kC+uzrKJokB7z5KQXyO8mUj0XrECIilnx1ppo7tOr+nCrUEukxT2GmZy4spYNWRh7vkY53Nu6fHxypbwTeuz4KOvBpkQAIbNHVUqk+VQAenN4xyrT3wqQO0yaEZB89QrUSXTsvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=It/b8DkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="It/b8DkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89C2C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 22:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741647533;
	bh=KqyufQPPS48lGdXJNvzrSrpXTAZR3dNBIGxwWNM5zEk=;
	h=To:Subject:From:Date:From;
	b=It/b8DkKeym04iFzoPNC6HQV4L1x96NLdQiP+DlVZSlrppHM5HfIUhaxJNLm4ERas
	 E/YphrjX3qasHPqOn6y7bzV12MKjP84T1VYlLDBmX6hVySy8xxbHYLvkE3sfIcYUwv
	 rAGlSjAMDRR6Olau/nJLklCPNSjdsybvU1RKmbvtzZk1jIHdk0n8E6dQ+VqkRFJS9s
	 +oRaWBo0rP3aBIg5ikDo9caM8Ww3nmvUwzjpP+TnhFS/mSeBJ/aly6tnUXQlPBdOSC
	 cRHarf6jN59/MyqinwFMIn2kxAaeILlonlewPWisJXApzkGedTeIfQK6MmGfc5kNlS
	 tcAptmoYAU1hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BDEC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 22:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174164753361.31529.15757891667032680669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62765937ef0f1a17af9b363e62164e5305cb69d304cb9ee31874e35d777a32e5
Date: Mon, 10 Mar 2025 22:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741647533
