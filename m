Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB432594B2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736229954; cv=none; b=gY2CN08cHEGpUO/dhQJc1SL4P4CYcI5yRZQFBUX5K8f1tST17DkVc9RYzt0mU/FRTowweAnV8j7tRvN+ORKS7R7TOCfYRs9rbTFjT2ZNXDphIfEGMQ3xg4Bc/jzqc/O7kMH7Cb7B7i7h7U+kHGR3lZcsxQNFqaQFDfMZHN0lMoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736229954; c=relaxed/simple;
	bh=zGcZPy8Fv9SqRtudu8M1HLPJHzOTx31EQ50aMRHtm+g=;
	h=To:Subject:From:Message-Id:Date; b=J2Q2Q1jZMlD1TpEc3DoxlxSRlD44nbcs6LGbU6OZAf6WgYXDr192TLDQVgemc/U+LzFv1OpOpsp5nqlYarecW7KQ1IPaOqRWTCrROjmtlwI//hh0P5y09KXk8tz1W/iwyVmW/tTBrxGkC8gVdOIXBNEAESYNtTX++ltM8MTzntU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=paChLvdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="paChLvdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FCDC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736229953;
	bh=zGcZPy8Fv9SqRtudu8M1HLPJHzOTx31EQ50aMRHtm+g=;
	h=To:Subject:From:Date:From;
	b=paChLvdJGuvs6muK0DnN1XOfvQE606nEhA+xcRKYQJH3zyigFqB7aQ7h0LZUE3Ji9
	 rd5NuJpwC8JoiVuNhl3XTLGQQ0Hb9ahp52ljpQr5Thz+RSJXsVfJGo1H6aetRKdq2r
	 zNYepVYebyI76ZqsCRkIZUxLABIGHKnaju6LOQ1KCTDsFcyPInArNwtiFBsl2P6Cb3
	 gnn8//+l61WrZj+vc1O2hoPxVDyHYsZtqkaUjxs+t3tQgq2snj+lB0Y21qkQdRfsJJ
	 XH6g7NaTZ6lYlYS5Jv0alJ2R4hCrw9A0W4kCxvcHgwMBLgWkejsIuyo++pohe6/cuu
	 WsygzQQCbilZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBAE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622995358.5722.9553939778241429212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf94060f4093e13f0c37d4b7a627841d9774074cf999d374531c909b9212335
Date: Tue, 07 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736229953
