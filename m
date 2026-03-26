Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A321382379
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774510494; cv=none; b=u3KJBhzcgyOmrFcrsbgINAgVYsb2Ug+FvdW3ZvSjTerB0z7I/CuA+q99hN5WCqxoECgNaa+smRrxHjvyasnF6XZqbLQN3WbJBI3tvXoDbYC/rF0c4MhaKcX+3yqaGxoWYVla6/fU9tV1aVTgAHhocc8Sw9iPFoUEBapdJ7VxPuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774510494; c=relaxed/simple;
	bh=je/aO1vJ2lpFdxHgjnovrRphx26F/f+Piz5Rsq4tT04=;
	h=To:Subject:From:Message-Id:Date; b=uiWs7j27HU9+kfX/36b45lE46JVx9dPTpLIncr3MkNvQWinfhh64fEKLz2ySx8prijihTHTQM3dOz8tety6ak/QQl+Y5jUFwqFdxR3xFZRODlGRC8u+HhXUPQ9yyCaPh6jxwVRnpSvUQaM351yQVPQI4zOhOzvmehnGLQ01eSfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNuiEqKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNuiEqKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FDAC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774510493;
	bh=je/aO1vJ2lpFdxHgjnovrRphx26F/f+Piz5Rsq4tT04=;
	h=To:Subject:From:Date:From;
	b=NNuiEqKBS0EXsRXCBf/fekWvVvMvyTzS+qfHWQmc/XKPzDKvim3G7DLXtl9d2h35V
	 GSz1l+Qmy78x/F0UoCAprPVjWPJMSWxAqKnyDNopC2Vq3B4vrO2yXbHzUkIz36oGGd
	 HDs9aY+F9mvhYnwnLC985L6yMoZQzTU7aBiXVtTMQ6kRt9kiVxM33h86qdXPiRhDpQ
	 O9ELVwUmWksD4zebLI87EKCttFdnC4oFc68ZyXRrrknyQEaNd1l6jcuWly/nJ7dUFa
	 f6emaib7Hd7obwiFCE23kDre2n8mIN6buiflCLbaXRUdL5JvEjAudS70GC7Oj6aY7R
	 yQ8qtF4aAOXrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976B0109E556
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451049360.6097.9214583998907341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f96e10282a91905e1899912a60f6860b5cb5e0ccc747764cf2135d130e556464
Date: Thu, 26 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774510493
