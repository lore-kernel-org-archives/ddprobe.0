Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED0763CF
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762042194; cv=none; b=GRoNxi6TYDfU1f1VXQlAFBEe6HVYzb5qCc2xJ8/xEEQ5VMIuTVge3DAY9FUcchqGqAGXlxfebNtFaUu0Vz2fnYjUNFpmtZvHPOadc850sm/VTUJxdKzXHBIZhWaKHP52qT0tohE7Vl/Ax0b9uFF2h+T7kFfwFKpb7oTpq/PHMAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762042194; c=relaxed/simple;
	bh=UGng089brK206pY5UAQ7E7MRqu61o82ooYwUWBGRzu8=;
	h=To:Subject:From:Message-Id:Date; b=bdCYhwsdddSCoD/uOu1X8GhoUCG+094votuP86ry9RJyRrPZfPMDIF8su1ZSaTHFq5aYWHKEVrt8o6kQgfPXwKDieHepyK0lkEjL7EjP99A0PeyOgQYuWYhTV+W13l1G8Oyg63f/QbxW9v4oVdfm6QZzfZ0Fw9aWcxFIrMHVUwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPVzc2L3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPVzc2L3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A340BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762042193;
	bh=UGng089brK206pY5UAQ7E7MRqu61o82ooYwUWBGRzu8=;
	h=To:Subject:From:Date:From;
	b=EPVzc2L3n8Mxoyh9mPmoWRA2jSwISu3emmNKZpn0FXHCF38iW3LIoUe/xV0xQLzYu
	 dEqdJM0ua8QbPKPt9a8TEtqGDtXqCndRCOeywvv+iTJyZsnJt3F6YOwTd4tn5l4MvM
	 rP2o+6h/SGOwfUlXCCf5vPbEwSLDSe4vhzgEd2vGTlbEUe9RoPOup0MfHzwwbLtuaI
	 0c0QnT5X/v9Pfe3ugo0IwKzzQmbemrhv5ql/Q9WGdyhnPUgZ4BoZFcDWz0olIsbiGR
	 yKqydHboAnAlCIp0lb9SIrSzXfxiahGQ7ctQT6qlN6OubKwBUcneouVKcErMEI+NLA
	 qWXzACB1KvUtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F7CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204219358.626.11838744958534679028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed81d91dfbdaa591b8be72fc3f137478c1a315996036e8994f7f8e3776c20f35
Date: Sun, 02 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762042193
