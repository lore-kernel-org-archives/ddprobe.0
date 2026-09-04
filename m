Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257CF2E7393
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788490834; cv=none; b=dI2sygk40dkq5UTTWBZ9WXXG7QuPUY83QIDyfr4muldgd/EgKljJ3q84UuZ7NOS3LTSHcXTQxtn5+4BD4N6zAWjlc48Lrs7JkOpVuc2j0Jf9siXKUxEHgA/mpWtrC5Vk6rhe4otxw41aq5pt3AnLTupKPMQ11AYLw/XBFqyYpvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788490834; c=relaxed/simple;
	bh=i6yD+nwbbMKlGIkCwAO751Rnrui8wHDNRSHRC24z8iw=;
	h=To:Subject:From:Message-Id:Date; b=iiyE8w9ANM3Wj0hmR1JSltjzDSieVFXWF4y9gBGOskjHbWguamI79dRL9cu6evVMLudjF9MqNKWRT5TzqtJ6OJipgrJhKHgcgK1R6w2ouI9pPIGTwf/ibhe5rpktqm6ZqwABEVz/IaPb6Kuhpe6FvrBY0FHXmW/duOCxHrtHqKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRpP7H9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRpP7H9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D070EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788490833;
	bh=i6yD+nwbbMKlGIkCwAO751Rnrui8wHDNRSHRC24z8iw=;
	h=To:Subject:From:Date:From;
	b=eRpP7H9KTRhjoQpWnMZ2MQXBSU6neUCDPxqMJTwt18ZHBQdcLykxZ6hHTzaWuC50S
	 RtDgXz+K1pCmJ4N0fYJnFP4q4yQdkT6gfNr60fqRyO8eRc5k7tRGqYroHL+ioNCc0L
	 o0DsGFsWXGrdWr66Qyx5eriPvhNmxoKL0yfDeiWxcr1dLJs+KqlCwT/RtCoAgSh0NO
	 y3O3sTruwlKGpgueMGNCd+k7Wi3iANDKM9sSSfpO27MFDyTRiV0PhDPobi1oLulT5V
	 wXWmEVl/3QZ5T3HQth9HxJ/eCrPH+1GC7NgZadnRYLah1QQYEqSUhE6iHl034JSxlM
	 EwhwLizxqlWhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC13EC61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849083369.1038.15236899622237386264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a8e5a41a3e1dd83d2392a30e2d23844f3378e1305f319d0c6b7f5980d761c9
Date: Fri, 04 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788490833
