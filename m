Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3A1E250EF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705585097; cv=none; b=FinzFF5a+V04DBbgqxI/4ZHMJIr85P3wuGJh0CofM4/4tkIYHGtlFxVkoHjsFVEN7MWzOEDul4IljYCY2R70Jj81E9NFbzPkFLYRsZGBhZmIfKLZnnkIB7F1R1lYZ5AfGviQeA5UElkcP92NiPmJgyxO53ZrinpMLLPc3+mSFMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705585097; c=relaxed/simple;
	bh=uNVEBoh6sqNojFrgWI7XmMLxZZ72bzH/9ilHIgqhlH0=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=aXL8N7yEZs9+RJbNljA0SW9bXaf3v4eRYqBdHxrxlgk73621TYM+6ESglaEPruXlBJkQFtrPIEw0y7VKebT7Bvw+fkFUN2u5yg55V6i4RJ33oDUprKYcwl4rucZj+kI4wBFu3ORZLZcJGMhlHSj6pJJTTJZKNNenTjUSTiDaNz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZpoaht6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZpoaht6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70ADDC433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705585096;
	bh=uNVEBoh6sqNojFrgWI7XmMLxZZ72bzH/9ilHIgqhlH0=;
	h=To:Subject:From:Date:From;
	b=mZpoaht6ZIpa+OLWYdxuEVx9taPVFDjKaQOsdTOjQk4+Ky6/v3P+nXf3JIjOmV5sR
	 gKJulsCs9ETHEcDnaDQRfPDRikXL80qVC26QihvLA/QhC4HRmBHuWH4dmcLxoSmpYh
	 nW9jWQCEubJLyd1NzcThjH6P578lg+8aHG1CSeyTduB6iK4lJpfYKtL9UrIf5MimB1
	 eJvCt3QiDijzY0T8sc+7wfQ/gUc0IbdcsZKH4T/tgUgpQxeQ+Y2sMizWzGO0frXo5f
	 aB5t7ssuJ+IvuwP2KtVLyu4QItsiUV3gTdF5JmMbgZJlUYvbufACfthCh7Xdv3V2jV
	 TNMGuh6rVJh+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B355C4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170558509636.31750.14388305062048499084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b918761e7c63865a8679629e3c557c6cc40871a33c9f398c86f0c788e04f9e1
Date: Thu, 18 Jan 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705585096
