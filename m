Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4095474F
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788057634; cv=none; b=jLb8Skk40Kyi4wlVnnMMqat7s79rwJFxdBc00V93rT/FwJVcVDQfIW4KgJMPNCnfXTGzm1LAEndveH+B5Hu+j+A72alq9343LAG3PgsbkAcYhX3rZq8QlCvx5Z+P2mtwkI/MFgAAcvGKE3a1+4KkLSKf1fGXZtdE/CjM1U7CMr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788057634; c=relaxed/simple;
	bh=3DjWMPvGOoX7YIXMAHKB/JK/BZ6GSZncW041hYe9vN4=;
	h=To:Subject:From:Message-Id:Date; b=EE+shtLAZSlbe6ZhhvmSpHE+4yCCs5vIpYb/sIdaKjND/EO/2Et/Q5VwNFKgzgYKZO3Ci6Y1CGlICuZrhIIYrq6ayPv84P4ekuMBI5RFC+eDcMQzsdhnzVHXN1ngcEyHwLkWzxIhRNH1FChSuSdL8oDeiwPoijUr2WfLixC+GCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCzjMTCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCzjMTCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75A6C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788057633;
	bh=3DjWMPvGOoX7YIXMAHKB/JK/BZ6GSZncW041hYe9vN4=;
	h=To:Subject:From:Date:From;
	b=fCzjMTCRhY2m8b3Uo8DokgtDLKi5lEw1iHDvrGq7x3UaPhWbJK6G6uJQFKSCgz0tG
	 4Msi4gbxNAJH+8eVsJ3vgnEkoXbYhRghWZeRMo8J5Pyixozn2kMrEjlmXQe+f2Oq7F
	 SAj4zy+v0ipEYkxwR8gYEvwsBrsAuCTqLH2rW+3jYP1SCFAZHlygPds0DfExnrQ55u
	 XtJVS4D2Z5/2u/+XXGZlXLYIQHml+uzdy+xCk78oie7+htx2gR/jvcof75pdMKMu2s
	 pH9cOWZhoFuRLIIOGYFRHW1TzD4yYGgIwH3/+01hrhc5oRg9PUI9gfC05KsMlWRvAF
	 GRcq16V/m1/xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC0EC61DD6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805763369.8579.234911165445916247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88617bf95640076a4f30e06c00cd2bb1f1c1a3874189329e866ee95693359203
Date: Sun, 30 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788057633
