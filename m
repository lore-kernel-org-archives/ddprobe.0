Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3C330E859
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750482594; cv=none; b=gzxrSXpLMebkbCvWjumLyVD86J6Sm6l9yORgQyYuEHF2XexG6UISz9HP2nCychDfWXTYZ7TI2zTby9yg3eyVR3lt7m6hqkW0Czxt1Lyn2AlkeEOPo9R7lZhfk4inTAHbbBhbJceZWvAib1pW2XLmm2Yw8zm0clbGAQfOBOcdXg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750482594; c=relaxed/simple;
	bh=7AsCW4ZdxUzyQEcA1wTOCPnAnmf2HTUOn1v9tKQvEKg=;
	h=To:Subject:From:Message-Id:Date; b=C/OUudOAfRAXbTLuEEhMjoK5CFCSlwxq0jtnJr/URi5f2KbDXoabUClpCBduY0yOtIX8/38tubp+tKwdPM3GNbUpuObe7DOII0eKQNj1LhJWNW2zSBN81FnUgFJetmOnZVjct8A1AK+5lLWmXAvoMJksKS6+wsm+bqvi7XNFc6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhHAAohJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhHAAohJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750482593;
	bh=7AsCW4ZdxUzyQEcA1wTOCPnAnmf2HTUOn1v9tKQvEKg=;
	h=To:Subject:From:Date:From;
	b=WhHAAohJJtOiC+ceTmQofFCBkmIl8FsIrbsCNBd9QA9pXmALVl6F6VrA0BWdAWB6V
	 P2n2D/En5QWz9eSOM025MhI6JLESFdGAmjsA9PVoHMIdaA4tr87bz/eV+KqF1XH2v/
	 wvryGJij/K5UdGznwfr6H31DQJaStIjuGV7Z0FAOEEaive1uXzFYdOQmRyiglc+mrK
	 WrMjT/FYqo1Pgse1kv8Xk4xCMJMZYIv6014PZ2NmkPvMmCOaxWfkI79ayq4VR+hStv
	 qcFmQie9m6GkodA0j/RxiDPRBjeVc5DFa5uF3jEgvy047UYOR71judmjw8dd7e66l4
	 xiYYsSsSqQ93g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6D2C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048259357.12138.1521519238376812946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8393707cbe9153330b6c9047417773c8d4430b430ad0899d4db8c3df15073539
Date: Sat, 21 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750482593
