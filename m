Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4994619E7F7
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783244914; cv=none; b=uGHGMROGOd/jlyeIXFMD8iMTxGtUonLpMAV+gvvXgqR4sWfr1hCFovFZMLoPp00eFS37t+9R093FucVgo1XamwsXaLAvb3vNozIlozO7RdWuo2ZZi8cue0Dxs+DEzwqWUHTIAv0WGFhnz0GwsCjfZJbsK5U+SGUnN0qrjiRYlIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783244914; c=relaxed/simple;
	bh=C0ZtstOWMEpTayp0R9X4wUCKsLw7tTv7lh3u8XvUIx8=;
	h=To:Subject:From:Message-Id:Date; b=E23zL1gOxzakSZbX7vDqiAoqMSGEnaBstEjIqp2btS17dplu+GOOnodzyFrFZMMj0zmZhmwskgolQHvBmVrHPcONfb8YLp0PPefogOQtLPSsSMQOkAQmtNObVM4hyWLa3mXRlW0NlkMcoS0cKvGp2g0rzcRttbXD1+DhK5iU14k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4BTTh8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4BTTh8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D39C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783244913;
	bh=C0ZtstOWMEpTayp0R9X4wUCKsLw7tTv7lh3u8XvUIx8=;
	h=To:Subject:From:Date:From;
	b=g4BTTh8yq10Jbnss3IAUG8+F6KDX9PopVXaKU5UV6uPk/8TYzbyWahQWjUKpxRzqs
	 lKTieSE6F6G+zL28Ih4ccI3F2jRNne++MNMqVYxxUMVew9hgmPU3GQ1o1sjwqQNJLf
	 WJbRygDQ9n8mrhz0gzHvEI+o8AwMqwSIsWTeViScT3L4gyD8gqrhhNplD/VY7uske7
	 7nMis7p8DxryF+h/nNj17s+y3oAJhdM/LKAhGjDCCEl+WyN/rvMP3V4U0yj8kU2Uon
	 W+wTJEVofincBGWyAEMMFPjeC2GNLXBeHo0wX/wvmajKC2306SirMaNwlckiYuPkIa
	 vOYY2Jvt84HMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17A5C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324491370.28720.14729212534196122903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f814b7c53d14883962c599c1f59252562cf988be23fa86d515a3c1a97e31ca32
Date: Sun, 05 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783244913
