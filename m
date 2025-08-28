Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F489AD4B
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756357794; cv=none; b=B/YkUzKcwZJZ/2GRhz284eODnpibV6rCvN/1ySxkjE7IYHe8LvBHfCsH+Yjdi7l6eJ5j88x9CcLoSqnRjVE3EblJiUlzOJ+BQo+Ea2/vHVHJKYubQwZzBDlx+u0MYMBrOzE1PCmlSTyIn7LUWMBjDI1p7gDKrYAGZQb7DiWaG4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756357794; c=relaxed/simple;
	bh=OfdXM4bj+AVoQ//zSso5ifMLgWRGzSm9ZgYhNnbeJ64=;
	h=To:Subject:From:Message-Id:Date; b=eq9lc2q5uL6Fb1ZowLdXTzkqNkuguyBtj2CPzuHzprAgCbtLlFUGWhxyYeXYWPf96CjWcOp217lkrYmtuWBenJFs3D6Gz0GscZAWHqtZ7rA/jtoBFogIi6jlJiXecFim+IcJV4JClAtWFhT9wcGxYr3jsa/y8emcucwG2WgI4JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjnXIdvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjnXIdvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9177C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756357793;
	bh=OfdXM4bj+AVoQ//zSso5ifMLgWRGzSm9ZgYhNnbeJ64=;
	h=To:Subject:From:Date:From;
	b=IjnXIdvme7omwN3tZ88WOF83H+kYQ7i/tZiTwR7shhbgaO6jjA55psAxnel76hLR5
	 DD2O5SlbLQYSTRlyujOw9XL+6+76TSHbkmEZwyGknFIr0rHuCMwiXwfn0QrryHqWlk
	 2EipRx3fOsWrRRGruV58QK15geOexRnYQf38YQzzek7E1cIazGV+1bG3oYXYs1Mm4S
	 zPcc9IOLbhvybd299z7BnsOEQwfJdY1DBgJqWnqJsjeU8qn9yF3JWwKkVMp7U4YJ6G
	 4lrOFCb+9nMpKfGd/qVvmR8s3Pcr3QxmH2G0LPhUueK3OJg6bEgK9UEv2Ul5hA+5Wo
	 psq6qrrtHmeyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952A6CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635779359.1569.15941900292805542456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7af0a837d0391ba96f0daa11438699af24dc05ccc7b7abb6890076d4d07556b
Date: Thu, 28 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756357793
