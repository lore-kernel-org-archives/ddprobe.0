Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483FE285074
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762591794; cv=none; b=kG+wwe0yLSxN3R1PzG5L/irlRsIcx3J2mFDRbwxROOEGcC0YZQ0vgmYc6CXgygrHtL8zQKg5u7HGWNM8OegjK5u6wSsXbtr9XeOyayYJdBpShK6iPhNE8A37xOj5MBkzojwccsMi7TVv70aaDZ4I/k7KZZFDOkeJu62b7xnnwyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762591794; c=relaxed/simple;
	bh=sP2MKqJpctDNG46psKx/VkjT3lgoidMnC7b56ksNbrE=;
	h=To:Subject:From:Message-Id:Date; b=ELT6+Uf7Rz5Dv+5lfSMtX6BrSFEsAmbJYV5fLGXez0A7+QGzajLdczDji5VtA6PHA5ryhHHJR58jmXoZOmQ8iJFTe0vgbJP+PyBtRaYGG9fUwZ96zzpUsvOaG+fG9tLBzRW2gN+TIQuSoTQWlbLc2+sVs37octsit02HSgAVA4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTVYuAlp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTVYuAlp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20C9C4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762591793;
	bh=sP2MKqJpctDNG46psKx/VkjT3lgoidMnC7b56ksNbrE=;
	h=To:Subject:From:Date:From;
	b=XTVYuAlp4NGsn8HYAnljoo/X9JVkENe6e6nrrc/VY/+ebFKFBu9aVmuLJV1gZsVpf
	 gKxGFoH0P6CdiN04i0Z7MZvKlQz6vFa32OLUwFM7vHQ2PrJXXql2TJ4m2L+KGX3nc7
	 UpT9+t2AYo5BYpxcW6r0ftW3qxC4Bd8oj8CGWlwDe92QS6K/qqo/5xouWBWbjWqmet
	 jBM0GCRCUqP24oCyRpqBS0IQhC0LHeSKvQTNBjGw5LROyHCCNjO/WZefNg9q8CcSUR
	 6092NXK7trjaqtN+XDvGO6ykon3k6fAh6+myD9Lag6MYrshgb/z3lcxItcl6hCxxjk
	 UeKiQ2Hi0rP/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE4BCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259179360.12426.1779032758099165724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f5fecaa1ac621e68366cca3ade04cfc2b8eda650ea3a59eae7ffe6b5b8eb16
Date: Sat, 08 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762591793
