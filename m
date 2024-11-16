Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B235227
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731787554; cv=none; b=HcMrapCWNO6/f05y3TJ985/40sMFm2/aH9Uz1fFh6XwETHLOG/AR66mQTr9v1WoNtgRKJBmG4J9IcNw5h53AXOVdelppvrxLV3DPhnY0sHjSfyifV/2J3AS5frjEQOHIdFQONXyg623eUtgLsi8EEG+LsY3svNZaofttwumT25Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731787554; c=relaxed/simple;
	bh=IvLeAY1ZP6HluMwocb7vZpiyqSAmLP9dg+/QJBX35Pg=;
	h=To:Subject:From:Message-Id:Date; b=VdJDoriWQ/EFEIC8SN0vkXN8KtVH39+J3+6zgEv3wbNnHVyNtl39haiBW/0XYzC0zggrvyEKvwUhN8Bljswg94puRiRK9kE/wCMOSNcppexU7skYD5/n/KUagTPoh3pwevr2v4S/0lRYgoNCL+fY8QdnPMBse+rwbpj5umHxNVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rk1mN0Ht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rk1mN0Ht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D52C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731787553;
	bh=IvLeAY1ZP6HluMwocb7vZpiyqSAmLP9dg+/QJBX35Pg=;
	h=To:Subject:From:Date:From;
	b=Rk1mN0HtCCgzck+KLpaZLiK5YhUBRV+TIh4E2tBg/C0XthTeqMy7hhdPlNwXl0ZtY
	 PWxfvzUBV0jDfwaIPlUzE+PktbaUblju3J3Xx35X1XIDmKy+Az/qtzqQkhX0qjVkHL
	 gSX0PKYnAtFqyditptf6tKUI8vF0Bqat/1ceZhk7VYzQ+tEu2kU2ERsFWjW296lKk+
	 A9cRoPatLYHiZTah5TDlpg+gOh/DhdDPn3NnNrDj2kw0xaCJFyLZz4pBOiOzSLnAUz
	 2ult2isnuaFdsTbFPIxixVc0DsUH4xoiB/5+dljxr3l5W2Z/4CbXgxI3kHHJhpku0r
	 MMh+l6r1zzplA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F86CD68BE7
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173178755363.17654.14580432564830378371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede98b26cbe02670db97320f235ae5b96917cead059c53359fb8fbe43278bc73
Date: Sat, 16 Nov 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731787553
