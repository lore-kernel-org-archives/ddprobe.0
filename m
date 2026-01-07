Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A512356A4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767777834; cv=none; b=n1HZDmhTWTSxCfDii8l9vlG16AR8kdTog0+odwMpwPk6R7vXYLQoAmnE16kf1TfCGAuMK6HBvyduiVygiY45tcCC2lNMF0zY8x69NeJfpbB/kFgGjzp7FZvNuOP4PksoH57AxfGDtVLYnFGkxlXMb7mttTcVrZEmrrVfrD0eUoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767777834; c=relaxed/simple;
	bh=3I5VxY0pdJ9vuZWyClxrwsOXsEHIJIAYI6GNFzF3Ktk=;
	h=To:Subject:From:Message-Id:Date; b=SONNN6m/PA0Ui2EBIv6GtzlXMGMJJSchdYZ+3h/TCHxXfeditbyyqApmpMwubAmw8dPm8mxAvTY1V1a4EOlVgq6+APoKCdyOZ8sTkRgwcAs4Gvp+TFwKusyhnpjJ/9KXx/goueqnmPeTz14nbm9TYTTEXUZ7KXiOhiQ1YWCqrac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+wEukEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+wEukEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0B7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767777833;
	bh=3I5VxY0pdJ9vuZWyClxrwsOXsEHIJIAYI6GNFzF3Ktk=;
	h=To:Subject:From:Date:From;
	b=l+wEukEGKZyfiz9RWwgnyoyR/ke4+XVQ5AFTZHGlRAlKrDDobwduYjKHT5RZt6d8f
	 S1qzHJin/HVEz9BRHivdGVVojnKYahja11na8kZ7WtpaCZmn6/7ohDv9UJ8dFTr31e
	 cJ+GlDSiPUn3pIjwO3SEeFeftUxpOwrynrYT1uU3nbYl0arEKao/9HqApHHxfEcTF+
	 q7FFOq35awtEkS11IsNRJdZVRrW+VOp4pOue3d5+323r9tInIsAce6qRigFOXva6Em
	 UOxEZm0NyDroQkwZmbv8V7yplXqB5cHnFEGNGIOP+1n2pqtFIGxrikOsgkWFIW1G1n
	 zkyJIVGq5lAgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F32DCF6C1B
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777783357.20647.13442658882447062309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d952219cd6fa3ad2c57cdc60319ad2e9af6ac25fe3a2a863cca96628212048c7
Date: Wed, 07 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767777833
