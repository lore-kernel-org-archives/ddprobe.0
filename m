Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5FD21B9E2
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757278794; cv=none; b=ib9emIf5mRt9kI9oCD/a7D8c1FklkZWiQ9TnoCDBVqN2tqve4nk7Hs1+mwp8XEXz4aKi4Pdauu30hd5VEA16EaZfk13+uEu9JBNE5pORQ/IVv1l2aNlMCP+2SA0kq9hHXzFwwyQjXp/qhQf69Rmg/Hme2HCDTv3SehwNZNuwqOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757278794; c=relaxed/simple;
	bh=DiQhb2Kb9vVgT70e9YoWBRMx3E9IECGf3y2lnwb9q9A=;
	h=To:Subject:From:Message-Id:Date; b=Niyaw03BYbfuoarFbzm+VkLUvY5HxLccEKg7n88NdTfQui7Lot9H0wGpCiDLw5JnXpXMMXREnI9PEWuhTX+TtOmEqMcqU+ObAcUHgiMNHAbY0X1FOySXDS86/p5rRN5fF8S77wVTmgRbRpDicuKz/EQrPeVzWWt+8qDu2L78AqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lF6QW6VO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lF6QW6VO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D0C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757278793;
	bh=DiQhb2Kb9vVgT70e9YoWBRMx3E9IECGf3y2lnwb9q9A=;
	h=To:Subject:From:Date:From;
	b=lF6QW6VOUnH1w52TeUaghmNoHSf7DYjh7CY50FXjr3+v7JY/Pilc4xMnFEjeUGOj+
	 I2OZOMNbj3bBcwDp9eKh0yYVs7kPvNZsw8/MMZCQjkp0HPTNjIkqe64FTP0IK+ljta
	 9j2vzJ0cDTls7kD9UfX1f8quWYpuW+NYIgSeWJw/FecvEgC0AED47c0pP6r/V8OQgM
	 q6Dc7tSLa9oMqjAb2kAxG6peQXYUeVaup1CAHlAhDsSfGdT0jUjyU67koc1okJgNeY
	 7CtIbYWGFiAgBK5t926BOLWdIP809mSInbLDGX2gqRkV0eNIlQ9sA/65kRxtDHiB/W
	 ifw977MprI7uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DCCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727879357.24617.3306990425126287816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dbd53b681aa6810dd7c0980b8af81aa8aadeeca9863f884203b25e1caadb0e4
Date: Sun, 07 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757278793
