Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF5014B08A
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754902194; cv=none; b=o6UV1E7y3mJMBpoyRtG7uzciNsDXlrHRtrJ8INAhmxuq9CrIZQ03MJ5ORX5xq+Aawr08rYeRqRwZMZ0AXXnAQjWJ11NUgmze4pJDY8oI0MT8cCwp6gtTMh8rhjkk5lECDPSRbUoMvJ7QRRItvthydmoAjjV2xuVgN4OzIFE4rWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754902194; c=relaxed/simple;
	bh=ExAEh+BfZJDA4D4VCD390qIE5jimu+Q4cUSzzl7uJyw=;
	h=To:Subject:From:Message-Id:Date; b=FywCRJQAC143C6UQMmGxr0KpqfT1AZ9ESbQvAQuKGZxWfu7TmB2us/nN3lcj2ZVfFbIldkMDCh1lMy0NSQTGvQ2/6dBV5smA+2CbkMS2tLQO3/D9sG6qwxjbdRunXEwH6i659PKEly4qhRVvqxeuxKQEkS++jKvtKWGGLVEy7UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jflvX3aj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jflvX3aj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F476C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754902193;
	bh=ExAEh+BfZJDA4D4VCD390qIE5jimu+Q4cUSzzl7uJyw=;
	h=To:Subject:From:Date:From;
	b=jflvX3ajvuCZP7SM0MYzxWPcK0KTv5LaInMYQSjqnghFrawrDshep+jK9GCdA+TjD
	 Y0+12KZy9Vlyny2ESJQ2ZAZLYFwlPQVqFB+yJ/2IZSgeb/v/GmiAxsOzkxL2z0ciNJ
	 FaSa23Zc6mnnFOvjNCc9Tx3NPl+Qi2KrLUMF3ffg+td9NUJ5xMLEvhhgle/RGTdK3O
	 r2LfINL+BZ+F+VCYH+L/8s8bqLlqJTOjmf/Z1jR1Hw7qBMuRbfkR75njBvAjVarysV
	 v9SazjouPF2nGuGmNRcTBjIHZMEtuUPrVtWaBde4xLaI8L/KLfA9TYCpw0EWf5q2n/
	 T64oXB83EJzUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915EDC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490219358.32737.644466557867977700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a35826fbf0fd9a73b048669c83dc6eff6acf99b6db124b07c2e47aecbf94055
Date: Mon, 11 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754902193
