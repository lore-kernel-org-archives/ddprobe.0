Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CF7414405
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789069834; cv=none; b=QPSKh+ZaBnoRQuoJwY7NaRb0ZfXED6MXeGrl/OjEB/aB9bm/esrCoooZ7dZzoXkfB6kOkx1jllZDHeII1RCBY4rYu8Pzmy7KQtXJXzqTONGIAhTlRTB/oFJcTrVmgunGL8bLeLr1pZjC8E07k7AWcYpS/oUwHPLI+Fe0x9PYFvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789069834; c=relaxed/simple;
	bh=LjdKhRQoGKNiHqYK5IIfWdfxxSLlN6WMSXZXnayNerA=;
	h=To:Subject:From:Message-Id:Date; b=e8rmpS63ZtE8DQyIGrVlpGMTPL94wySziM/6CxFK6vNgriqhQGppiKQa4WpSGaMM7ADiOMDiP2ICDTeCVQAmdBy43CyKqohakrapN+Wwae/XPBO392WCDF++l3dU+kRou5l/5AYFKh9CrR8Ly4i7H1TWQ+KxeIPKYTrP3i27o6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBtlObT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBtlObT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83A2C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789069833;
	bh=LjdKhRQoGKNiHqYK5IIfWdfxxSLlN6WMSXZXnayNerA=;
	h=To:Subject:From:Date:From;
	b=lBtlObT49lsv2b8XgpcM9hTy0F4cNWS/IdXxznpX9Yuen6aJ6bpplSH3P6aRC2f5I
	 LYq7T1ZDv5Icl9RMa36weH4EJTi/mgkpCktmW83EMsX/zxrOE7Fy9c2EWVKrPDGcGi
	 vQLjGHULLjHQvfhkXZowPcBZ8ikai74C/RgMjPsX4UD0NIs7ipFdO5+3dq7TbBMvb/
	 A4RSSwb6XZNHewKdX6sqIl1VygDNc1xFDEdmm/iCIAkxKiDgA1LrUm97RpxgmfRgyw
	 SISpwXVqmfEd9arltG59fki1sS208x5wJ5ye4cYQVhrr2kOHFsgizNZpQ3kIrYjHUq
	 H3GsAgvtgjZxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC46C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906983369.13249.8675242650798049877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8839b7919c863d92a681ec7381cfbc87749cfec056aaff51d0cb3b2696e84610
Date: Thu, 10 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789069833
