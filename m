Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDDB153BD9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755350995; cv=none; b=ArzluOr/glX/8sfULPvo3xHM/y/RVOes7JlQtTTy1rwrf4i9QSFC+VE8MfrJrPLH1RSCwf+JaqoMrW7fgTLe6GRluZSsWZRfRxZ+v+wMzFIF7ummjlB20jOcYMlgVWh4cbPuxYprrBcejjvq9hKjZa60TKBQo83arRdjXqAA1AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755350995; c=relaxed/simple;
	bh=VunnXmCWRKmX5d6DRcBrTZLSrU7z/Lr2MSnAluI29Oc=;
	h=To:Subject:From:Message-Id:Date; b=kytvZDNyR6MTz43axtPiLpfBslUCujd6J0bFJ8CvqPMjnZ8wTE5y/Cw99eh/4DwcbFIw4lohvYWxb2FxEaPqdkWMJiuodh7ShcHCWCB/oxF/ggAwTT+gwS1Tw7GVas3J+MmEeP9Z/64+Xp/u7340Tai9YtRPNwoDG9xvS/NvoqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INbHP+NO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INbHP+NO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01FBC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755350993;
	bh=VunnXmCWRKmX5d6DRcBrTZLSrU7z/Lr2MSnAluI29Oc=;
	h=To:Subject:From:Date:From;
	b=INbHP+NOgXtKl5/n5JyLHIPAv28x/gMoM2QausRnDR+23M7Dn6K0VOLwUvoSTUBZp
	 bN8h1rGLuh6BIsDf5wKLdG3tSj/8+AzHzBhSZaulZ1mio9zQpqoZSgipdUXNHR4NGc
	 1TnABZYUnhvP9N8Fsi/BwGj57Av0etsNhLyYkp4GNnfzze7+/VZTCTMFbQHbEHW+fV
	 Gh0D/C1SI/5P+g+jsVAIByK73XK6AfP1K/9zRk4oH4TfnylnHEZRHq2+paZnAZLjzh
	 5yuHu5LYJzoDNF88PQOIxcG9gOY7COYZopvtkZE+13PQPdDoq7U3nTSPcAqv1nOGlK
	 4zNf2f99VIxIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF3CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535099357.5683.1746062792244469088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dff868dc1331394e8ba52ab1cc62a5a2d4745e6e50a919e8acf8eabcbadfd54
Date: Sat, 16 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755350993
