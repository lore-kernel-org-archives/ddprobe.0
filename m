Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423CE262A6
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 20:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739304654; cv=none; b=cHxSHcMIqn6vTbKsjOWJgIhytl3vcvm5l+TzHkiBjggSXoRWCG1iqym7s4GejnavpLk/X5kqcN6RSXxpEG3Nij0FJ3nzSgAE7+qjOAVlIkKwI86x8fMyKeUcKlRw9jNQZuyi2V6zc7mTYwQw+Gms/owLRVIzzWvNPOuM2E2YfKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739304654; c=relaxed/simple;
	bh=dx6i22MuUIiKScRY2UnJILZCjfFc4XdBIDjybzLm7k4=;
	h=To:Subject:From:Message-Id:Date; b=Ra6qsi5cXqUz8Us70XLnS5dQMNjAZ8KFXakd7da/ECzUTj6OBUrVK0Yy3k2M4EbFCPDrOd0yRv6kT0NYq3qMUrQp5ZF3HBiTuKCuRgWfh74bT56FJmbteHA/Qy5wyYXHytz4zQoXCLijCm2pPBa5HyxkBmvJFEqSp8fR864DrKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDUzCif2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDUzCif2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEBBC4CEE6
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739304653;
	bh=dx6i22MuUIiKScRY2UnJILZCjfFc4XdBIDjybzLm7k4=;
	h=To:Subject:From:Date:From;
	b=KDUzCif20o4htIXE109ecyYM+EdMt9CuX+77iRBLsAO1pQVDPftsTXpfd4Ow0rDDb
	 4GyBQrN8NXlauZmydziwlOhe+nSyuHbGCohhPRqUcMbb2OpYmtz0eMQZoJ4W5C1mj9
	 yJt2fLMXLQR2d4MofsNhgRYDhyNFOf4L6MEW3hwrXDJhd9uwB6dVJ8FDULh5NX79Jf
	 nHELUsD1SNBI4zUyM8hu+SyohdtNGkIdVCRy3bYQO/oc9sQ2ZwU4B17tmNlj1Na6ba
	 ZegwgpO1CmTBwhzFIwB+HSQlqWNZQjvuZlNekhO4/ESHSFT3N+9D9eVEyPs/LEiB3a
	 5IB7WD4+qZRYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99140C0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173930465360.13847.11479397368089741517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9df1e56bbb45b1323f09246baace4186fb07f074ffecadc6317b8ee06c5a3f
Date: Tue, 11 Feb 2025 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739304653
