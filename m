Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8201EBA14
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770964494; cv=none; b=S98+9s/YM8y/o+DBaTb8TJOT25rZzIWN6kCHHDhVSYe/PhnuGeMwUUOA+m7GoX16VwVdD3sc6f2wnV5dRek/IO7/z5V0gQDixppVlpyL12YlGP5rll0DHnCILbDOQnv32gXdPZY+AZKSVrXNZK3KWr+y+HtvTQhPPjaZM2476FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770964494; c=relaxed/simple;
	bh=/LeZdZ10Zwyk6N6edoNPbDIte/lx1OUl7bwGPYpUyI8=;
	h=To:Subject:From:Message-Id:Date; b=rztlnb1pUUmB8DSDjJbw2EPzGzfd1QgxJGmxOTVezT8Gn2L4TprLChPwYLFXZgrCIwkt9JTHqdWv9wFqD9N5QTjDli2yqgyKazZTUzjh3jhLbza4yrhtTDUtHp6S26yGhT6GD/Vpj4ymg+VW1IFo0wXNRShSUmaZ7LE1MQS3UJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cd1Nv3zj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cd1Nv3zj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC97CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770964493;
	bh=/LeZdZ10Zwyk6N6edoNPbDIte/lx1OUl7bwGPYpUyI8=;
	h=To:Subject:From:Date:From;
	b=cd1Nv3zjgfv11G6CJMZXcyRAohPEYdpUptTmTgI/y91ZAsPKgaPl9YPggeqV+5OQd
	 Z4x2mocZHSoBIc1RxK/LQlfXyw0DZtv4qzdGJSFY0ZiLFdLJ6Na9i4/OId89IOkzrq
	 a96z5tDxd4rikLl28Hu7Ud7Ip7yukJ6VOj+u/UN2A3fcwUhUOqT8EL2iYlT/q3Y/lK
	 2RWmIR0rJWMCTLtC/sOIutN/wNX06weV/sJ2o0UEFCgaxWpMepE12xEDCGSUtHHL76
	 fEJj4ohki//qPmvCvGKwLDwgwPZ6+ltw7chrEo3tUSUmw8Y1yEn6xt1e1BEEKwf9TN
	 Qu1cPoycxJ6gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39BBEF48D1
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096449362.23281.1483224656525695541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c24732dbf6de130d52095e3797c699a0f78b79453e2ae747f7e5b785ca184f
Date: Fri, 13 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770964493
