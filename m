Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0841862A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772378094; cv=none; b=rCsuG3HJfCVucqkCb1MXSGZLCYgefb7PU5AfojAk/jC5HIIFghby53sx4RFXOQww4Fkk90jjhGXPoFjTB0h2b7CoNpwGngDcdKiz4vqbi6XW654tVEdxDmKoZlpnx8btRJkBuU3EMVKoyH51p7JMydF6kjKKkEb+MLQLxlSSvR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772378094; c=relaxed/simple;
	bh=UvDfFdiMpyc+MortGL3BB+k5Dln5kvLCttM6qaf+aVg=;
	h=To:Subject:From:Message-Id:Date; b=mkDAqOoAu28bbcCARlDtZLYrGZp/uH7boPhDzQ1ZRn6puJdeOT/OpbzaO6JtEYJfuQ5Df11G58biJubg67LiU9NvUhwR/ejkan+Y3tsIK9ewa1miLBGGENYcguX087jEkceamn4t4mRNy+fEvD66Mf7PIwspGHa/cJ9mZH6kDV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXWT5fTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXWT5fTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEB0C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772378093;
	bh=UvDfFdiMpyc+MortGL3BB+k5Dln5kvLCttM6qaf+aVg=;
	h=To:Subject:From:Date:From;
	b=AXWT5fTglI6S7Pgy1qTV8fVNIBM98sxAHmkYtHcjAqDsxkp3GecLYyALzj9iOyzGo
	 luGBF+SF6lyqOxJmGTOc7iLxt49yKneMTYrspjMSQLoyGq+wgbtBcYjSd5yGHkx1ON
	 Ld+NvtdHXV0JXbNwRhYgfSR6O0/1TxZ4yABpib8Tno8JwuH0Ob+dw17pIAkOhkin83
	 kZWNiNAL9N7NjLpRHVqulNtpmH/cRs8S+AbAWvRAUiIE3e9bJxklIx/P8VJ1YOczc/
	 ql8CpypTQdlDvzng3amVH3m5ykezxJ4UHOAorLHwvh3VutR6TozHW3A4+ajV+n1WaY
	 sT2mRuGwGHLVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987A9FD006A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237809358.23642.13089649943060346826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62ed209446eeefa5c71fc7d77de570a579ea894964ed93839903385bccc8155
Date: Sun, 01 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772378093
