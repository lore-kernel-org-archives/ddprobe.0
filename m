Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F56195
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722038754; cv=none; b=OYGKYr11dB2Qt4MQG8Rbq8RLaZaMl3kRBQFnKO/zioSRJC2XLrZMLgEeHReHS7qV2v/nvxrnXDWfUvbFF5uWAL4MrKYO03vi+yXtbto990s3kcIK8sseNKX1ggyyfpiLT3xhsKvi6walvR3w1OEvBU4Ck0/H8+rE/STJr5wZpUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722038754; c=relaxed/simple;
	bh=grbje57Bn38O9UWbqWZO2VjNWLs1A4MEjIJBlf/VP00=;
	h=To:Subject:From:Message-Id:Date; b=VHjf8DPLPCkM0UkLdikJy/s0nGX0Bg1R/YGXy1JkeUn9Y1KeqjpxX84ywDMMNWHhcQSD8qGMkMHamX26+VLFnvieNPdepaA6/aQLn2Ihdk1zioVhjqPQ690ENuKbRbqPn94SMhJNTpreTu3Td+675Ve+2df1pJ7SLKAFUa7jskI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N04nILf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N04nILf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBF9C4AF0A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722038753;
	bh=grbje57Bn38O9UWbqWZO2VjNWLs1A4MEjIJBlf/VP00=;
	h=To:Subject:From:Date:From;
	b=N04nILf0pgGbVBi43t3j48IeuyjXApYFXw4ThYCI2f5SLmLrmLUDYB5zYCU6zSxgG
	 WM4hbV3gsaW50cu+eRZ63+qh/BWwWylO4kbMrWb1JoHyJ1srjEWefNXQ+sTfNBiDL0
	 IxsRhGPi9Quzslg/XZPHmMH/rUSyhXOmwL3gaMQ1/TqZ+Dk08VzelJ6kryiNyHe4Xl
	 JEG+9Xs51Id+BrbhDNmv+eVvi3QypGFxc7wOwyzgBx2b+/6ik4Nwa5Yba6lU3n+x5K
	 JZQszXi4w6BAmuzDeDBM3/nRuBiU7UQ4tYecyASggjHxlQV+HTcac8LdnSnbJKOs/C
	 RZLwXZSzRiorw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD93C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172203875362.32553.12410617868374873386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd570f8578b17c48cd3a77009d35a0c8ba2fefeaa6caae68b0e85c2651f62fc
Date: Sat, 27 Jul 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722038753
