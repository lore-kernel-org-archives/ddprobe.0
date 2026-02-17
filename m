Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DF523EAB7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771301694; cv=none; b=jHQdIfsp+UfSkIe5oigNSaDzBfC8PC0AFdpmfd1ZtEnZrlT3gtMvr95fyahBYgdM24BNEp5HwZzs5jhcvusqTN8bVjcdsVSH0dUzj0DuiQ2tijRaSxPDgQz5MzwbZ5QGcy6rJOhuKAzO7YaINq/nsP5tB6jZuBuJv8fFOsyRwrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771301694; c=relaxed/simple;
	bh=T7Ce+z34t5t+2SfW33T1NekUe60Xku0DSrCjDExHrho=;
	h=To:Subject:From:Message-Id:Date; b=WuPRxJAgogdgfb7X4jvHiZgXVVcdp44TJMvj/ecNy94oFOzXc1yJUJuw7UMm+ltjERUh58DPtsEfwB176+JdlvM3H1n+jFO1Z0NDTPUYDOdSy8IuzkvziXwcHUfzCdM/l6medo9VNs4dVF0EHNDvDS90ESTgshm1vGfTahb2xu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+HA3xaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+HA3xaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8504C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771301693;
	bh=T7Ce+z34t5t+2SfW33T1NekUe60Xku0DSrCjDExHrho=;
	h=To:Subject:From:Date:From;
	b=n+HA3xaDGe8ZyO3ltWiOIsiCyKd5Jn7+M7db4A5yE+U2RVV0P6wB3sQuDs6kNYok3
	 v9vcJFtQw5lndVXvLLo8ZhoFlzc42wqH0QXYwe9Ds8kc9DD3w23a0zCJScDjnd/IZP
	 NDBtyyflURVrmU5f5qr/kpi9Mn1PxuTyhUvvJ9MEhGzfgE7ggCTbD5mhuWOULI923n
	 3wnldlPc6KtiVzrOoeHfQ6DYMkADARFX91sf3hLjpje2QDRCEGafJItqyUnPfPadWL
	 2WKMdvQ6ZrdNy57XJRfgK3vxQPAbxOMdMEaJYwOiY9OioJvLmudQWyAKmnTeWmV+L8
	 8xbo6+0Ayf/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93567E8384F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130169358.21948.4362669734342919993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17fa4eab65c0654e44ae186ca899e80bef7c5d55957534bd954b78fa180561b3
Date: Tue, 17 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771301693
