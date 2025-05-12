Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4767122D4FF
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747075795; cv=none; b=nm7hdyJtn2GNO+k7dINuX6gQMmN92pgdaUM792pICvs9y1WmZ9H3i680RsvE1NTCRxVAW7scrZhoBoAAhtYERYGkgiNiRRjIM47+X7r94TALEevDqKg7FplTphvOh7g5oxTglOiMCrsCBAkU+0LMQroB4LyysKjLl8nXOXPcBpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747075795; c=relaxed/simple;
	bh=naeVj+KvrKy6FwP6gDBIHrrbgWtlyiArxfxwOKOi3Uk=;
	h=To:Subject:From:Message-Id:Date; b=ak9S4NMo5/IyK8CobBBfUx+On3ECQcGz2EZv1Knptw2ngMhskyPgfRackQgvk7J9CDinff55Irbi8lK70ouQ47pSh401LHEVit2e5w/4ogmX/HDZoUsLngrWMxobxmSzHvyjHr0Id/FmWOfz86RjLI85mofWFlDz2JLua0PrFso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpZtbx5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpZtbx5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB9CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747075793;
	bh=naeVj+KvrKy6FwP6gDBIHrrbgWtlyiArxfxwOKOi3Uk=;
	h=To:Subject:From:Date:From;
	b=GpZtbx5gOVeA8pptAqLc0nayCqrMDLyUvGvSj+1QQZPX6FPcXzGHsOmU0dpqhWqEu
	 FU+lMtNntoYrE4e5d4Zta5l//Rv7Larrw5eDsphRUII+pZEH1akZprhI/ZED43nBYY
	 fru+a3VLxMeqBNHmqcQiZKlYilGM7WxG7zF/6i/LDmjL4A0fgIlffJrbTPvCdA0S4T
	 ViDXjw8fhM9HO7JphRjbXghUFi+qaLi4UkbCgTg9YEjSbxLAYtpl10By7ngXNd0DzF
	 CmciS7OJ+tfXTPPNR699rsL+G6CJj+e49cwcUSAb1VzeEiQbgKS/Vfc58c0j+bJJYJ
	 GOEDbfiC5Z1Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BCFC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707579358.13691.14169291865393791243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b6c8f66013a9a85dc87e29947f70469bf58fc3f25afe453990ab43a7394802
Date: Mon, 12 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747075793
