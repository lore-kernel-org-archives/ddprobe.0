Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17646B666
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708760297; cv=none; b=ooo9K5hjqrBrOtWDIYKpDb7FK1TIQucS9C/pbyWIhiofGgL6ilRpmWvPUQUSBAc5czLMWBwieQIMgz1ciSUS3GBjXVwByIVtEwSfD97p3KVUY+IWXD7xhvVEwn0T1iwXRMCELcbZIcgkQoJTmM8obS66JD5dFz+itEuWbX52aig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708760297; c=relaxed/simple;
	bh=ACxVEBhLP5eOiCsGD4IkR0ktkXSyGwjT+Wbp12v3u3I=;
	h=To:Subject:From:Message-Id:Date; b=vFW5dELQQCuM1KoF/WGzVLI9K0omHC/Ssg9DQMAOeCB+zsIxSP8wwA4EMHZNsrhQ/++xCaB9Q3izqiIJHkpsXh7H/7rKwii6PfCQyyLUvKgqpY2iLUHazVkP8EKPDnzL9xQQmdhEwKWhSOwmAgK3tnRGWo9FEsZyxHa7z9p70zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLeS/8yM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLeS/8yM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81DCEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708760296;
	bh=ACxVEBhLP5eOiCsGD4IkR0ktkXSyGwjT+Wbp12v3u3I=;
	h=To:Subject:From:Date:From;
	b=jLeS/8yMgtpa8gaCF+dfZAOqSj88hbWC7VQ9G43Gb+kuKWPtt0RV4qxdyvQiwPbZ/
	 VHdvrBPhuV+KJH9VMBbVCVPLrS0AtpszMmOon3/hRw9YKasNUtFgu6+ygG74Z91AnB
	 /FD8RYUg3HON0L3qOjFfQnhoXmsF3fJd+WI5tiGNbTGUQ2mb0I43mem3bMxlVkYfe3
	 itpsqUyIPvr48hEvMsAuXv1++PaiRIutzXbRaYvkJV1WrluV+a0Pfatks1v7k/2GKQ
	 k8+nsYpNF9bI8m04hH52l2rXIzMpGxs6giT/JLnWVbm6eE0ZjZZ1h32yJS+fQ7yHMc
	 tRhFZkHn2cSRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EB2C54E41
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170876029638.13609.3369020945958545607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388340bb63cd952255d78f6ca1f3a147201e2e2061bb56884ebb361e2980b500
Date: Sat, 24 Feb 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708760296
