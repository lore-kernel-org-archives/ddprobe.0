Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E8C36CDE0
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755703794; cv=none; b=Ar8Rec5VRC06vVz82+Lt4veNpyzwiwx00Lb7boILPz+VWsneatTVi6Dl57Kyr6KywHUcumjwlunQuHLDmj85MdEc7CsC5MaaHTOdPcpUAaUwqvhDe+aWsH2Xk4cYv3MQah+ds62bvoaNn/MEIEyMHRyETqC8wQam03JI0TjlJZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755703794; c=relaxed/simple;
	bh=MNH0ok7zsL+y1fe7H43M4ZtF86fJlbwIrKQ10dZ8/lw=;
	h=To:Subject:From:Message-Id:Date; b=HdWuboqRh/6Q7FsNNnHra9s2WCa4c5ROAfbeSHxaziBBhmSuOfrBlFMyxWDioIPTYz4oUK/9Ab2u2q5MwozeEyF+tt0cnV8yspJNP+XzY6FDEjqAmrYeJjXjvhiPF8ymLUYIGC4dw18fJ3fFG1VFOCHwIiS9WJ226TLXvCFUgqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqyT0okw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqyT0okw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F0BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755703793;
	bh=MNH0ok7zsL+y1fe7H43M4ZtF86fJlbwIrKQ10dZ8/lw=;
	h=To:Subject:From:Date:From;
	b=XqyT0okwKGwS8BSyiWIhRY6E3s5V7ap3jXDH9D5q5cTvO6DMGrbxleZ/g8Ahj8Lxn
	 uPEaOnrpupeIGAebgDkj8qF5+hY/DNUYE1aza6xMU4dhebPTTvL+Xufu3sUQ53o0R0
	 0R1bdPXkoHV0jDonLTi3PGCIfLKztfRCRH3soyUinM/sDB9LEB+BWDnlkMT7+Xfnf9
	 W1rVPTrRNDgIxTB5HvdjPeNr8dqeQirX/u771/RCUJichDBcRg7KenkxucH7zfMJDH
	 Zwwl4IFhiUOcO02ybZVM7cBLaCDiIDckKy2D+Q7wn0w0EkshvqPXxdUZxygKu6PT3M
	 CNVjI0Ir47Pbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C9CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570379358.4231.8216224555051226988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38dcf68ab6e704912d9fd1dafb057bcb1c02b6959a88b1d60b56198c8aa4206
Date: Wed, 20 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755703793
