Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FC54690
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745072394; cv=none; b=IOLvFToGKLaY3hPM7QNvk0JKVn08G29IyvznB9Wqk+pyFdrSG4NeyBNGDM3ShwLrNaiTrKLJ+Ieq3WjG4AcSJBCiA11WK6JnmmV4GzCxVt7jgo/8eJkZYaDfKEttBRjK9W3E1KadHFqTi4AtibDR5lfPcSDMx4Kq8iA7/3ayyHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745072394; c=relaxed/simple;
	bh=Ni3K81tTYpaYQVFvoobY+oL8qenKO7bpTs7Pnx7iJCw=;
	h=To:Subject:From:Message-Id:Date; b=H4frQiNwjEy/oYCC70amNjLjovVIyiJmjnuzakvNb9EE9j5CamfX8/lAlz6URHzbAZFxuwKA83fHdszJ1qdXOPvvLALO6rldJs51D0vw6Boe1+ZDho2JrLSJO9gU8Zw+XejFF5KKN4a/SuULH4PdcNxnwdTqabBuUhcrsviaLvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbQ46H7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbQ46H7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A969FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745072393;
	bh=Ni3K81tTYpaYQVFvoobY+oL8qenKO7bpTs7Pnx7iJCw=;
	h=To:Subject:From:Date:From;
	b=CbQ46H7HGdx+3wRXpu+/bcF8XKs9toKGUTtGdYSXV9kppKGyy+urfeUPIuoonDbUP
	 /pIitZfLVWwE3ihzukEINZ9KbkN590OT66z74g/3GcSJe4jLmmHpJtJcwTdx7PBJRh
	 AxmGjLYIMV+OO/pJB+en/SvS01BPJVTObgU0mGx8Jurs55JcYTObtNUnOsMRwJlmb1
	 O2FxJhWTGr9u/N0oIMXJx3LG4gbzst0qQwnxJ97LyY3wgQuJsRamaoRkv4DoQX/NdN
	 FfAfBEvMTIW4bERos9u6PzH1Rt5Xvay7SfJza0AMFYBMfGgrHlrXknmbsGk1SkpnoA
	 Wam7yy1ac0i1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E87C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507239360.25339.7211336869941279539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfcb2db1580a801ffb5f4d3077f296583fe29d4ed10d0b381277c2d569902789
Date: Sat, 19 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745072393
