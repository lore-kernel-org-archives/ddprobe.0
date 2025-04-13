Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E8E20EB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744517994; cv=none; b=cllJ2BiW/ZrNfB/zHe5auPNfO8P/KJrANh1IYlDGowORXnyOdzZ3Io+qb4iN9viN6N9SLFWh0H8rPdQdC7JfJs37WaQfFauwcgXWZsts2BajD2SJwWY2MADwb4KeusrBQwLBDikDfM53HkiFMV6msqnATdhkhMwnLgKKJK0B9R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744517994; c=relaxed/simple;
	bh=M3lRTByAvLbx/jmaKfGAdNF6JS2b7200YuXB3gDLIPQ=;
	h=To:Subject:From:Message-Id:Date; b=sy3biSPtUi4p7uK2d6LgfBiDEksAPcg7uCkUOerf20bHacHn8XMz0qCG5I4xYLc8lDK8TWCPh5ZV66HKx5F/QaO5Wex/IHbvp+HtxS+iHeebwpu20DHbYV5mPasCra+vpYv8uHG9dcxxkLGqVFYRHPt4pGmkuUXvJYtMq9M3cwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irGZoD0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irGZoD0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B39C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744517993;
	bh=M3lRTByAvLbx/jmaKfGAdNF6JS2b7200YuXB3gDLIPQ=;
	h=To:Subject:From:Date:From;
	b=irGZoD0w2Hy3yrfLRJ3IEfqXB37mZqNnloRZGJRgF5YVtUNsCOzVakvvmwDfJEhoW
	 32Emv7pcUjV+Jfm3bcZIQO+/36lgzkPOQ2K26M30gl87eRzjHmafJUItXacuQqD3Ss
	 lo0gJDPS4XomcpX2fvnaehDgvvNKK2rTqAZur7dIyarTBapwsODJTJGzfhGws6rNRN
	 7Bb32b5ODqIFEhnsqvcq6c0qFIw2yueq6yHXmSg3xUt41KDR2QcmSc4KbjVE9zm7mt
	 kERsPATEFk3yUIfDaA36H8qdfhn3eevZr3/A7dCjoz5mBvMoXEXpcsNBoH9uijDpdP
	 vxH81AKlFv4TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E44C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451799361.6588.16367151677543167062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38cf2c0e45075da9ab34343a39bfb6ff0e1e028d9d26cacb45f1367417004e16
Date: Sun, 13 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744517993
