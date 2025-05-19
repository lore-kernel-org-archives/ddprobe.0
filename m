Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4609AD2FF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747691995; cv=none; b=FyXrtIQN5M0bggjdc7FUCOGzWGoBjEber+RWGgPw2x2DMVSUDVcPSS97MWIF6Sd8VjFboVENdhsmq4u6eage08ME+P8ZuDj9ESUkqiDXA6ccb5zYjARRR0c36XP5ZA7ZdRuLGvEdUcCydUQV+UGDBrogqpbNOZKBtXnpvZ8wrnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747691995; c=relaxed/simple;
	bh=PcXm8zVM+QPK//fHLGh2u9oU7oPpKeGqavB5m171CTs=;
	h=To:Subject:From:Message-Id:Date; b=mgnHcMQ3Fmf9xFq0MYKY05DSrdtACN058gULuKj9tB+9jQXmu7bueFrHOuffB5M8Tt+adZ6Y69CRwVjOAFF+HgqqqYDZCLnxX0/DzOzCIqxuPbGNYecSC84H0HFSsPTloJbO/g39yJFSKEFxCqmXxGaPyNZrZcVoIW9mW7WgoMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYfdecR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYfdecR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25EAC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747691993;
	bh=PcXm8zVM+QPK//fHLGh2u9oU7oPpKeGqavB5m171CTs=;
	h=To:Subject:From:Date:From;
	b=UYfdecR6tjS5+WS5ayqM0ycmdMDKfQCJ29ynJnWlxNt4Emd5NcZv5ZrgkD+bp8hcU
	 rooQG8j2pFn1bqY1YivbCiB706Tqpm+DYapPy9bbQFIvj0vHLuBccZDWPOdyKbtTiq
	 VAVP/zZY7fvedDrT9eCAzRe9r3TwmllxDwfi+9XFHX03t+2OcmzB4hl4bmcvfzMcEX
	 Stuogh43h4CIpuYjPvepATaNe+jLsr8iV0tt2gakkrpom1J/KXhHi3D/jWtEPudvaq
	 cbZGQh+Nka2WJr3VfSMDcKecdXZvSdQ0AYnIKAPc+w/vrgMZVdoNWyK0VhDWGuw1fK
	 S+X8dK38oVvEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7F1C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769199357.19807.9585458699744506802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37ef74ba8bef4660e95d13815e6690288be5ae7811ea9027ae21c86e5bb2969
Date: Mon, 19 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747691993
