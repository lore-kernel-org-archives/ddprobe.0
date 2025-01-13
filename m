Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3A33C3C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736740554; cv=none; b=E0MKSbUa+6IijtxCAEg4Qx5KbkgMOg9HbK51mcVfoICgjqYo03mKODkWy7LGM36c261QaSL/1RQaCmcfuiFlh0RXR4Jteme4F0ZkdHygTjHIGSvCS0d21S3zN2rxDtcknUQXrN3PHVr81PSYCOp2/R7YMLfPyS7zb2jL/1mm9WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736740554; c=relaxed/simple;
	bh=P+NArdVR22vHe/d0a/FQ0gldVgXbbKznDZHjR63nFyg=;
	h=To:Subject:From:Message-Id:Date; b=OBa+L49VWaK40UfaCFo2kovsQn/stq55gKuuTDvmuJQl0KeBfpwfpXWXfDHidLImfVzd54LfB0IQz8kAcdovaRokQmFWk+JMLDiIqw55CcBU9MOSA8RL8MLoRAqM3xRsY5kOCP1IiiDFvza1hRPVcrD4ujB873unuWwTZois0ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3HcN5Lz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3HcN5Lz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E96C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736740553;
	bh=P+NArdVR22vHe/d0a/FQ0gldVgXbbKznDZHjR63nFyg=;
	h=To:Subject:From:Date:From;
	b=u3HcN5Lz3YB3orgHWuZxoLNfseeAOLZ206uInZPp4k+6MlzGR1wqcbm2YqK9VW8fn
	 U65vwLMhcZJHai6qOsRUhZks2fnjIxHLBB0tIGiMIi3Lxix0t+1ffVJIgveU4J5iRf
	 rbUTuAx7IEGON6xezYrSDhRbJttQHxvkHWPGcv5BWOhNkBfixhNgNHTvGWqf11q3uO
	 M2oniquKe+uNhiDvRBCyTalw+JJfkAwuenOlC1R6aFyG4XCd+9UToepRD78x/NJ1WN
	 OoOa1sY9EG3aKHqnqQ56acvWG4pK1js+/2xD50YubJO0l9wNzrY7nkcuqBi2heRZfq
	 wHP3CiX7Gmhsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93971E7719A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173674055359.507.15080863648355778567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e04b0bc7c9c120fece3cce7cebb81f3b16a9404f3da72e2b656e28ef27dba4
Date: Mon, 13 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736740553
