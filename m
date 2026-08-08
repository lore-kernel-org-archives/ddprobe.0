Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51710277CA5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786200034; cv=none; b=VDKU0anqYJBmnFay8BLFqCRijgpzL1vRUp+MuCcssYA+ub8re8NDe2A3GYW2suIxkesxz7URcoZMzpHbptrUgXDoefre8yXOmoypaqBm33IRFl5aevun92KQ4Dc2MkWbatNGkWfULHp/OD0g2G7DD/k4s4T3msARZgHZ83IMhEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786200034; c=relaxed/simple;
	bh=/Td12ZCUOXbZl/o3D9gvyV+IFa/YoUwPfsUJ9HzFkjo=;
	h=To:Subject:From:Message-Id:Date; b=db3LwOfLgTteu/jXhtdaFgEr91Rol89sJdQUtcQC9t/+APOAfxssEXg9WHQDOWeLIjF1eHrDScFT344amF7QDhznxc9RCDfUCMjuzjnkIsBkd7slG1d/vEOBUwf5eNOF4tbP5BNmBK8Myol5b+ahcVoJZ/2aTeQ3OYwgMChqrYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eC6ULyjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eC6ULyjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C3AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786200033;
	bh=/Td12ZCUOXbZl/o3D9gvyV+IFa/YoUwPfsUJ9HzFkjo=;
	h=To:Subject:From:Date:From;
	b=eC6ULyjmSi/giBeBkEBgfA5m/9FWxPPqnUWakgKB3Ldqv5CS+DtCtJTttoMd5Phks
	 P9x25CLlIx5RLiiSnEgvgQHc6r5Cem6uObvknug99qwTLO3cQgdrLapZAbRNsBycm0
	 toFWVnRn9j8g5MbpLfWSyHYVSgvJZ8qM+cMB4Pj0ko1nOpucN2IGBHOmtjdYqhZMSp
	 utgJr7AjZ9nBYDrMx1DKUa3B8fZ+HIdYjH+vt0KMFCXlxVk3BnBNqEz2aSRSSE7XvN
	 qxqJr5KiNLvqDI68Qd9zntrl+qyE8cGU/cVl3JAzCP8uKaQWcv9XNDVisE1ucpBez6
	 qICvXb/TcSfHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF1BC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620003370.13868.12336728688183763493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35cc024e47c2d248945b7b321eb0de4ba78d2d3f5913f507424b38d4cf1396f0
Date: Sat, 08 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786200033
