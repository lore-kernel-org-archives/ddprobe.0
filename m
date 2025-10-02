Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BCA2C027F
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759415994; cv=none; b=St4eykr6+kF+ssj2yTEptSkuYHMPhO5gxxBjH6ZAceEUycmVWVe4W7Om0SWYfVi+6nh/weoYFUCZBzyWqDxYLTzOhFsazzQPmYW3vIaZ5QE6gwKSEaNtI8jLRTzwbo3sXAuISGRo9O1cN7AE9POuDn8JdPLDcvgFzkx92RyvHl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759415994; c=relaxed/simple;
	bh=3bl+3gsTQrx6oMlY31/oGLRjUolD31y1O6WzfQXbjdo=;
	h=To:Subject:From:Message-Id:Date; b=uUN15RV1OhfqLQWWtFcQxxpkZ3h7TXhto7A3fDVcsQn+5vFQHCeJKSCtx06uMKlEe4qRaVCb8mFg66xD6wCpmE9kAFIYuiic+fFo3imwJSqwHc032nk2IEv8sL0jkHd3USoWGbZJ2/Fnu4dBSdw6VA68/PB5jemY7RGWxWDAzkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gecSGFgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gecSGFgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F0FC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759415993;
	bh=3bl+3gsTQrx6oMlY31/oGLRjUolD31y1O6WzfQXbjdo=;
	h=To:Subject:From:Date:From;
	b=gecSGFgQpfF63Qliez8hRXxNKJy2K5deQQhPqZDe2EVqpAd7iWGVyd8Klii59e6q8
	 MP/JQmwWOXWA4+fcNcwwOHhqlsw6GqJyuj4T1CVu/pczWNkizVkkzJiRAYPv1g44xl
	 M/1Yr/G5MpbIRE2C7vjmVIrZq5euSbvtwI2DUjmnEnUS7DqZQsAy8J31kKK8cfxNAe
	 7rzO0XTDXUTHgR+CpszXAZaXLwV7GvSKGICgUyDQttUsiZLRKot4vmbosJNlw9Wqgj
	 7+rC+XmJ71so5gg+dfj2KW8juAMl94Robg0TV9VxYN+M7ITcDyLS5zuFR/R+buBGn7
	 JdCXw46sydgOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4EFCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941599358.21033.12355611920139016230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1626c9c5881186ec7c025cdd0380f8c054610d471e57dba8a9faddd45c6fefa4
Date: Thu, 02 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759415993
