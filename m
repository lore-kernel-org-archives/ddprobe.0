Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F36347C6
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782433054; cv=none; b=hCzEvWOVBbnENzwH896VNiApJWRanbvXB9YmXreuZwzjjtjSNmKbkh4T2g2jHKJ6833oyP8jx63ZZY7DkI7gK1k1Kv6l+cmSznpRvC/2miTEMtSkPniOrbrR31aODXB7pupAtB037hqLsal8j2MhucjX+GhUYK025kmIqWHNQi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782433054; c=relaxed/simple;
	bh=Fr8HTtC9b14vyFkbMpUrQWKXGyJkA5Z97M1syoKX14Q=;
	h=To:Subject:From:Message-Id:Date; b=evce04+6+jR5ZRqZWV4SOe43FfWGLmkHhW3Ex0Z/9tyuOSuurXuKrMWPI4PwEJeV8qZTGPRPjQupyZ0Gz4rFhDwmpgsXJ4X8mFRG8lK/D/fLRKbTEAuxJEIXm0LABA6lxm6pLYSM+IkS34RTvjhvB8YoECLIzbWHYQVmOAbmChg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUivuhhd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUivuhhd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3F8EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782433054;
	bh=Fr8HTtC9b14vyFkbMpUrQWKXGyJkA5Z97M1syoKX14Q=;
	h=To:Subject:From:Date:From;
	b=UUivuhhdoQtSlr0R27s3+KRQ1dybT0iqnaLoNjqvtnXfLcppeWLtbLWIbDyEzEFgJ
	 FdcJt9vggypka5VYTjWA7T5VXGqutkPHI4WJ8cR9H95K4AXi3GF+e7a5doW5dVoaev
	 81DGtByIw9gYTDZ8j1UsCYYIPbv4KiVA3RuzsWUSM80kE6mS+gQP9tLO5qg/BO8ynw
	 LbWbNKatc1Zisx1apb1tsMR721alR8/prXqnlcgmw9kE1UPuyXMkKNLXMD1NcLWnH8
	 ipYW51evabxhJpF29u9bCg+EiRBcq75UPcDursOErsTxYo7WNW4KirWgDiI/OkIbZz
	 ciKOjV+EcJQAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28FBCDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243305378.26094.9764045746373491294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9fe35f34a056f75f89892267c10a1173ce66ae8da2b06cc4fdb779797584e1
Date: Fri, 26 Jun 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782433053
