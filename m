Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8E825392A
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770344634; cv=none; b=Zb0Hze1GfyFb78dV+Bzw98fa+J6QuqD1lOBz3qmWd8kCfu5qox1O/rhgjh40Dk8jMkZjeaoQzEVrq9FM35e9IWYpyzqrHPmwHJGzaQOrRC0SZ4Sj4s4wMqwDXYoPSjx0kpxX8DdLuVTxbPmjXJsR0X1yKOlcQCsUKAXYgBF/Cvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770344634; c=relaxed/simple;
	bh=mz2XBTOn9ZNFeU7Os30x3GFZtwKQWtQ5k8Rg1dhFDbM=;
	h=To:Subject:From:Message-Id:Date; b=OKzZTLGdcnXamUAFtnEI1BVGpTp8Gf9mKRPJCZj1NwrRAXjMdrJ4WT2SmmNbX0o5w5UlLgoRUqklubvSFsfC1lubJoeHNOMw+gXas5E+z3n/r7Z4E9JM/P+soC5gY0D92uTxqmu7he1SqtsFmtu3bIvJNtvV43naEHmmUon9b2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nkni7kob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nkni7kob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF87C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770344633;
	bh=mz2XBTOn9ZNFeU7Os30x3GFZtwKQWtQ5k8Rg1dhFDbM=;
	h=To:Subject:From:Date:From;
	b=Nkni7kobqnVboA45NzGYu3Org64Wd56G2ydYtKM8uYzCtNTycxhfmns4MdHcPg+Tf
	 zEFzCCn9PdlN6QS/7rrysGVUrXzG6SXpeuTRT/WZfFIcluFd1SJBhsVH/960yd4Sae
	 XfzBGVE6DjcTKRIKNwVGouTfj6Va9Hl6lnfSS0iJYr5X8w0yIGpblnLXQQ0cIYKjFa
	 mqOTDDb06GaHCvOAlA8Ws3BFOAhGZzxzRqQVl2SR2GXzaQibpAiDg+AnYYIBjCnEF6
	 QmYa4/yT4bNqm5etSDclvgBGREin/wQgCxarDmxXxSnC2L5Fga18w/aN7WtbqNRLvi
	 X/7FVXAka4i9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4B2ECD9B5
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034463360.21849.2287149054701114754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d59b5f35e45d19ca30b11f9b9ed3f66ef18740559fb3ad4fe1cc16fa4f28aa2
Date: Fri, 06 Feb 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770344633
