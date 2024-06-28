Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589C1D299
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719556463; cv=none; b=HEx2KvWPAb+DyFpJC+GJhuDJRlggrzNVD71c3FWAYAHPs4wQDianjSfmGhJCQMNgASoxtkZEWVfvOT3VoVjC0sBGy/30nAYXgw4eI4h4nB+h6p7tfTr9YB8WEhcKhH5bEUA8Kxyq/wxnHsSYiaMDt4PwHmOtdVOupYD+n4or5DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719556463; c=relaxed/simple;
	bh=TBVhLQIbVNezmzlhSALHvyNrprSlQZc4VtGzFMckLho=;
	h=To:Subject:From:Message-Id:Date; b=jruwWUEFeu5/r/7c3DmRsAHd+JcGixt+NZhOzzTRGHQDuL38B9RbwKFMNuI7bzpSW8MplWvdEu+ni0I1By/Bmm+OYlXUeYKBRohV/RdDzclq2lZeUymxbXjvfykWE3eouB/p8NEkFISty4utCljYa6s8N62u0Pb1zAvSixJ8JJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuGbZ4MT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuGbZ4MT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B99C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719556462;
	bh=TBVhLQIbVNezmzlhSALHvyNrprSlQZc4VtGzFMckLho=;
	h=To:Subject:From:Date:From;
	b=NuGbZ4MTZZZmtibjgeVqdUO+8oTu9T1Kj9eLloLgJ0kp2FyVO4CcXTkr06jkmQNtO
	 QXxXnqgW6nogd2Wv6YO7U8r8b8XoFvVeup5I6mz8lB5dK68P355da2nLxd/lWMiczU
	 MJZTOxp2aBeMA4i3debxiMBBWRwBm1LB8S+3GAJFgwhvMpHLO+/njV5J7UEyAMYSOO
	 qbqKAU6G1kPm2WYgvB/jOhvSBm3y3HOuoFjndjEnZWuRLgGeMYuDFUOYqKxuVBxR7E
	 S7l66E6X3JuLEKID/u8ie+UV5Y5AcW5YyDygavEDZz5jqvKjUeUM2SrzPXBoajcLDP
	 zvJCUQ62yEntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB027C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955646278.21976.16233661522942015401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726d6324dfca36130e1358700ecb94585609a6bf9f6cef0c3ece8d4a979057c0
Date: Fri, 28 Jun 2024 06:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719556462
