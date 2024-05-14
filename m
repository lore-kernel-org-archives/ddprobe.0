Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6671448D9
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 13:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715694743; cv=none; b=g4NIFOPuRn9X71eR+iY6+mgvmcns5u9S5J/4HRfFkQLwG8zIg7DCBIcfleeFCij776/XcjTONttP0VzBVZ9oanzvrF5KhZzcSKtgRPF+zKFEukdJm65GtICKqmdajKPmw+zJMeMMV+YqpM3lHshqkLADLKXQH4IuRCPMGRGEZec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715694743; c=relaxed/simple;
	bh=KTwPmWGIAIFCdroQYQFeHxlqNbwhHyTv+LNssxc2vcs=;
	h=To:Subject:From:Message-Id:Date; b=uSnt4DAApmcPjZKhM7LaqvnDrMcyGzM5L/xJ75DvoRP11gBypHC1bCEucC9DaYGAmGKHTvGtv0qg6ZloyLyVrGO6OuAgYTISN+00Ps8QSeo00/U2m7Zi5c4GSgU+ruEPOzptd0W1+RZre3ZM7UM6Dg5nJ0AJqQrZQncHcvX8948=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnQGcQ0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnQGcQ0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6ACEC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715694742;
	bh=KTwPmWGIAIFCdroQYQFeHxlqNbwhHyTv+LNssxc2vcs=;
	h=To:Subject:From:Date:From;
	b=CnQGcQ0tMayn9S+XJXuSngxvXZLUp3fXG2U7XsNeXkoy509l0ilaJfeCZP3W2i2LU
	 3HH0tsGZ0YnW9GWIgiGFhxcMYsW6xfU/j3SiCrTGgm1AaIuOnJ/p6YRS6HkNVkVrNh
	 RaLZB+rra2AtqQ/ZoMt3E68gvWqk4IdQniv7x/GuFCMsWtEWnyp4jQsPGgmYlGo8Fn
	 ny+QMfRP2/p+e+mST5gRoSVrT8g0F5aAEZOf/LR03EimsqdS8uUwzdHPotH/s8s+dI
	 J12nSMV0tBW3wLliWsF4fqiTXsiVLrVBDufj39ktjPmeKWhCKwIKqeEbHOsnnU7fI/
	 781iWv0N8S8mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4C35C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171569474286.1624.13357119143500138315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815f8c2cee9a96a654c5fc943ee91ac84f450b5512d0672e7516f50570ce3f6c
Date: Tue, 14 May 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715694742
