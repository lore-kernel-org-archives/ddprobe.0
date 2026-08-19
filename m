Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1F73B813F
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787154634; cv=none; b=bhxVH6XAFnv3fy5QkVEuU8ORJhLWkMTcQfUQVNTQRo0MZcEcUTLLCmM3Z6353TNUqarY3kFbSeWhoNNWdawpY8kfMEhSx2V6hSyECJODi/Fr+8AQXmeCARJ9M6DHSSrRiULuU2IVjj9eerGkkZ7VHBAP+JvE2SoCeOOb6ZEd61A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787154634; c=relaxed/simple;
	bh=6PtJQcTqgDNk0KSGwYO7fF2U/AthOi65CQYAKuxMWRw=;
	h=To:Subject:From:Message-Id:Date; b=BS+l8tyipUhPe/nJTWjmk6R44DlswSyDC2Tah/DfBpmZC1+0BxfEpwfvd2bLvNjqeStXoOIWGx3VOHg9uArUGzBDo0UIxp0gG2XBzV3+B7ATdszfXwnYSfslKOi8klLFi9ogxGSHdLA9hW0AYeUs0+icFiWnhP5s0xMNbyon+2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rY6YgjLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rY6YgjLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD161C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787154633;
	bh=6PtJQcTqgDNk0KSGwYO7fF2U/AthOi65CQYAKuxMWRw=;
	h=To:Subject:From:Date:From;
	b=rY6YgjLX5iPbQmrqU2kkJZcimmAjipxrpHurKbIkbyVrPny9attrSd/8ZjK8+0Czp
	 ibLJvFgniuomqkOvnpYzgKpEeUbTR+qUucSSB6y4j1y8mnrPYCjt7XGIRIXNDjlJp5
	 3CZxOjh8b07AflbHmWRkm4mYIOSKg8MDjOxatrztA3rRCAYauIKoHIaXvsntTWhL0G
	 5m3KUP+MA2llnRhNpXjYF3dvWDRmX8jae4F2Y48DoqRxcJrTC+3Hel+sBPH8i8Ah32
	 GFDYrvGt6Mzo4Awnw5UaKFTg/wNX7UobmmQOj32waouCylFRNTIRDAVePyc6HiQeEo
	 p02yWmtEUm9fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5422C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715463372.22869.15670374639598677211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead0e6c36375901fde7aec5709f6c01aadf426b79616653162ec15d8fde95428
Date: Wed, 19 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787154633
