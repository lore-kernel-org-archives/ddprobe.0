Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDCB1CACF3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747177194; cv=none; b=pmmwmOzyKqxjHCYYuOc3b54giDI1stvlmYXEEr0lj4egonGTLFuntleWHOZWfcGmbv3YHMH8nfCutgH3BGTpDkCxUomaMH6SBHYH3kIksKgJzkiS7cAM16i6DjzT9NxrpFo1R+MyjcNhN3e3kb0sj+M1UTpEcCFh5mYk+8j3HFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747177194; c=relaxed/simple;
	bh=TsANpgztgtvSil6/2hvfuZmGFCHLtxZo5euZbv4ARD4=;
	h=To:Subject:From:Message-Id:Date; b=Vml7uU4kpQHfrJq1gmoVfUc4NcWYvwUzpqgM5Sc/mlj6KyBkS8Mr9nFrWeansKKTYPF5yCzmxtmMEsOZ3wD2BaAI+mSL6TIH+dbmJ4wVURKfd8HAuuFjx+ML8xPNLDruBlq4PT/6LpDrqQcbfAPNdu82pN09JbuQ++3CjvDRWyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYAKVmRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYAKVmRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67EEC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747177193;
	bh=TsANpgztgtvSil6/2hvfuZmGFCHLtxZo5euZbv4ARD4=;
	h=To:Subject:From:Date:From;
	b=lYAKVmRFz4vJqWsXleYAu34ag0eJReOt4HyPSWrEjAGaBv2afThMaIkUaj8ylaipX
	 jwX9tpS4Glf3Ud3uuAZQvF9aMDeZM/sO3JgdTI6M7tLUlG5Yud8PbnKevJ4SuB0gvE
	 +6+7Z4n9CKJJmMIYbok2D3F9VyM5rxI7kTRNy2FLjNQOJBBcBUFMqmXDqjVFxWb45I
	 PAwzmz+Bi82jhNeAUbTMkcFl57YC4prHsD6GT+nReLr58VWbhFdkPPACmKZLIDJ6+s
	 krSAcRy4W71T5BNCs2Dgd2F6FO5qV1GnEIURc9z33YnJ4ecDBrPgq6Ie8Miv5Ny50G
	 U6yqIkAY0NK7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925D1C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717719359.19793.11341720079278004665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7527703e548ea6933792dac0682f193a6851a4b8a436252a3c7e70384ace75
Date: Tue, 13 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747177193
