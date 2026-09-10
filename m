Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607B3257845
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789005034; cv=none; b=JIhk9GyGeXY/PYJRqi6p1B0I9Od9Pe9j4ElfYECb8a+S0nPEK2c7qaoL0xagDMZ2OnSMZ2JJDdfurY4S2xxPrG1Div1uZe21iFSsuo//AiC6QMdTaBGoB0JGKNzsWfGzGhorIlnT4EjKAHa44iEhFgSiwVhTuph69zatK2EM8BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789005034; c=relaxed/simple;
	bh=c8zKrs8NsxLVt4NwLlVHy7f2cD1W2IO42uDj1ipaE+k=;
	h=To:Subject:From:Message-Id:Date; b=r5yqTFfJTRg4L9s8/cHCSGFqPTZJNHvIRIoItBtJwqxgQwpn/rbf+qvCHADGmv00xVNU9RDe6b50atdWg/9oQxwMdh+VXFADYvcnBQwhOd/zgqvslgnCBw98a5KPdxm5KhyOuZKVLMaV8zlyFsrLlC9oM/Bq+2CjgQ5/OeyK5+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+fXU5dB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+fXU5dB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B95C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789005033;
	bh=c8zKrs8NsxLVt4NwLlVHy7f2cD1W2IO42uDj1ipaE+k=;
	h=To:Subject:From:Date:From;
	b=B+fXU5dBCZWRuxQden7qcNok7lAg/I8lwu+hkozPEc4u7CQTkz9bVngOiODitwnOd
	 BtTSSSV7JKs/n6WdwXe5NZw+g5cGhifbUXwcbDw48/G5IjLMqOjKcU9ninyT7Zjvuq
	 w1ymaixTTbfOtVBDHKbutlvhF6SF80Zcadk6fbWUKjq1G+iac7a8dlvQxPf1Cd8tEo
	 KdUf/MxVot07TkNCv2YZy8AmOMYDZwr/6vfuItRrrAaR1rcSrKMGvlBAxJi1DBOwmR
	 /Uv8qnUU+gZgJOIE2+ihdYD58I2Dyk144yGVbDJ3w/+xd8q4LuL9TfO47bQ9aVh3JP
	 kTN3m4ZfcwWfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1017C79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900503371.30435.3023507900819334039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5bc3c0a6662ff6cf03c5cf36049c1cd2350ba3c2c831110759ad722bb24c0d
Date: Thu, 10 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789005033
