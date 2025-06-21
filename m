Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237C04207A
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750523994; cv=none; b=ZGEVK/2jecEmluqKfaOOJHyc/JfUQWuO/myI/pJrdizfNQ//Hv2yqRTLbDDgp0mI0gh6VCdn8wXZzUEdouYUC+/HE0hx+zrqe4XWqbtd0mxMelFvlpghYO0M4XVEkhbjXFc0sYchoGfM6iNrxmkyiztXjN9ocDPyEqv6oaMyeGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750523994; c=relaxed/simple;
	bh=SD7Zx61KAfTbd2aTYsI5IWh2GRWFNXikjX1XQ0Sue4Q=;
	h=To:Subject:From:Message-Id:Date; b=CFjBvtErfpenT2Fc23gttQUNOUaCHQZjBklU8Mp7EfRoPql66RoZF+tKkhOpcfdqwTNxdcMy/gKcTzfjea6JhAnM/kkSjZ4XqgejAUZTPwewvHR8hNbeHKlUuV7gmh2KBIQiWpG3gU02iuQA5/ci6EEYc5Tw6OgP70zKJIy5Hfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QS6cg0NZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QS6cg0NZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C24C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750523993;
	bh=SD7Zx61KAfTbd2aTYsI5IWh2GRWFNXikjX1XQ0Sue4Q=;
	h=To:Subject:From:Date:From;
	b=QS6cg0NZHxHEp8Ei7AKaVQnJ+6aavlYhdv+nI7giXx6KvqwEHntZeW5f8wZ4r3PVg
	 udkC0EvPH6z9DG7rTBez2tJa54wZdQknhBbp7/vmxDvrDkD39W7duArX/4RZ2Ypkvq
	 IIfYUcC+jgfUfLjoEqVtNJidfPxR/Qn4ydVWcR2heDUsfw86N6DsTl5fVhP82SDmXi
	 qKhHTF7v55PdQkkiaXVs3QbbjaZqb625pRcBoaMwcl71DF9snC8SNTpeDhVcO2+4zv
	 CfztwWuouIv4xp93oWF6Qp6+nUHtwnXze3thZO8QMXSe+Mb/DeQ38jKLNIu2/tVK2E
	 PGW69XSsvxPHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931EEC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052399357.4797.4997458856392187582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693ecbc85676898eff393af58ed8d4dd75ca643a216778cc818f79c3c5309a6d
Date: Sat, 21 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750523993
