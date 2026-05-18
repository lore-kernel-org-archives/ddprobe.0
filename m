Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94DCE372B32
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779103235; cv=none; b=Kd4vcNylSjLZvVim/WDBgXB+iDqCfstJ273j095X4Pa85xYu+2QGBN65785AFDl1tTjWg4vRr3AfS+Onqh5HAlZ7/luWkJ7fAsTVAg1rydj+9hv+Sly4DJZDttcte/HVms4El1Kp/L1sAeXDKDJLJdL1C5Pl5ia1EbUvwS+Fseo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779103235; c=relaxed/simple;
	bh=+/cdYzlFPsRgeFsn01AuRWQf75i3qmWm8aASwFzL+As=;
	h=To:Subject:From:Message-Id:Date; b=H80iAEdGGjclS9pq2Coc7gtJhWwZ3ToyVSpc/j/56p0yFfWW2IThKR5ryc34iURxxe8mfnPnr17vC0ZKplUIR8gsh9cG4WRjQcUA6l1SpNqBZSSzqhjDTbQR+p63dWW18Wi1w3MDTBqhEunHUjz1/almPHwxBAwMtO5sPYOum7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h69odUkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h69odUkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B65C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779103233;
	bh=+/cdYzlFPsRgeFsn01AuRWQf75i3qmWm8aASwFzL+As=;
	h=To:Subject:From:Date:From;
	b=h69odUkbdqCB75NdGDQ2OOyCNyEr3k262HhMJXwuBDqlDSTmCDReRR0qP2qUB2F69
	 CdvP+JVO3TQ/MBinU48OiKX6hyDptI+Dk85dXkRhoYBP917oVvOqZEucwQjLUDG5Jk
	 VM7vFMrJ68zmkTbl0n3qEhW359GZOXCA7n9Is2ILWRDX5eX9AymUkktJ47YCaScVwW
	 azhifhCsIm3JZyqNwg6Xb9ysPgoOYtx5yPpwTSDlfY9X+D3USUEulroy10YW9JCMSi
	 ttLENodumTpJ8gdFBI72HUdEiqXePY7G//9nAO1uwmTFwEoQSYDy7atLAQJpOxy40K
	 PdJKj4ESMcBpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2278CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910323371.14477.16661517916585905408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f13b1c4c7fc1f4f71bbb03d5b775ad3be18d41b56f9d23c22d3de6ea52a78f2b
Date: Mon, 18 May 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779103233
