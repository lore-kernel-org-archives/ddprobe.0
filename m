Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5063213AA20
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742708994; cv=none; b=eu3A2bJ4Uu8l8fXDJl8bGsSx+LPj3zG/SNawMJGijCQ9X0ZUzAgBT+Lf70pn1ERrvARQ7KRIuUxWuzdkkFEtQqLgVPTxGoMKAF3Qe1iTtMaT0v5xDRfhccom/NXvB06MibvAEbTMAkYnsDyUrSUzzBRo360pdEpCahBcL1DSIjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742708994; c=relaxed/simple;
	bh=7blIJkClS7xBxSod6OIXeSwB8Hoez+gVHc5583RQ2lQ=;
	h=To:Subject:From:Message-Id:Date; b=o226bRza9WeuQ5SpkNlN7It/tWcTbpXlIwvwz/vKU/waNHcTMqMn8HaBjSNCfdaxabFRkixjlkePyDgOVXrPqLjtOc0VPbjbWVBrvWbav9saTxVg6Bqdf1tiFe3/9m6RrYGJczlX7DRvIpTOwhX/vOWPvCpzn+jkDc4E4rMkqIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8qXIsob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8qXIsob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7658C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742708993;
	bh=7blIJkClS7xBxSod6OIXeSwB8Hoez+gVHc5583RQ2lQ=;
	h=To:Subject:From:Date:From;
	b=H8qXIsobllJ651Dq3yVKFQui4jUowm45RC3vvmyJnZ81bfDDJOXW0ukuMLVduLkWn
	 STUzygY9rmo9t1JrN/1tbs8V/qlkT/iYukqlTcblPosO9ynBhrjIZkas9Jkbmj6eJb
	 gjgZfRZah3SKqSGkCpr13bKvl/RG5FpBGi02UxWYEY5UuVSPRALtx8ChDIUoaH48fM
	 ze+i/DUQXGSiC0WLnbidtiE62/oPL5hiWi1mpZwv4PZx4MahuweOQFsW6wcN29zhoX
	 OAFOSv7x/ZOue7x4ifB4NrEvqnVZaIzyyV/8AUi4FL/Ed4BuE7Q7WMwXZOi0Xb5mmR
	 t/X0CSEDQnHFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED51C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174270899362.5607.5980883717767456260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf4f8fae4f200dc674825e34357a7fa07b0593364b218eb13ab1df66861a7ba
Date: Sun, 23 Mar 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742708993
