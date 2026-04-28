Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0DA2283C82
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777348054; cv=none; b=Um7KmN5eZq2prfVJ1G9iJqkCWyXl3HghNGqzccU0WbtdSYJ67puZiRQ/UVNoPqNSKEdoGDPaT0OaVrUuDpZiuXn81Je0LzaPcV+mh90HwAGM2/f0u8ZGojm3c5POvVezROzGIEercaq7Lg7gQ3Ty20PWtp0mGg9Op3ddkfrI91k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777348054; c=relaxed/simple;
	bh=pCkQYsKjpZ4pMy3WzsSc97BB0I0qn+Ahl48olJxSqi0=;
	h=To:Subject:From:Message-Id:Date; b=hd5wJP3SJpvh3b5MjKJNzHWnbQhs6rMjAfFQDdJhaW6IBFUewCfwYl6ClipIgxK09G3thKVzUibSnUuX9aVW7JJwslMjb5R15G/RoePG02EiLfULAiWe55fxDDbV0H2h6T9LMSIy/gY1lN3Drjb6Vg792+Jqny4oUT0SDlofZr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iM340paq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iM340paq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C169DC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777348053;
	bh=pCkQYsKjpZ4pMy3WzsSc97BB0I0qn+Ahl48olJxSqi0=;
	h=To:Subject:From:Date:From;
	b=iM340paqUn7IEUz8+GJbmN+QYShg2Zkznz2FOCpi5ZKl/TL8R4sTNpqSH7QPP6pw4
	 8mqemHg2XRSwokYjimpTw/1tIvBKgDQB6MP4uMU23fsbi4slGox8scZjpxyGmjSdmT
	 JV+kIOjdFktDRzqWByudM2v1Nw5py7sdItDz/PuEp04nt6gDMvHtmwWGAKNhayfA9v
	 7F9vXjsmdVjFrSbQ0D8ca9+XNqvDLFHFYwUnSuElgkXdRUu480iR+5K63kkS7MKUUU
	 M3iI4+YG2BTNqUCEuYkMGVFhh55H1YeIj2D+dIZ/p3Hk4H2Bp/yoZ0tgIf/3LigJOC
	 GipLz8ozkrVKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B039CFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734805368.14834.16817101930419053367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faaab70a9e689fbaeb62880d992ebfa18c44f6aa53f81e9e3a5abf4a57e9b29e
Date: Tue, 28 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777348053
