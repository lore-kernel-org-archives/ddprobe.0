Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F21524F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733790354; cv=none; b=ndbFpYU/zSsHSr5hOcqMuNZRl6/8hDw3Np74Xkp7Mrn7SlC+qCOQcmfKJzpMua9OlUs1dnBcQ+flDHtCg7d7YkyNWJZi+0HK8Jitr5ojnEiwlVaSjURAGpNdln3u2Lj84uG2lCWraf3jChnGzI5cOutbFl8UacOAa9VzK87XEz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733790354; c=relaxed/simple;
	bh=WYkdhJ8TgW35yUpfGd1HXuWEAloxYSA3OoMD2Y/WQi8=;
	h=To:Subject:From:Message-Id:Date; b=Ol7DWZBVsLot1fJuo7C24tc0iyGeQCFGeSiY1v10JyAOhfpZxcAylOKVqdTjsoc+Qx57hsqk7AHukOGPz9aXT3IALehUW+MoGiwL33v3c/JazAxsci9TfhJp6LxyK50ruZMaPwxsDyvTPog9uTvIc3IJ/AOYFu2/TtKa4My2dhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/l4QSlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/l4QSlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4A3C4CED1
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733790353;
	bh=WYkdhJ8TgW35yUpfGd1HXuWEAloxYSA3OoMD2Y/WQi8=;
	h=To:Subject:From:Date:From;
	b=K/l4QSljmxq2+kA/abDDWpqlKZXxlFdQj6I1JKXMZtU73hjPdr41KSfzXAHQVSwTf
	 q/tUbBwZQj4T4Fd64AyS5B0REXraw49V8BRaXX+VeTHjgMzInGnjYbMesi/niqhXHX
	 DLCfhJRwPiJl5r5QgMg03Pe5RPijkZEHUQED4mKR/oprcoFoTRftMy/buTZ/h17/E6
	 T22jlVu13I8bANJJOzikx3fSMrtO+j4EwJvUStiIbLFGpQT0VsbfVRP+ocna+GcGQi
	 iE7k3QPS99W1a5BRlde/leMCzlWx0tMUgdHSNPzQAA3FkdtTo4rCPet+hwuO8+vGse
	 ti8eUc/J6XpbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF6E7717D
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173379035359.11316.14473512083403009030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ffcbef196880b152d13285553fcb5581a581c472852fda10f0d211e15b9408e
Date: Tue, 10 Dec 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733790353
