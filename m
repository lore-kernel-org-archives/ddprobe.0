Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0717DA73
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737086154; cv=none; b=DPrTIwPKQ3i4jUqLKhNFYYroQeu2Xfi27E3ulHfWmTkLtMR3C8FZ7ixKa3MpcCNJ3H9Nx6ai4TyrVMKu4MKt4KnI6jnEsKIpf7XevQauBi16AysNtoCzRUZuUW5jFPzjw1vgSe6TMbRnpbvJtEvx/4xr1D2FksGCp/5V43Zc830=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737086154; c=relaxed/simple;
	bh=OlnibSa9cXdtGA8od8yiCL5Oe05hiczWYGdBZ+pCrcE=;
	h=To:Subject:From:Message-Id:Date; b=lI/VO8wPGG/kE/Emej1l6t1UqO8xB2IaNnzoCSTSVqW9SJ7qREFV9a2kdvApvkxX820pxy6oS4VngZBz35ni2oWN5QiZkyLWAG0JqR7FsEcqik4hx41+w02olJ8102ofdnu+Q8Y5wmYirSVvaJQ5WQ3ksk5Tj3dqIZbE+/DjCxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j97rm0LT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j97rm0LT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA73C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737086153;
	bh=OlnibSa9cXdtGA8od8yiCL5Oe05hiczWYGdBZ+pCrcE=;
	h=To:Subject:From:Date:From;
	b=j97rm0LTeMqZk55vltUbmg5yg95Y/y1/OuSphzDFtlfb0cGhoYXRmKyIM4llXwylf
	 CdmxK93JYE882OXPJuvc72wLSUEegy6MLUWAXURY8mctijTrJWGA5fPMJXcFI2k5ms
	 8LJIq4/jG61W+8sTBhT2usqiwPu2Y8f5aVJ3MAyoeEGGomt5IRenZ0nZ4IQ/1ITsg4
	 i2kDjdP+ArqWww6adKxGrOhxmVa01RFXkq7p9KOHNK6JDjVa61w6CjXCYPvzKKU26b
	 qoofs+/BMsF82MxQB7eLWuIdqNp5wvPQKxyuP4QMU4clCDVt1mr7yYq48ZdnbLdtt3
	 kN3bSJoMfEZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7DDC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708615357.19317.5246035414126845869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6721d8caf016006e9513d80fbdf3a7623055c989cccd0a86921e0beee05b14
Date: Fri, 17 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737086153
