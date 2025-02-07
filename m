Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7B92417C9
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738932954; cv=none; b=VJjIlwl1RwM9fluPcp7MvDr2vNqJZM9VkBZUKjA+pXoR4nEgjl9P+1Xx4M4g7NRSXoGZKJ/PPrFQ4mo74Oi5mQ/Hf1ZhxrLlmuPvUfReDqOyu9cJJuQtoVrxE7xAursn2u4y2mv6dMkV6ckSQ+8Sctr/U20z3lrWItTat+nMFd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738932954; c=relaxed/simple;
	bh=oXKkV08nkukB9+bBBrMFphtt8WT2UGYj3iOxNOavDvI=;
	h=To:Subject:From:Message-Id:Date; b=YjF+HdmtR+BPBMu9TY+0DeLzOW4rYsQigMGqeUEDxw/KuRgGcWdVVpAcAzcLHZ2GfgGKg9saGuzKFDRJYbd7uVu8fZNbKxWCCENKgkx+uERplaihgT6S/Hloc/OVKdou+hz3QtMrblm5zbCaBRCjcK0ykq+HZ1aUEmtWV3U4zQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZUToBlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZUToBlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD1FC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738932953;
	bh=oXKkV08nkukB9+bBBrMFphtt8WT2UGYj3iOxNOavDvI=;
	h=To:Subject:From:Date:From;
	b=mZUToBlUiXE2ZhShOlEEV6OX7WkUsq61gfeYRKW9c+H0J5pV/mkTXy1iu0+jG4k7w
	 0gsyeeiq6cYspoZqL29giBy/8kh4rWKvzPtRmn2YvUPzd18r0546/y25qdNvKd+xFO
	 wT3apdCvvVM2JN2KNPL37eooo68Ejtxvtz13CbrXmzRD7p8c2FDzOXNic8IWBkXDVo
	 lZWT2JrxLPNQcriEFthUQBIfLURD5cEwfcPEiKNzpYXwhHzOEZVG7SQOX1qizQEK4A
	 w6uOPPOekRF3vwl0tUId6fMWmIRSWxFbUQZ+Zbna2idV+omLbpOZ6ciay9W+SAC3QW
	 4hc+47bpaAY+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB287C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173893295365.4763.9851826791712982031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b59a5e213549344e3f4fc6bbf8737cd1c15cb14ff0ce1be2854f43c8f72ae8
Date: Fri, 07 Feb 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738932953
