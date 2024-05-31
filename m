Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8347FBAE
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 06:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717138463; cv=none; b=VkLZW7NmKWkhWvhbx/bMWQZX6HlyKwLdcPYfsYxKmNhB11k99o4j0LRsg3bPnMCL3miOns7EMHI2z1mAbbgp2GzlvHZ/qtRw73g9EqhsWHj276pJ0azRcppzJKtmRblRjcJQd6f3QgXq4tlTZgIt2uqPY5IOckh/zL4olrDQ0o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717138463; c=relaxed/simple;
	bh=am5IU3meplx1q6ovvZi4H1djV/WBgzD14WjqVvckbbM=;
	h=To:Subject:From:Message-Id:Date; b=XaDyFjkYTKplT+dELxthbLuy3oB9qZngXq7MbTqd3s47LHicctZk89uuzsBRNHDXgAhWv6cxXSFzGoYpJDzSkxMXApFWByQ+8CHNmoDYk9IvzSF7GTfYIuRqgY+iFp9CjBHHwghBGXe9k2aYp0mF5T1Ufa94Pf5auhWSAwU4Yqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxkonEwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxkonEwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64E3C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717138462;
	bh=am5IU3meplx1q6ovvZi4H1djV/WBgzD14WjqVvckbbM=;
	h=To:Subject:From:Date:From;
	b=CxkonEwCPC0a9x7AgJbvnW6UpgKPC2tiJ6yTSlO3wDoI9D4602uxNtrVRwzi1RUQ7
	 GVrtPu3T/3aaVE994tnZhBDBG264UOYF9OPamrTkwQLpadFrUYrNGQfrEeBkd1F7R/
	 dE+CPu8TPCkiUujsYAPvvdGJmKXy/fp7VOq7F0GGMlh4t8GBEd1lMRFhuSDCJR2ag0
	 qJQGDM9aAM/ZuY9fXeofpF5XtnBz/YnCNvFPHkjg5yd4z6u4Z24vRgm3Vvlaxc8zGE
	 uBR9j3qWA/a1lpsTXSXlYaocTJOW54ekV8/v9/3i3n7sJJvu3MPqOrwWN/6XotqtmP
	 fc/Bguq/vZVFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5516C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 06:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171713846279.11126.7539748878235496338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1843b57011012f5ea90260a1baa6ba8a4d832a1a4bad361ea89b1790d92a7f39
Date: Fri, 31 May 2024 06:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717138462
