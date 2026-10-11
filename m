Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9273A5E64
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791731434; cv=none; b=VNZvNdGupKBKqxcARQLP6+2L62KSw7OtGGx/vkRb/9VntTv7kllDDuk+q7+ycxJDhevHbeQfALPF85L9kuXOm6D+bElCD75pE3YbNUucJ93IN19l0OHPyll0jkMuaXb6QsO7+AB50CmfHNqd0JkGVRSA4hXpFglbF1IWVydWPEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791731434; c=relaxed/simple;
	bh=Xe9d5kPoWxSIhoFHioELWm17MyB3F/tQcCBFlG2ECug=;
	h=To:Subject:From:Message-Id:Date; b=F2YekJLjWScNCtPjwmYfe5xQF/8/AJP0AWOvpHCRCBc3BJUUeVfRXy4cKqoh15NMH+PYfraylJT7NwpdVrTIgvY35Ht/GvsxuA4r6eeLPyPSM8Don2Gs7jybCLpdap+yXr85unZF7Kky6522Fdn9HmDpS/pQ/cCmyH41r5PTbCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCRw1yT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCRw1yT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28A1C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791731433;
	bh=Xe9d5kPoWxSIhoFHioELWm17MyB3F/tQcCBFlG2ECug=;
	h=To:Subject:From:Date:From;
	b=aCRw1yT7iwyewkQaVkX2y4UfrfVh2BtgNLs3F+eoALAhWBMWX6mzih6EXRP4TE8+J
	 R1IoNtOHCWiV22+PUjC0qawtwI1nRANbAD+S6Z7QO9UuijTGiqGgKQzogDZN+mbbgx
	 t13imIDflM/1a3WwWFWqMU/9aG/5yetdp78R6/y/N6JOr5nf2ZXS9ulW3hg+EkH40V
	 p9i7WWtgw5NQmZMjXAsvYw8V2GSBOr197itGzsHSwzhCn1DkHkAUbQpwyyeGD/YKSL
	 RERgfpH6szt97itnNfjm72ZnhdqCAJi4MiZAZNvRvkZyZxl2VW4AUvUARy561GteGC
	 k8hfXsBB2T6IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF497CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173143368.21288.14730050621084152760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7e6dbe580f3f5380ec9032f50169b553b74636914722c9cd83f801b73c0544
Date: Sun, 11 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791731433
