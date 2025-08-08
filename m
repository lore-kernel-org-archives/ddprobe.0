Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148633C17
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754630395; cv=none; b=OWNBAs9FXvVOC8deBVjHPmlM9byj08Wdnbk6pezoeQdbypXi0+Tp0XXEhKvP49vjGfmJnkyicH6E8upTI9/M+LGx+icjyamMsDv6g+GIphnEWMmLXcVnAlwIjf8Y9toyvcMFtpC6BX4k4MZSBSurzChyG/TJsycpnoO6DbWlzFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754630395; c=relaxed/simple;
	bh=5OnfO6zC9qfWge2/YROuV0tD9msFOlhCKA4CRA2fSpc=;
	h=To:Subject:From:Message-Id:Date; b=GZeOnp1lb5SukVNCbKd3aXJkhicpO/uQFWmdA+WDPqMV0PjBYOiylEIy5hcsXu5xkZUTrYp6NQ8sGW4CDJ4wyPB4GN52MEidA+hJoHhC9leEAw4C7LbrmS04Gmzcm1cvhmXtWDe1qb/JZF+w5seOYMs8l+Ymc+3I83KjY0QRgV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwNMGd46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwNMGd46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F48C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754630393;
	bh=5OnfO6zC9qfWge2/YROuV0tD9msFOlhCKA4CRA2fSpc=;
	h=To:Subject:From:Date:From;
	b=YwNMGd468RAxjwxX2VzYoaYB5OeTir6ggkORSmx6x877cw+PwdSQEzIVkpz1QMkvc
	 o4LBhUuOOai53c8cFZlOTCtV3Fq3RV5OgocJcHwnDgL/ed6f7IJhAgXUEuiXqzgw/z
	 7bkGLSaVbXloS0mIxeud9bDSap0Zt6Ne6O5F33LN8I5wQ9OjIa5mlG8doe+2qpkXCT
	 RKfAQZqxIHiDDKROm/lNfVoglYh6RD0MPvwxxZE23Mml5/A9GlNl6CboxeL8MQSX4O
	 Z3lBZliuOHeGehb8ZA+aOCl+1szKxcIVntwzqN4lakTTE2tOpUC5Qs+ocvoqhsOKkC
	 XgHji/YQ5vJEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED9BC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463039357.29759.675228240851082487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d92bdf5942ad5e4141d1f9788971193dd90948d09004c8cb3ad6e013f55ea2c
Date: Fri, 08 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754630393
