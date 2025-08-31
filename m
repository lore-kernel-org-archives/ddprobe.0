Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D4B214A9B
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756612794; cv=none; b=ooW1WyYmeqjb/DJzaG6RETzHh2SLWGSUUkkbf4nICjmJ41xJaFA9y85FXRUsWkNgQXe/SnGSVqIIIHW3jNdOaU6+XpAqYOv7RBMgqVqUh30rxklNQkDT0AypV8AXb54RMCk2ziPe5gDHLhBXF+PGwxkJ5qrKpH9AyGtRw0TpziE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756612794; c=relaxed/simple;
	bh=8BE7rxVSQ8nRhqVPoCIo7gsev0gQ+vGZJQY7ePLIeiA=;
	h=To:Subject:From:Message-Id:Date; b=q4EMItayFbqS2emiANeaMH4YiQ87zwZun/N/aBXOv6waoyVUDGPmvSick16C4JOKhdHgfyJDOIcGzQpjUpyAlPhBFA74CGA5QlhKKSmDILLJWI4mlN0TRX/kDDofgB1eWjrstqZ21A5jeyhrrWZuDlIpkrFknJCF926REQpXgOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vlc+8H+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vlc+8H+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A352DC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756612793;
	bh=8BE7rxVSQ8nRhqVPoCIo7gsev0gQ+vGZJQY7ePLIeiA=;
	h=To:Subject:From:Date:From;
	b=Vlc+8H+ixmwlfzR2T1W5BuHGHysXM7SvHXvtLyI7HjCML0XlGp+CFiR1VpUiMc21E
	 1ksPx3cyxrL8tIgstJ28ZwKf9psTX6lIn1GosVVz1Qarmvl/tf9chbY7bgretPzJu7
	 xAhPDTlZy9W6wb1pLi4PutOPDX/WyA1XWjHX/5UtIxk6yiwaBoKaTDtA0rqYBROa9m
	 GVSe3qE2dsi1ojov8UxSp2xfck/Ilh5bzRrxrKHxp23tWdZeZNrs+OJCl6d6grn6m0
	 YXAyoJNOSG/ExwZnXs1o/WhwGEEtYzMcOYSsbpGM6ZGl9aHyXla5lZ69IAhvVSQXb+
	 glgcxK25F/rAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91031CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661279357.11880.9964438396063076203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7acb91bc3475bcae261d7fc864b0e4bf7293cff61509f865b9b745aca5aaba
Date: Sun, 31 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756612793
