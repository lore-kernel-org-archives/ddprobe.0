Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B1315D5B6
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750755594; cv=none; b=OoMNhTfm3jelyxQcNX9SS1HafWx468xKwKSK0Hf3Qi/dAYup1uMMZG5dYsnlh6Uuq7QkGlglbDBXwUx48e4aBRu3lX47JNe9XNHMHLSM/o9H9dFgDQnIPN+AqeNFesdaGMCVdJ4Xe7TOqfNIHik5mThnGsLLyYcF2vtISgRSW9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750755594; c=relaxed/simple;
	bh=nfxD2LXyzOSR8lebIRzM9HnLAfEakb0MEkAQXC9zGTQ=;
	h=To:Subject:From:Message-Id:Date; b=U4IBYwAFXQcbb3SVB3v5xjML9aYYOODDJSifLF6Mef3NgoLy1cwSnvN+IPp+KUgcNwuNyP9echOaeubnJ4AmVABGBL43sJlfYe8+1gO7WU4DQxwpe9O4atbQx4BU9Q1OEJK4dF0ev3g61rSUAfEmR8fcS0RW9OaHuwmpK/HQ6OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FF9/Xz4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FF9/Xz4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28C6C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750755593;
	bh=nfxD2LXyzOSR8lebIRzM9HnLAfEakb0MEkAQXC9zGTQ=;
	h=To:Subject:From:Date:From;
	b=FF9/Xz4K45j8nBM+nWHw2UhOcRQjVl5Dpuw6KVpZ+lGnAoMz7XHdMncFIEH52VZnt
	 FJhSvEUStQtgFJ8/h/CMH8QJPS4awefrtKdUQCH5eOMGONL2KYRbXmf8mnOL27TaVW
	 azPh9HP+W2oOpvRG4isZdxX+tagTv2aYim05HiAQZAu4Jk0ZGJ93iqDLM6Jvumkq+0
	 KTwuJFV7yFpiteo8fBZD0hZqtEOYkSHyjd8WeIbumdKZsyUbL+Bc6ffN8v8N0wuG7M
	 H1C+OlWW6JtRGoLtvnXCMgn4AwUeg0DhVKcJX1ZH1CqBXvlNJTo9KwYLKV3Gs4ewAf
	 W+hzjofUtWvgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE00C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075559358.6422.13323629711235662139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7585b8ed707ccd7e97a949965e79b7e846c4a20efb3660515f3b7e9b4c4e251b
Date: Tue, 24 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750755593
