Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425AD16EB42
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751071794; cv=none; b=rBJ35Em5+gRYUSnNB3tRF06fJDHJNOrjcpxrPoe+nG1OcTFYuI4YCGlBH3d0RljXSPftQs9DqQTcs5bcNd/DYaib/whknS352tEKg8UlCZXyHsCrrOMR8i3Qab0FPybatDL0opCGxmM5mwTRjk6LLn/fI1bHSEJVVIr6D73WALI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751071794; c=relaxed/simple;
	bh=jTXWAlOdNp3n8hcZs+85SclFcj0ES/KVDkTgzBL8UcI=;
	h=To:Subject:From:Message-Id:Date; b=cPd5UJXikCo9JLR8B6SzfQdB1fyCgMdx2NP7muYj0exS9cKDEClTvBRDTx9xnec4ojrYYZnhYGN9WDrSlkL1qeNCO/M2HHOxRqwl+AAG0I7jQh4ao5QG+qAEleT1ATaeQYG6oE/UkeUEGWEZKlM5lBa9X/g/DsoeoOdANcCzSkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bauz/Dz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bauz/Dz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C93C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751071793;
	bh=jTXWAlOdNp3n8hcZs+85SclFcj0ES/KVDkTgzBL8UcI=;
	h=To:Subject:From:Date:From;
	b=bauz/Dz8a4fVsmONz+23xLirf5MFZE/eGgSQvxIvkgjCj6NwQDQWztgUMJyUPHNXn
	 1nY9HWRct691lnWBO3ey6N0myaKbyHsxvK2TClWCPbHf/d+SSwGtHhbRfuQzKCRzoM
	 YWGf2OwgfXtczUEaaah7kzUevjqx9zyJ9WeuZbcGP/eprdSJ1fTeFcXlMvxfhTCAzu
	 E+c8qpcnT2Z1wQaO1vY5jN0II1O4chKg1wky6xyT2rZAOnJH/iiv6m43gZk9a4SZiv
	 6W4lx25VpAcw71BtWxms2eIjap4aaQvQdvzRyfFeSz8k3cWp/pw2IXVh+Ve1mXcWlT
	 FA7NLjelMfovQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDB9C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107179359.31157.2694852483080665410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3d1f976fb2798ecc79d6a2af2464fdfdd5c6fd1e36f50f2101596ce06a66c3
Date: Sat, 28 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751071793
