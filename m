Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7458E277011
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763508114; cv=none; b=KmrJE5sDO+QnBRPZyJLAmzUZ+lU7TIg+QATD6RR/1PhgXWpRXojCbTeZrs0y55PIoWEd25I8qZx3n/NEKhyaGWcsslFQkaKLj3zmmO6/GDyhUoNW6tB6/Y4sMAl3BptaDaG0iL5csoWUWJteuCLS/BSyDV2b+W6jCHDH6k0Qt5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763508114; c=relaxed/simple;
	bh=lqOD/DqEUHcqO6WjrfohrYP1LmocnA+GkSp1z08jCC4=;
	h=To:Subject:From:Message-Id:Date; b=QCCU/eFSFBONViy53kTvkJD4lle5aTkXsaz4zVk4ERnE2I0KLKQpaN92x82glwKJAJThXYRavD1oK+gkKJH9nZEz3X83/6YwODMW7WtKKOye5SHaD/VweYW3CPhFCFwFd45PivKph50/zhXSXx6ad1IqVeQQXifELs/YhQsPrhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m719J4oa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m719J4oa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAF0C2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763508113;
	bh=lqOD/DqEUHcqO6WjrfohrYP1LmocnA+GkSp1z08jCC4=;
	h=To:Subject:From:Date:From;
	b=m719J4oaVObrHNnDJAkSu9U1d+sNytY7LKKZlB5/odHl9wRGveFutjhCX0UpjQjOC
	 yj8k17QaeXlh6gWUaTqyP8Di8oUjj3NFtVmO3PMlrJv6leOInQXOtWzvU37Q4Ytth3
	 3OSBWsCNYkt+0e8t3TH4O8hMzz7a0uOk2F+qyba+GHCjYVQrLGDbQWB/hhu1Swxd4c
	 PbAHcgBu25jmRnyz7WcSOJ6ckQbYHYFjWf4GixCefhko3MdefrcVUbhoPkhLaRTmoj
	 TZdKqKpekym/sun87gt82ztoKR7+4inmf6Z5Oyz8714jIr5nav8NcPmgIcCgvi2C+R
	 QgKiXXmtlsakA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C35CF2561
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350811358.18187.10773998502759062637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe32d97659693ec7bb89234d95713127dd193336323b86eb5fd39916c90de2a4
Date: Tue, 18 Nov 2025 23:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763508113
