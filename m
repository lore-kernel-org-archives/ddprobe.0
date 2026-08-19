Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAF121CC5A
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787145034; cv=none; b=iHgl0UncLK+4s7uhX4eOnTP8Z3BDX2A2EAjOKVarhXQ5PbZxA7u6k1WkMyC0fq1ONLHx1dosBLzOgQZcTFIiV86FW7LFT5PHiW7cQgxVqZzLUdzpI9USYIhc3MFSfniWXeOvKEyOa5MneyWPR/ht8rSnUaJvgofIUeKhKha1PZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787145034; c=relaxed/simple;
	bh=5xMoROuSAf/FuVyBTm+ZtnntoHxbh+2MQH/arO27/yI=;
	h=To:Subject:From:Message-Id:Date; b=ltUyJSCr4j3PGJd1BZkLU8GVyTdEj8ioH+Sna/D/5UZPIdo/onWCU59Ep8e/5WqFK23av7ETWJZPfb9+nKfAjnUwAOzqKlcYLYSUbv9IKihr65uySshY/K6QTwObUSCoCpnpv+KagLfUkZKbVz/k1fk6pvHQrlUJDFBXvCw0kP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRNIrLfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRNIrLfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0CDC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787145033;
	bh=5xMoROuSAf/FuVyBTm+ZtnntoHxbh+2MQH/arO27/yI=;
	h=To:Subject:From:Date:From;
	b=QRNIrLfEmEaHOPoJyOrpYZ4Bvf6r7Mo93ppvM75yofvxOZSlPahusyquCWEEEEyxK
	 91OBsGRGZw2t0Egh/Cgk2Pq1kZpRqnVYD4EDTaY/15JVhKNMJy4Me6n9QxzfQs642Z
	 VVdcRYWLFaQkzszjagDIcZYhVO9DeKrfLoo7qcWlpXyPqVFyjWEdmnB/6iHh8GpZd8
	 j6fPIVghDbKmlKgs/LOhqr7OonGgNzYDuJqfkMaUoWxhBmUKE5p3Xm6s9uzBKZLVhW
	 RWv8msDg4iDXvIQ4E7DQo1uRZ+GI8+KGLqJBw/Md2PtbQPy4HSIEw0B3CEpIKvac9p
	 MHvjgXH5xY2Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80DDC5DF86
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714503374.3910.8938515546281542939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093c08e7a3e4cedc4be91ff3a6e5eb4291c8040c944959219376f0522591837f
Date: Wed, 19 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787145033
