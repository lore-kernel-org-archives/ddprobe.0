Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239E62472AB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755187794; cv=none; b=hthj3CiVUcG1EmGjdnEpmDiyTqwtt92C8vWC9iNAE9ROX1gWyXtSQnMPiHe7C1WEhlgFLcJ4Tf5F6F9OgYMn9WlaDEsORPzPFf44y6L1rR06XWvSUi+RqgzHKnVm9tN0s8Rqf6zJIfoLrMONPL6+Xfzb21A5n5j/nr5KqC2ZSxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755187794; c=relaxed/simple;
	bh=MK7cFQYrizPvQFR/VuWo44ulUuLBdhyDCOS7C6wIUl8=;
	h=To:Subject:From:Message-Id:Date; b=DTintHMsCO4oGS+2wvG6Ck7ZHUr5anLEWwD/spaFCMb6e8tegr3AeP+mo2uBrGC/zqzggkCzMMwbC6iJSGoQPzI6RZEukBkKS32A1gaBc9tnyH9D1OPIO9JDqhV7JUc6+00aczbOdVQEgS7WPwy4PEh+rU6AT7tylZ656S5ZpK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNBTAGoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNBTAGoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37C4C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755187793;
	bh=MK7cFQYrizPvQFR/VuWo44ulUuLBdhyDCOS7C6wIUl8=;
	h=To:Subject:From:Date:From;
	b=rNBTAGoYR7YfgVgzkvunrWuqvRtK15XKf4RMhst5spDBiJXpWqq7BFeGa59sXjjpD
	 4edD9NSJ0BNOviz9/Zu+fOEJMdMWuSAHglChkBkEi1llXzwA9eXn81NnhekNfBxexU
	 cPnS2kP5noAflsMzcY5+bgVcpJjXKXFbZPvxdPD0eNEDjCFdzYbFd/Vw1rzVpcRUu1
	 FRRTJDnUvnqoS+w363NvOotw8KaWEnS+n1wG0bTG9ve3fwdnW2IaV6DDo9zjJENNyy
	 RXvR2NMHYzOvyfpNoTiK0SoGXrSThGozdMgMPMAcxy2IZUi78y4JrvebpiTdWGrPg4
	 woQIunX6x996g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E18CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518779358.22656.1856439944759586668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642f541cdc80f97b17b1c4c5c7a8627d09f5829db4b65dd7c5a86468294be94c
Date: Thu, 14 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755187793
