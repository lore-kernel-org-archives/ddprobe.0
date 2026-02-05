Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FE02F8BEE
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770321834; cv=none; b=ahY8CMvVc9o7YEdtweavchGgRPR4eTWv3IpIvrJEm3bwU4vyU2O8P6zMVsZomcCxEqqWmla5HCdgqrZ5nu/eAe1025V59CVksiDYEVud4fTgPNN/I+0prfVgyQ+MnKf66qp+LeGpn0wrLEJqbgqDhZFo3YuWsO/2Y6aYdty+goM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770321834; c=relaxed/simple;
	bh=tTEON8sNXQmVwKmPdEEBsColPIAkRjqaalAaN4QaGQQ=;
	h=To:Subject:From:Message-Id:Date; b=bm0hKx0CxpvQOGC1IIrx47k1SxHF5cepw8BfB9WvpLs2qPLYieeWtlO/gWRIizjMQSm7roJx3WwvSnuk9bD+6vKuWNLYsTN9MLn/w2PCzUZ2/HuYb3kgdJuCfpaH+1wt6HEIPqPTkjikMYuAMb71kG0XvP993jyHEtT+r/9NkUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWZTmeSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWZTmeSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22B5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770321833;
	bh=tTEON8sNXQmVwKmPdEEBsColPIAkRjqaalAaN4QaGQQ=;
	h=To:Subject:From:Date:From;
	b=PWZTmeSvrucEH06WDmHFjh2kLvl2hz5V/3WeJLzlF3YynhWPWpXZWRbqseoUGamsq
	 0G4CjhLQ9vSH8W8OjPaAAkJSWNqy1oseEOB5AmQpBc8uo1nNkXi+ZIeChsyUIrGCFL
	 ifgjHXXqDVXZ+BTAphJ04/RcFkf47jw7t1M+VbE5hbd0/J4/DrXs0uyPiS5W3PqpoV
	 jhAQA4P7rjXxP7OqrgX8ooRmB7sccRpBEpI7a83wTszOqxS4XtOtPLXNBt/aO9DbC5
	 uLNFgRH3bAQb7zdTjWUYnlPoPN/r4UJjYA8YMY7QK06yc7ByvjykONYa18LmDtv+E+
	 NpoPf7UDhSayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CAFECD99C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032183359.31490.9499245824935805756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7631153253fbcd5e0a43f4f9d00c77126dd486d53e6e370aeac3f157fe056120
Date: Thu, 05 Feb 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770321833
