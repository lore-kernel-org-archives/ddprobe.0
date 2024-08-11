Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32983360
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723334754; cv=none; b=DAxlOsJf/fZzM3qjdW0zS6PaVsVsYcH9f+U7ExZOUo0Qh/3aE7kudnngmTuLbSoUEmj7gFc2nHPVJ7fHkNy6mxK2te9sf8OrvE+ObnUKQD8Fck79IGvFtcN87SbG8j5X6+GynX0EnC4owSkmzIeDi5LolRsSMUMG1UHjp5OkRAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723334754; c=relaxed/simple;
	bh=G32+Gb02xnFiDM4pZ/xhOKGov7snxQao0BSrY0a5X6M=;
	h=To:Subject:From:Message-Id:Date; b=Y5KkSEbhLyw2Q2+MDBjEuEkhrahyja9FKZMgtm8TDd1dXCUzkS/046z6KOYBfUPUdXCtXVpwASrCReSPmnkKYtz9xON8xCrWviTUMhEznHtzi1CfguwpY+t/wYTaw2KqWD4ZI0rL1GBOYqZ2f+2HW+r2N1T92SmouMqmqLYWwN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7pTOo9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7pTOo9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2234C32781
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723334753;
	bh=G32+Gb02xnFiDM4pZ/xhOKGov7snxQao0BSrY0a5X6M=;
	h=To:Subject:From:Date:From;
	b=r7pTOo9SOjbcACe9Oc7PUZHkkFenk6XNr2M7ULQgkd2ak3t3LKbZq9nym7dF1g/KQ
	 ijJ/sFRE/0FxxOuON0aJYiqjWg/Ql5Tn0Cprb3GyJ2l5K5ls8t2O0286HC5Bx651Df
	 uLAltWW3GHtmmFf18cb1OHjAIkxhzbLgyESrBFxwbRAGRiUUaLNl+UeO+XMaDbBqa3
	 6Yavk2IqReGPONB39A1yMule+JoJJgctMbjABqqKbSRXNIdvoUGw7l89WoHfTv1n+n
	 W2BJrtSXktQ30eMv2oIXhOBS25UuTIlsCm0GxON8Tv/L1NEx52afxXyZFkgFAU5wSV
	 Ts3flvfrlOlng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA52EC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172333475367.23462.17484231969153094399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73f22439dd439b1aa57453ed87dd09e45a2e01a2b0557cd47c6949069ee1b7c
Date: Sun, 11 Aug 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723334753
