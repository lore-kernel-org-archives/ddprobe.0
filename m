Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321E21BBBCF
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734648354; cv=none; b=iEdhT5TdCNgpBo48dlgcVmfkPI7cah9cUw5GDd3RzCTqIKoZH8H7yJp8obsxqKarv7uZ7eINX0HqsFy2KaO9jedOs+dvhacGGPfZ/flNkMdYKScC7akOEy3xsAlDllvAaiuUwe4wM0BU6+0bm1zsYq64P3RJXNS7LD44fwl7sPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734648354; c=relaxed/simple;
	bh=pHKk+9oFICF/chfXEGw804HRcJIke11Pd/CcWrXChjc=;
	h=To:Subject:From:Message-Id:Date; b=COo/raJYntcvrueg79Pffvypd9ExDM2zVZi+383INvygryJo0jWB819XQaaLxdlayJwY444GidnRSZaIN+d/hfeNur2Fs0X8UFIosOKa0O4ab6ERrNA1zVFVY6pPvuvw0dbqaco2xvmq8e0527R/ZuE5ajuxaSYByZ/Aoj8EmHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSCNz/P2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSCNz/P2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A49C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734648353;
	bh=pHKk+9oFICF/chfXEGw804HRcJIke11Pd/CcWrXChjc=;
	h=To:Subject:From:Date:From;
	b=cSCNz/P2AFmIdMPcXdlgyKThCBIOFaSLDMbzNUahrUUB/JrRzYjA0Odb2SZbZxcLH
	 8YbD2B9O/Rib6I+4ycaJmTMXPLHcD9Q/ZGZmDaSYYO1enTybzW3cSy34XuNuXOm4vk
	 WFVXK95nZloJn+edG5+jAy2imKGKz4CANI1vdFi8HehZ0zSYcmneDhwoxOLUCQh+K8
	 9ihs5VZMn7q8CxTIAFbNUmcOYXYUmaN15bVcmnIVL4a98KrAtftJVAW/LWtcjrqEz1
	 +xQcXkuJrGW29bOM6k7qK5pqxsLULHET11gdUzeSpCCaTHcRlOB0gm5U/ANjBTOO8/
	 WxlBzDilO5BXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92388E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173464835359.26598.4823753854275289086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2a0568b3294c4c93f3cffe7bb75a54ded3b8264eadd9cb872f38878db51c12
Date: Thu, 19 Dec 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734648353
