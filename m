Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D72526296
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791076834; cv=none; b=LC1t6pveuvzBFwRUT8U6BTFOoY9vy9mMMUo04e57PLQ5QWgVKh2k8PF6FVdWZl7vtmUST3jn55McICZj9xnngr5yyxchnS+IJ/Ddi1uD/zDzR0n+6s52szZh+I+5CA2RM3RreSZT0t0z4VX8XMR0nq8EDk1ae5eOywYM1jrro08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791076834; c=relaxed/simple;
	bh=erhK0MMbGcqO/1oxqWqUppO+p3XMCjBoQiW4mxi1ITo=;
	h=To:Subject:From:Message-Id:Date; b=j1fIsfatA0rSx+oNzfrOWsgf0JS6jI8HQXP+qJ5frw5j2oHDmyoFjA+npGwFHO6+H4+foeIBQe48ISnO/ADRYrdd8rTrkCj/dshIf40lWZ1f0EBb9A8gOeTgpo3p7nmXTJjldG5vXga4VloSd9fQK75HEmcl6repWd16C7+fCmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEB8IjHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEB8IjHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6B6C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791076833;
	bh=erhK0MMbGcqO/1oxqWqUppO+p3XMCjBoQiW4mxi1ITo=;
	h=To:Subject:From:Date:From;
	b=BEB8IjHo+gJxqdAN78qYpuFqeh7g+KiUfRR1irBfJ0xMvlyFsBax34Op4ZsUR0heL
	 xtw4WxI6/8YROFVQdRUrUFEGz6tIEHuUdpSkktNfZ//aCZENbvv6TidvIC3hVSXHiL
	 1Tl4SnJ1OUvYzfWGYAvYdKvBRSwAATVybm7jxpflwlabS2bgk2VV9+HywB3O1IoTsS
	 VlFNLNwskSORP9CgT/SJ8dxIIUcYRZ7wLdAFvloUtN6P1KCnUlErrdc1UH8ZhUEMuj
	 h62Cg+koMILtB59bEZEWVqRBxm/yCGs8VkQ0SflAqsAz+1e+nnMEG+lHzD9TwDCAnI
	 lDYnPDT8hc2Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80A8CA5FE4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107683371.19152.2156021562826542896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2c20aa0ba167f0ab1fb3e49c04d96507f5fe68685e403df24656b5946a727a
Date: Sun, 04 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791076833
