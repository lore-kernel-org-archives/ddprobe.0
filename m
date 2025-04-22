Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582A67603F
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745300994; cv=none; b=GeXzDj1hpfWddAg9ERF7KKs8VBNU2+8HAtbIw4rrzZypQTE6HU2fRSXgSqKBpFQaNnoyEkKsGVRa6EhEpHe+8u/CcJnJIQYuOqvbAB2jiGScp03RDkjoOvj2n+JxW8pdto+/QqM0iqhX7Wo3KrRJGd4KDBRXVgakRx0HDAigaqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745300994; c=relaxed/simple;
	bh=3DJRED5deyn6hA9/0fKy57l7dyiM5qt5aLo/K0/rC/g=;
	h=To:Subject:From:Message-Id:Date; b=U4PO22orhNjbNo8MumY8y+Bz+1vKHSbXIkwG1nzPNaXvCzTmryil/SH7Ua8a3LS3ylpxqh04A8yCm6wO16uxlj5n2rvfzO+rcmCasxqqlvNiDT5eB8yU0HYalXga3x1kp3lmmTmMz52GM0qhOoWUXG+W0c9WO2c2Qgxj3xteQko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2z5ohMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2z5ohMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E1EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745300993;
	bh=3DJRED5deyn6hA9/0fKy57l7dyiM5qt5aLo/K0/rC/g=;
	h=To:Subject:From:Date:From;
	b=g2z5ohMr/OZxIpQUmz+ChuQU8lKfE2msn/fbV6g5L2+sCGO+4HTjxCNMPoeWeSSed
	 fskkxe28NsSiHbYBcIHVkuqbmdB6fxUQa8fLVrWUZ8O9IznUqzF37sMQFVU06cs8+d
	 WP9nlUMC7/5jlD+kM0yucKo/T0eZRz21p04EMomzFLTqhCcu6LA8/Q4JFkc1BzbOV8
	 zTEzMweQaDIexplLYvRfDDCzNYEUScTrLxOtzbooUwM/M3HeSABiPcJV4QBK1Y+JMI
	 qQlJ4EETwklm0xFnHhR6FSDBQ48n4K0o+xvYXkOkRKAOtODU/ganzd+OmCRgS3ZAzP
	 f6m42z5kpH+Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4294C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530099368.29260.9961452408898225609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cbbc38344bbbf6891a63b124671d58f293c564dc44a11a403e018ee61edd172
Date: Tue, 22 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745300993
