Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1351E221FDE
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774100694; cv=none; b=bVR169GjKIRkEH96AyE8e9PHF6RxZCMcUdilP8Q4TcTZMpwwfuie+9UFKdj8kTOby7PYAXtFaEEiIXJv71RozC8cvnJRMi7SeEUGPZksvzwhAt4cLTshdit8OBG7k6I4D2Extav6NJE6DmNagHaQlgpb0/mwqx7oy2yok2PQHKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774100694; c=relaxed/simple;
	bh=DxtluB4m8R2cikzleIuNcqxj0xkgUIinbjorBFWNM7E=;
	h=To:Subject:From:Message-Id:Date; b=u6G4bbkcYFP4t/n7J/XzgeA40d+qH8n7mzVarXvHlT/AX8gX7CNe66PWTApxvBxJ+CqL0S3AVj038LXqSdjAOZyC3/9kVhrjS/HB6jhHUjlCGcOW9+jfti1N2TO4Hnn0k9iv/nFz7r+DClQmkiBlr7QDNagYn4mO1Qrs8I/aFHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtIhCB8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtIhCB8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39D7C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774100693;
	bh=DxtluB4m8R2cikzleIuNcqxj0xkgUIinbjorBFWNM7E=;
	h=To:Subject:From:Date:From;
	b=mtIhCB8/uuj9bSqQTq9rwLPiPK/LHVyKUrp+TqyMdprv5ADjjyuSiuVE0RLt1dbOG
	 qHZEb5lFRMueqi4VrAc4j0JZk0B/wkmBlZx2T8bNtDE+1z2qmNUUYj6KBGo2bocFyW
	 QWsBXrvGiI4GvaZjpWVATel2bVRXXgeBCXPXkf+uzraLxCGPjTPZv5ddI4LWPSsK1m
	 Jxr7uL4M1Tms/rDxDdZkWPjq+//Jj0upT4rVRzhk33siLf9HtpM0+AR3J66f6M5S4w
	 GbACTSsGs9wYVbHCzyfMnwJFlA0L88H3KQHJnxaaM9iY/wlQYdgBsyoc6KFWXasDYt
	 Vy+iZwPN5He3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932CA109447C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410069357.10463.8817090154740506421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701e78babde72cedf479a3577b1408a88ba7ac92c14b40401052fb15c1ef04c9
Date: Sat, 21 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774100693
