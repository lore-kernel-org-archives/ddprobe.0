Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288BC267386
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763086194; cv=none; b=NZ4I4v8Fs+UOHakMhwt6NMLC+ZOtA4MxD2OxdHtgpj2K6YbjqThRbIUwt1dvkdVr4GR0zZfDayCiBZH7HUArJNiRfzRzCN3AMIPbRN8wMw9dmJcOSkckDfMHurPnwny219RWxFXiHvc113Du2IUrOtwgZkhTKwtw9rugbqGdguk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763086194; c=relaxed/simple;
	bh=Yrzzw+4HCdSpHBtuCkyWBmHN3VZWj1Fz8gd6GDQFv1U=;
	h=To:Subject:From:Message-Id:Date; b=j+Dre7RqVU70P8dJtD+v1Goncf+1WUtu4BGbvBWX+OeWuKl7dA4uS2Uxkc8aATqTcKL8PcZw/CQ8uvz9FOwMyzmGZ+w+5d4yK3+RzzdkIh2nEbHG0XxUgOSoUVOObFAtjun/cG2prijV0uHBK2G6+twEc0WNcy7bmyoYju6TuH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqUdKwKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqUdKwKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E5EC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763086193;
	bh=Yrzzw+4HCdSpHBtuCkyWBmHN3VZWj1Fz8gd6GDQFv1U=;
	h=To:Subject:From:Date:From;
	b=gqUdKwKC6njpyEpVWKTDjOByy14RkwZSIviXHCboMtq1NHgEyWh51q7Z0gS+ABa33
	 RKW/YaxxykiEDy4o8qugcEp0WwrxTSuSIar0jHHuVIDqf7dxC3ePrtbJWC9LrnXA14
	 Qs5TSkRbANHEvaDzMxr6WvLM33d6WOytL4fVOt+Xus0NCRUFJMrQAcgKFthgC9X9K4
	 KxYPWhOYe+XhNj9LtS2SEasCm7TcajxRkcN8su8rtYyWCMpE3rE2hRaJsMHOaOcKVn
	 xX7piBuPYcb+h4boufKdeHalVx18LSpWCE6nQN0pWINIeRnnoLgv6q9KqI+ZfA0qhT
	 vkn7YegXFU9Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A62ECD8CBF
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308619360.9082.15873799433686039902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7007cb235ffde7424efd9c2edde6a37dbf3acc60a891b98e8290d4c301c5e41
Date: Fri, 14 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763086193
