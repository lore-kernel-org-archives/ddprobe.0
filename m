Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BF8238C3A
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762100994; cv=none; b=V1XLsZzXrdn264PlKZ/Mxon6U05KKd+8cDisoL99j5oLYyRrsrCM7HFljuarpqgHOj+yxQ+cara+UOPds/96nSb3z8mqPJBfah7EB5jX1RsOGFn4b6ssNLvcmrOneomPbKuYfWVc0vmPTBUIFD1qvWGk0s+hjL83C8+L2S0k+jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762100994; c=relaxed/simple;
	bh=HS7B497SGIt3nerP2o41Hsaky0kiAW/mRi03pQQABBI=;
	h=To:Subject:From:Message-Id:Date; b=kCh5mv0tydpYnDbBJWHRmcsqxJHAP0dfTiHvs7jsgqrQz8AfmXnEBk83x1thyfu22LwSXIoOd4wE4c4JPsapoj5Mlgbr2Hsc/Z6FK0aaFrjkNM6uiELyNpDNVBsgrF6lJVggsxNcI6boqYtXJ59QcDDw9v3NzYyBIuJ6EHNuI74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0XDElzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0XDElzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7A5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762100993;
	bh=HS7B497SGIt3nerP2o41Hsaky0kiAW/mRi03pQQABBI=;
	h=To:Subject:From:Date:From;
	b=Y0XDElzHHee7M3oAA+oXp2LEghkZK0/6P8Rso8pfAX2TTSR0nN2ey8M9NLv5+lO+f
	 fIc/ia5QmdBaAaslUCtOkrRPPnUc8UeJZpLzSQ7LQDQ3IR+7ukxvzqp+8TcRVXgWYg
	 9nRCvGf46gZojFGFG0S26pV66aL7B8OWaKaZ8sA7KXCWuE+RaQggHdvnWVUy1oPlms
	 O3FnkyanU2NEUSyC0Sq1pRQeclDjcdgvqdwbnJswUWyGGJTFlTjewdCFtLJYMF5+H2
	 xZbtPkQt0hirLs6aqqAlEabtAtraAU5x6vzRJG+y/zNUSYFky1vtPdjgt+Uja2e5D5
	 eGa/++wm5Wpcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936ECCCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210099358.16857.1524212941754079324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4b310075015d7b1b617df44b89f6ddcedfbd2dd2a717d1d0d5cf35c010a467
Date: Sun, 02 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762100993
