Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D6329B8E5
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768261434; cv=none; b=bPbqHgm0ShiQ08Ge2XN1NMUpYPiOu5HMRLmarAoNXfnug3Tm/2pV+Mk/rQiCkHt61coDjBIp3VTSf1e9G2F+bWBGOH9KRsFuHHx206HSRlreAayRiXi8KdhB0i6cnfweOeHLGgBVS1/8gRnez1Jix8ieU9xi6eFOkv5Nh/ru80o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768261434; c=relaxed/simple;
	bh=RPOdJKZg/h8qChaf1chggEWTxkqEkXHxQ9943aKejiE=;
	h=To:Subject:From:Message-Id:Date; b=Ls5AXuQFIc0SVK0JMUqC8lrxvot+GHErFnxXD+E6gmikUCarX6WX5RXbNcGxv/O8v5KRFKWzRO2j/OuVdQz0lJRWvWBTKmsK34EG48JbZTQeijbKjrDhrMfQg69Ltea8zJR1b7oV7+moWKLDgcsYEL+hTxEXQCCaWPhySnnXa2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcQs4kKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcQs4kKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C21C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768261433;
	bh=RPOdJKZg/h8qChaf1chggEWTxkqEkXHxQ9943aKejiE=;
	h=To:Subject:From:Date:From;
	b=ZcQs4kKDyMvt1sh53Eh8h2FdKlhdwMFEbAqCts9clLsALW4KLDwozvQw1ZiiieTG+
	 slAPCMckMB2dPTp35sI6AiPn4E8cl3UWkbtjH66CtWXmEm8vOe1+2dFpivC+dFrHGU
	 Wx8DITSo4EXyMI/1mZFLURzAg5GWC396MymcZgJ7Hoy5/+TQrtgibFsjmCKkl7bB/V
	 1JeNOGFaDU6ZwkmyFIB8C0MBPgzhJpCNC39GAsBq5PGjQw/O0utsASBQYOj+8CT6Mw
	 fw6gyVZidu28HBM4mznXVGxE4ycUyPKz11aflH4A5r+yX2l1hlZRgIIKkpLqfewYYi
	 qhliQA7nik1Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B0CF45D4
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826143358.12892.10799766061479448216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17af112bb8bf4255bb7fc53e851c4d0293fbc009f8662a202c2e276f686b70f
Date: Mon, 12 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768261433
