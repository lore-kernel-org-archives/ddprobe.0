Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADAC33A01A
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762541394; cv=none; b=EQQMW3lf8mJIs/vj2P/o80PziLR8nd8tWh7I4o8YxizuoQeY+HJOo8E3HtMuPQ1tJOBF/cLIExBpZ2h79p7oS6M3JAx3CYyhZtn1tJbOAbkDtChtxmid18MJKE788YmRwuOPlqUQGVjFJCenk3dAZTKQ6yc4mO5G5WNMhi4etU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762541394; c=relaxed/simple;
	bh=W9pUupJQNxHO7QrXcwQgY04B0WK+oPFe2eStM+ebmkM=;
	h=To:Subject:From:Message-Id:Date; b=AemXqTjg0gs3XuUi8y46lbC2+qws51VDgnk4sO2fucidQEu2GizxJdLOIhTdyjltp6Y21z5SK/tamsO+sQGiplfCX8Kubz5hY9OEJ81NpZxJmEzA3sataXoc0zpbessQQzBPV3liSawkgOhYLBW8c6LdtRY6K1qCbW0mlWVc5Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DohK4KdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DohK4KdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4655C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762541393;
	bh=W9pUupJQNxHO7QrXcwQgY04B0WK+oPFe2eStM+ebmkM=;
	h=To:Subject:From:Date:From;
	b=DohK4KdW0JiA6b1lVBaYtP/FE/AsStrNzlaF0UCFu7qXXZoHc0xCsxRaMYsdK5hnS
	 Rrjkf6+nV53ALwHtLshJzTb0FLuchNztSxpHBhbhpoHB9Mp5YafYM4p5yM5RHmhinR
	 ml54AiSz4I8iZC6utdt1e9ce75HivCJRPVXTZnAsy9LdHEusVescAfpVQ9LvxWzqxG
	 jIqEqnLFEcxf9J+fTVsE0KNFAUzurG0mNPp+xY97kp2ET1T211KNc0k43tIws3PeFz
	 oknbYR+GqLNQFj03nmDaZeU0rjcfSAjIMgJFOgR2pDSu0+8UuT8ZeFFQnRmI07caLH
	 asaKPbzyzd4eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995A0CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254139358.2355.2847273506886655311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2502be8e357b39df5592c187762822b66ddad3286352a879056ab06827c8d771
Date: Fri, 07 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762541393
