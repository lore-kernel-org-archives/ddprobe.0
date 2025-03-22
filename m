Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3597C54654
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742659794; cv=none; b=J9f9OtVvjVKJ74Sh8DQK0tJTVZaO+UAK78A+HqI7lUhSkQNzmVEjZH1h92ReUXqatotIzfdizvpKe4XYnRHFWSxGByCiY5pQyDibn+hUl3q+JZx8VM2Pq2++RO7J7z9g3mx8wUT44SbefIMADLRQA00jd6W/KnwAkki85ew84Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742659794; c=relaxed/simple;
	bh=RJbtgPITk41P/3YCq7lAKUHrpGGELb+PAqe5uETNfCU=;
	h=To:Subject:From:Message-Id:Date; b=jqwd/QGagS1xut0V6p/CVlyay0P7TGxVQqKsc/umATwe4mZT6iTFGsFo9ZGukMC+0ThzfJN5DxbCksOb/63n2byy36vTqWwCbduhqnH4lC4VOysu8Ff0t0VJMOGGJwC4AVz9CjXVtgoPLF/GcZ/2nYPvcVsyUvOwtS6wpDOv35A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgUJXPui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgUJXPui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0A8C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742659793;
	bh=RJbtgPITk41P/3YCq7lAKUHrpGGELb+PAqe5uETNfCU=;
	h=To:Subject:From:Date:From;
	b=pgUJXPuiVEkp7T4EUSVpxogpHZbrUI14h5ozieBbgO2Nj6FVW6rblzZJrqbxsheiF
	 FrZzVwxjGZEqQ8sy9A4mc42l1+DiORioSaNsbM7ya01IQzEHm7OiDNEBHsv+35PjA/
	 NSXjpdyWjYxx4ietjDo4q63FEoNYQLYbt+cWx3MblZ0amoK4Ua23y3hiYt1xNmq5Np
	 L7OYGt1ARiLGu69Lk7D6SRNXShBISpF/J85s9YCtQF0tSIz/Y+kbVAKb/8anMuagV6
	 Lg7vHfS9HTpZo7qRNXtTPYepO3I0HeOgHpnAhoUbYvIuAvCW4y3My/xLOI5/x9TxHx
	 JmKfBTZjCA26A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A40C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174265979359.7744.8684859600932597522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a34a015114cbd22a1f8d5db2fb86cdc32d11a797c2f7935f05a23b2ad0d7f5b
Date: Sat, 22 Mar 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742659793
