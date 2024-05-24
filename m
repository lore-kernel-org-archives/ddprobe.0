Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FE1129A8E
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 23:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716592403; cv=none; b=V8h/7xLnmvcFZU7vEyhYtAh9vIpx/fYerUleDnnfsiasVuFMxUPs/7VNrOz3SL9CgzxraQkXhklfZ+/lCMDMAjgtq71fFFe96zrEX8CzN8lBN/eQ7LYfVxjSjRLlF0lw0qVraeJeifVDMWWZCgeWDoI8dSmb1Aoo0O+IHJAK4D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716592403; c=relaxed/simple;
	bh=EeAbLCaKUWH/eBB4pY/tFGcemnStTSEStNms+fLewy8=;
	h=To:Subject:From:Message-Id:Date; b=PTlcYMBBq4XiktTRGKxYNnt/sOVBRaa22bTSDVcmVVaH7Zv+kDW6SOC4lcwKDr5tYVv7QfeVnV9wOKpoSgbmuc1hK+pZyvTmlqXO/U127N7Gi90jFmRucWH+RwcRSIXiDTkA4GZyXylOKsCQ3uphx+4zMzXcgX7sj3VNowh1zq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Trbd82WA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Trbd82WA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F26C2BD11
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 23:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716592402;
	bh=EeAbLCaKUWH/eBB4pY/tFGcemnStTSEStNms+fLewy8=;
	h=To:Subject:From:Date:From;
	b=Trbd82WA0WNearZiB7R6uW/0mu2POqzhgwyEWvyED3kQ9G/f4kvOcV0W4WtOq4048
	 Cc/bimDaFXEiXLIv44Mcj9WAPkCSWA4pyOzz4bO+LEqlEeAtCy86ilzCvTM/E6sTWN
	 KYBzwiKbwGDbQ3isQwH8K+Xa9wFG3qi04vbyhxcrhKdh7rf/0BKS/+F7bQdANVu8Du
	 jHRC/nlBYo/zoLo5UmzSElnZW4In5PPeKAjqHRSPtFfHx96YN1sswfgwUXv8vkkvhP
	 tCvm69DoziEWVPHDzvQ3fZyZG4yvdcGXUlZqycdt3Ze/IRMT/2+Iu9Eqy4zmr4tQFO
	 xiaOP6xhJBiiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16CBC25B7A
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 23:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171659240278.14302.11174523781115631722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c441fa163fda090139fcb3320df3fca32da6338b3b801a49a96d994b6a66b6a0
Date: Fri, 24 May 2024 23:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716592402
