Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A351ACEDF
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736509554; cv=none; b=aN5eDNkAyY5MsaDY0vGQe1JxJS/Cc0aLslN+h50i/RZzQF0bQ7WdKZ2ElPlHfXs1GWgvCsk+kNQ0a2z7fLuA0Ib6ZgXt0LX8SqMm2qwz8/l/m8AlXt1ST69330jPjWtEFD5uM2mleETqcpfa2uMGO/+b12/jAq7Dq6FEnWqKZ4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736509554; c=relaxed/simple;
	bh=7P4fETzJ6O2Gducegz99VJhxt5Ftd2mCjAW5/hMV0mw=;
	h=To:Subject:From:Message-Id:Date; b=MIb+ZqisDeGfq4fbRJW+Y5P588CRz4BUxXcQMFi0wtcRmUFUGzXc7XeYV3dRAwcIGzsFnZgF4Xv5XSbroKf8ZPaMaWz4HsTVtYg2cOJbdrqCiLOdcam+EfT7GB7VKeft+FzDO40paE0kwtUUwb7QVcOH50plQ22VZcK5s1+kVfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdBJ3jRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdBJ3jRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABC3C4CEE1
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736509553;
	bh=7P4fETzJ6O2Gducegz99VJhxt5Ftd2mCjAW5/hMV0mw=;
	h=To:Subject:From:Date:From;
	b=sdBJ3jRItct57kc1R4kVZdZ9QgpqzxroHEGDu4l/xVenVSrwu5UAqxqWvDDvkXO3I
	 g8aIqs3ZtimMR/TruvuB63oqwTTZ7/qbbvSiIi/XYTCNO4wKR1qe8b6vnGbIo+17hm
	 ADuCVBXp2sniEJQ/i3wbUQKwHrdwMTEmboN6rM0e2FN34GZjKNDHmTJC0Ii/7HASRr
	 kZkGJm25oEbE5a+IHAVgaypGobQWnY+pcHCk9pDGUmA1ywXFkZThjRUrcxcSxsIft9
	 mYqPh7UX03SKoCGzy6WFQEahbqDSknexmt13tx8cRpTIOc6mlD/C7eFYbAUACNyWAy
	 zCBpbsWbyVo+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9694CE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650955360.8087.8504533900705220109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7db09253e8e3ad781c501a8b59a787bdfc7093c484a10cb4093ef033106dd19
Date: Fri, 10 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736509553
