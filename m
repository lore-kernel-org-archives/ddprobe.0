Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB7D1448E0
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774752894; cv=none; b=LJdQWLNa2pQIPNk19VX2KF98binInkHp5Xk8wAqywX/f/f7driE9I3H1KHvJsdFVn728daUMq7drm207Q+IjG0ifV8PLSH5oNApd0bXMpY3fRtQeJ4mc5cRXK/1cXxwk53EsuP3ks41xDqYiDDJ2PMETONKDKTjlPOrTsR2DojE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774752894; c=relaxed/simple;
	bh=jecPtZU5wLFGIMH6QvB6FU8OZVAtf5uvMJ9bWQ+TEh4=;
	h=To:Subject:From:Message-Id:Date; b=WUYCx9ODuKHIZgqmOYasGhejWzH3V8DzAZaxVe0nsVdHBl6TzbBQjnlBWvYD2jzc48qGntX1EXGzYNBsZayKC8jkkwhMe8I+rGNF8fMSuNAIgpXrPMlAVZlqXAdpv5OEl1hY9JTT3D2AipVJAIdS6dW+rpQLOyXKiRbZMt5P49U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtIEA++T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtIEA++T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1C6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774752893;
	bh=jecPtZU5wLFGIMH6QvB6FU8OZVAtf5uvMJ9bWQ+TEh4=;
	h=To:Subject:From:Date:From;
	b=ZtIEA++TkUmy+3JXgr4tKCgcjXKa9GBXsfQIpWgcjHwKgsjn3vAAC/kjtGtTMMuzu
	 KqRb3FAxkG779waoj8XUJybLydaJNS8Sohiw6zAXXZizn6Oc9RxT26hXLaaXRtwbIJ
	 cX+R+U9f+pke91FACU7miqm679GXlp1k0ToO91D62I+0DE+AZXPJu780xmjflEv8TP
	 U0cDa4k5bfCoDXEltvDNqLg09wm0fGuuS0RFaEtPdGw9r+DpHDgysm6kX021s1pv/v
	 tX79F4J2/HtHYrneE+V2KRutX4hx6CoffWWzW6CsZpmc3r69yov4LBhs5J1CTdShzU
	 3iahzzqTiwG2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9614610D1494
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475289359.13862.7188671588495185942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8e37e1c7a162b912710bc3ebd6a0914c48d68bd7b7dc1191a80f2968996dfe
Date: Sun, 29 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774752893
