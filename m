Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395F7155C87
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737891354; cv=none; b=lSiJ+B3P3vm8clog/CZUG+tRf8oV1rfX2ZgHn+pZEMel8RR3dh/SDcPS/QHPR3IBc25LwxUKq7Z1Uj5CP1rrJ1hdpNNJLSIQgq2xQZobqgWJ5JwXu1CVGd3xk6Vc6UTpp6Wfa19LKMuRPYZWQqSfcqJhMLHwtfQTlvPw4rZloS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737891354; c=relaxed/simple;
	bh=4NJpROUfrAuNi5m9YeE692lBstRb/GTSYbsiqFhMKd0=;
	h=To:Subject:From:Message-Id:Date; b=Ut60fvs65ssgPbzwt3CJizwvxA11RgYi/wKlPj3j2TkHrEdfNUG22b4VOQgBQeObf7DIIJBHfliUC3ROjGuV7ap5+GcyTE6Jkv69iYiJo/aJsXevoEpyHwmG8sFlGINMVxqZouLMn3ru+V6HVKA5UjrNiK9PHa9rPi/McmGaAnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rK/4lpvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rK/4lpvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86FBC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737891353;
	bh=4NJpROUfrAuNi5m9YeE692lBstRb/GTSYbsiqFhMKd0=;
	h=To:Subject:From:Date:From;
	b=rK/4lpvIE2InsJioYFgokH5rkwQ68GAcvW7dd5msT33gN/+0ALe3uaCOzcJb20eR9
	 7lgYX38N0/cIgcxeDYOhO5aTQI4ClRa4kKWxaaFoVck6BAw3ByeKQP1iNS27+N+Q7U
	 9Rq/hKQGHq4j2ZEG+0D7NHdk3wGIaYXLwMlT4rZPlNEXFDINi7GTBjhvBQJrqIkjtm
	 dq+OsgFdDfgYirJuVFZcqSnWL8ErWvyROZ7gH4Xaw8srBp9bag7W0CM1kaNtAj0KsW
	 /SerWkeFzjUi5U0a+NE6h7sr9bC/781XDswDrMx+vmuCJ4n2zM6SmbCsCedOeET2FG
	 2aDhouiyZv+zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BCEC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173789135360.12836.4693721465876765122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c8ef16e3d35c13ccf56904edd87ae2d725ac576f40e1c4cd1589bf61fa1088
Date: Sun, 26 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737891353
