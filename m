Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263A933A014
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767795234; cv=none; b=TGQDGUn8NedUYDWHUmJtYxIrji5YsQQ9scw/pwNyNwZmdQtdGDnkB/mksWKJPH8HG3+h2h/D/+LR9OqXiK7vulx+Y2OXGgGEcp00J6Z5/x7IfumggKgQMj+/vQv/tXlPQQ7QHiFs4W5ZuTLYZjo+3JfasR59caHQkzjkSLQwgAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767795234; c=relaxed/simple;
	bh=k7xGcKgVUTMYl576OnIvkJXxu8QCOHyouD/I11UZMhM=;
	h=To:Subject:From:Message-Id:Date; b=NQIMVds8pVdEnqKu/0jyfQEKMGoJMHaBghUTqHy2fFBglx9Ff2NAiv/juBsXZBlP4YgSxtsuFtH+ldiRQ9zPK84YgmtdBf6KQuPT/f29zXMgbyzrZHwzT0f9UUsu6OZSGQ2iKzmGhITeoXt4k4QzNncZsMnOitF7e8Ske88ndkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvaUvog0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvaUvog0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AA4BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767795233;
	bh=k7xGcKgVUTMYl576OnIvkJXxu8QCOHyouD/I11UZMhM=;
	h=To:Subject:From:Date:From;
	b=cvaUvog0ilkfYzbnf61vEkWHyj95Fqjt1B5EcMTzr3T1dHsVBDeNAY2iaK0F0QAgk
	 rqBZhmh1VJ37YoFFbXETlXo5btIGmiiRTRktLv0DG8GebRAwmmnfCUnlmTLqhLIiOK
	 zuE3sRiolE6ipdOijk5fbPO2Thh+p0nGJXkkuVi8q9Oo3au+BD5T7XaI8paoz1Pevn
	 gVBjlsAtgcEp7sHRN3W0yLOTaLyt0NKvW6hRiouBsAQBPEKXY6CHU/vP7JiCdZmWDs
	 vT5NDVf9d8mBuOwM51t9/qYoU3ZNnm0tIRzW8voaRwRP0JY2vS0xHdYFJzqsPGBYB8
	 +aApVtzgt3/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E752CFD641
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779523357.509.560477884208028462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabadd6b7e104af1ec0f94467a6bb7834660fa15bf61aa64fce34c232081e1df
Date: Wed, 07 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767795233
