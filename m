Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE99198829
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717589783; cv=none; b=t424EfiCD53cb1oVjo+kJIPApF7vrqIliGKf7SVTKZHw6X6ZBkxzwySLp+CJVxoM/MjoaAnMywVFMDNaMmguc32+bv9rRVK/E8Rm3h+kWupNV2cFmDfUb8HYTSC2jK7h/Uunw2uNnTq54TXdlL7VlFhb2eYh7cXpfDm0U8jHLhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717589783; c=relaxed/simple;
	bh=vpP9avDYy8wN+x3Rc/4WpE7DP6RsTafIVM6hUSLbc4U=;
	h=To:Subject:From:Message-Id:Date; b=FIgs+GVSTDqQfmAyC2/dXDFieq51Oi8iihqqNpCuLzylRnrkotkNXJOleIT3pqs+KcelrgR4cFXD7dAM0KMTRBPJGnr3niPMJPSIbuwvhWMH9sco3roWtRYCyMzoWGSY+k2KIWIpO8Dx07klPqfbhUEkGXCqxnDg7ueNs3Us4VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAg/TLBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAg/TLBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E852BC4AF07
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717589782;
	bh=vpP9avDYy8wN+x3Rc/4WpE7DP6RsTafIVM6hUSLbc4U=;
	h=To:Subject:From:Date:From;
	b=oAg/TLBDwU3N2EghCqSvMHJCd9vaoqJgKj/na4DyIyk4mEySALLlJnAunLn2DvxsB
	 OaZKJH5TLTD9myprmIMOyLDH4KXCnipHKPxZEbq7Y+k9E7FEBwOcZtXEmLXrlpJtAj
	 kkBS8iQjYt+th1vy6ebczwfMX6Ka0GHUQN/C8N39tmhAZK2PA1qaxv7hyjZBMKNRHI
	 Hql40vsKCkvp3/E9xFF/BsQ1Mo0GJZKR3cgz2HuxI7sjiYjMinN42hqp13/um2jpFR
	 HJmq7J584LCMhPzIEyA1S1CbvoYkjGBgLPTUbJUUM6fSHJ9TPz/aCIraotXGe3BA1y
	 ZASfDvWlspi2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5270C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758978286.11622.7106442283189946481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a790d946cc60e516aa6be0338a18c3316e96702a328172c1dd2709ea6ff0c0
Date: Wed, 05 Jun 2024 12:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717589782
