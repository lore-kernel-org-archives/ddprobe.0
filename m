Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765EF2BE65C
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761236394; cv=none; b=Xj/jD9VW8Qw55BScjIZ8+QB7OPKRZXiFW4Ph0SGR0aasmgMEJOALeqcV83IHd2c/CpuyCEjuuwRky2ZJVcVZ5QGh6TJTmWHd4uzGmNbesvPr0CmpkfxOLzHhGyTmocPfVs+FLd2TZ0dTv6SKe4WIsAHuNOowOczbkgtVc/djICU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761236394; c=relaxed/simple;
	bh=R4vzn3jdc3JVOqkapw5NwQGZ4E/yByuLYHjjj8sy3Io=;
	h=To:Subject:From:Message-Id:Date; b=NCiYF+Kjg4bssnuu19teZkNl1mwSJO5ouIhUn0mOZKqB5kTqoDhk54FnRmufkG5doGFt7lwtFr53BBnMj8CA7oMeJNpo2hfdlUPGt3/a4YI5kVOaCnLMN310VdVjCB9M3xxvLXGe3Xys7ELcos1x1rvInHDzcVmf8843jQsRELQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSWVg/z9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSWVg/z9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC068C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761236393;
	bh=R4vzn3jdc3JVOqkapw5NwQGZ4E/yByuLYHjjj8sy3Io=;
	h=To:Subject:From:Date:From;
	b=lSWVg/z9z+QCYRgLLzaJgj2gaBw334VBuBiCZLVtuy7rrdjt2s1Txm7EoG5jHF/uX
	 Myr3DlC1DSd5pfx1emMX9a+TcO28YSW5f8C9u2Vysz79aIdnUXzkyOpfgjTljMuOG7
	 c0IjHovGkX4HBKMdTo1+rvWZg2f+m/rGgoqulei78LOhgzQ2VqPdk2IAm7ndCd+j9+
	 s49TmvDCJ1747qOHRbVJLw0CyVKgJpuVcTSA0BZ2QzQyDSQWxtR0bQIuPgKuzEInXa
	 XwSGVdLX5kDfZg8WC54OjjRrwKkYPk69KqQz65rQFhUKykzZHysUnvQVMHScUX+/Ph
	 epdgN5/6fQJQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BC2CCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123639360.28875.8069935247195871699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cffa593c3b043fbed2415204bbe8c10aa468f7cd79f42599a01f3d9cf9bbdca7
Date: Thu, 23 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761236393
