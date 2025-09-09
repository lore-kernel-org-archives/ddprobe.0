Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E97253954
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757385594; cv=none; b=amNcj8EYeTkjqvjM6NNDSgqQp7wvBCis/qN8GNAUjYZb3VyweUQ2edACH1f3etM2h0fG9bFNbcH99SbOik9EvULOzbmS1lBMjyp6ESCoM2Gm5R0zw8+r8J1bv8vhEcumQ5zmHFJNpMRkXCsKtiZIeqaWel1vc3hg1h7DIO9LpB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757385594; c=relaxed/simple;
	bh=Pb+whfOJaIixMGcj7yFiEsXMS/crZs4d/pYQ9jLm9Nk=;
	h=To:Subject:From:Message-Id:Date; b=aupQPOvXKzeY3e7UggmVkZWi9QjEHhQbU3Rr4U/OTghV+XFomK1vENzupBg/MToasMGiaKl9UTLUQMQmOkeuXVQ7ZLjDID5NWAURi+MmI6tyeKgRgtTG1D1OV9gmfImgUq2y0UfOPDMgiMoTq0J43ilv+3sFXqCkCp48vg83p4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+sPUwgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+sPUwgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28C2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757385593;
	bh=Pb+whfOJaIixMGcj7yFiEsXMS/crZs4d/pYQ9jLm9Nk=;
	h=To:Subject:From:Date:From;
	b=A+sPUwgTEe4Y9VNWSwv9jhLGyqxH7qtAbmxT4wHvjOd8ikljFFlrjZC0z4bttfqqu
	 TmulGDhIwzoJPcs1tw+NGBW68xqdBN2T/VFhlgpx3eof7U3IQBPr4bXgXhgGk51ATl
	 LVlJiq0CM0ENwydE3DEDdTkTtbe0pF3pLYOHwf8LRDWNM97G5sPPCTVMDuMDkYpf+r
	 jJu7jxdWYEaKumzwCt2riQOo0G6E4R1iK5/An33XlDI32/wRcXtCiFEv8pcJhI7uM1
	 3AHwejUzikg7xF8lOcj0nPuDnA82A2oC+qn0rYzW+iDrIW5qq+N0RzMxOx5RHTmlvb
	 lhdJiGoIqiCMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F0ECAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738559358.3609.11802798612738312365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2b4a87279a88fa0bdd8c83cc5d0fab7591d1b9bbef4e4534c5272251cb8f6f
Date: Tue, 09 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757385593
