Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A021303A07
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777130854; cv=none; b=rGVeButHQK3b5c8mhgaze0GyIEHOIVfNYrH0EBZdTcsvmZMlGxdK4IDa7dCfYEwLYwKpyfSbRJWY/e+KyFl9PjVxC3B/50N/ntZ2wTxDSvmpK9f3ZULqpynV51GGyuViRYPLS1Vh1cNjLuz1l3Y3i46GD3ivG7dzJ9QFJlvQF9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777130854; c=relaxed/simple;
	bh=FAV0iimmSYIbeWo6tSbR5iyFBjw3oIotnKFoS8YgLMY=;
	h=To:Subject:From:Message-Id:Date; b=aaRljQKXoqaoI91GOj2Wo3Mscfhc+G5fzh/FYmfBFuxliCne+un+eg7/SilNd0pNz+KtjrolvQzRy0t7jtbOgdN6DrnQHZ19sHKfrebu4UvWPmM/bHVC9tR85eGjMejMWMt054tbxKPcffzkk47Ed0poR6dGgat+VvKp6ahiTrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayx629CX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayx629CX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4FFC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777130853;
	bh=FAV0iimmSYIbeWo6tSbR5iyFBjw3oIotnKFoS8YgLMY=;
	h=To:Subject:From:Date:From;
	b=ayx629CX2VjBYuIE3vk1FLDVjH2YaFRsO23kE3dNbyY4+sicxMNcyr9eOo7XB5u12
	 xT8tqGlFT6kA85kghOCt8RJeGck1V8It199u6mDvF2hxN2j60A7e2b6w/Me/Xwqk94
	 rIDFIpW/YehuSdHHH9zeSy7B6F/F/Hiqct6Ttr5GFa8yXx2XXxJNsH9x7tCjWe2xPO
	 FAPX6FA/M7MFY6N4WplXAqSOPXMQcxBAY23wY+VqrF9Qd2rlNs/YpKodogcsS9k8vJ
	 QfR+9TNROrKgrSe+THoAWhOFgkZ8IgXu+iHmuRev4cmc6X1eIb4XV9PNlcqZi1HGqi
	 wEatZqM2MPclw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5FFFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713085368.3939.3162977556108319172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60e78338670eb124b58c691ecce7b39e200826eab8e45c2c5c5a2fcddcd580d
Date: Sat, 25 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777130853
