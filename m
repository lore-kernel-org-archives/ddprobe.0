Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1382AD25
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772344494; cv=none; b=ZNIcqXj6yht/xjLju0nF5zT686JKgHR7f2EoYXAxaekcp80cbF8rML1IW0UrGcmeQX0agVs1pnWar2Q0gGq3j4vRZLWLXxsgoM5UzZD3u17epqeK0y+q72tuvK3lFcWB1s4H1ymmz8Zqcw7GuAlRnQyjET2AhuGzgxRP1Op1mms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772344494; c=relaxed/simple;
	bh=8VMgfbQ38PblmTKBVQEIoDahYx51u3l8EFcCQCjtCxw=;
	h=To:Subject:From:Message-Id:Date; b=ctvpJb/OlygUD4Oo3Pj4BllFwnAFnXxHYnveu4NZ+zQVz0+djhb+KgNDhdXYDK05vrlXdCmZBv2pXSbubhI9Bjufv7b3bQIafnPwRy1Sa4NMoS8foq4XEInq4RNplUeRccOkMDH7iGcm9YWDEWe4vCuYsJu95Pkxj4pWFcy493g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEyxUPgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEyxUPgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC422C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772344493;
	bh=8VMgfbQ38PblmTKBVQEIoDahYx51u3l8EFcCQCjtCxw=;
	h=To:Subject:From:Date:From;
	b=jEyxUPgdShuu4IKUjPD0eWTEeLDYLgmCAnYxHsemomiqnb5pKsp4NAizRUHGMCyiV
	 8uyjs8mlRUHRIFO0q7xgt39/tsKh8MR/M67ceA9ZcMJV1t+Vf8hMeP1/BVmZ5P6SYw
	 A4mw/eJHxbg+diZbdGMBFdhBLkgV18do8VMoYqS74Ld92lqkHeLMbik9TGxT7fQVSI
	 eeKxCiPEGxKMHMFQnN+cjpYkoyx7/LKQaJG84VADM2On0e71jVUO04sYTL7UOCAyxt
	 zWrfBfo8lCN48q13vGnh2C5crmCF4atzHLR4nHFhyYi7wAkacnvojQpnhU/xfhvG/8
	 RDIb3a2lXZBSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8273FD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234449362.2380.3750382840181379398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5129c0984394fdd126e2970cf77ae7f8305c393d119a331706e0b14eabbb6e
Date: Sun, 01 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772344493
