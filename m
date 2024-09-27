Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0841474B5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727467553; cv=none; b=E6kaB02hJNUa9Z6GQq7pAQ+CY3f59WH+G4r1z5Ytv6uxw3F7nx/qGGZRSDyQnx/C7Wr34ge5IE7q75GW7VrBXdGDKi++zgJ97WPAnaUkBnPIAG/Jy2Lcts1v+PIVeYEmMRddBJzD5IM3JXA3NPWJgTnxxMBrA5Dh0UiDgeavZRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727467553; c=relaxed/simple;
	bh=ADI6MJBzJ+bJQkrTjyfUHL8ZJvCI0Kkbf7QeFYC4Ibg=;
	h=To:Subject:From:Message-Id:Date; b=m+R6vrHeVipMOe8lkzZl6ESqD/wuO2n/tZ8CEi6PTRo8cPPZC+Pr/27Z/gp1amHCkqDvGgHYkT/Yix4hQVJLehd3Phq9Sky/jskt6lvjaQgNi/Je1OmvZAH4gdJyMgou1hfdrbCrpnazOBVXrjysHl/BWZf4EH6dzOMymgCfEK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ed6MCi5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ed6MCi5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F18C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727467553;
	bh=ADI6MJBzJ+bJQkrTjyfUHL8ZJvCI0Kkbf7QeFYC4Ibg=;
	h=To:Subject:From:Date:From;
	b=Ed6MCi5tiruE5XnfayAfP3LPwxLNmRnyYEZFTRBM3YoTleHOumS1dfPSeITL22CR8
	 vPh16HzRmvANdFdfRXXvindDLSKKECTIEKi0c8SFMxS3zEr/EgEgZpr7BEJ5P1EC7J
	 9sV+DSwg6MVcJ97EnyBBmNyU5Ce7hX7M5b++faeKYJBGoLMw8oFdOGKmKKsWI7cV/K
	 Cb4yZYo0zbWhum4pHefwb5b2+uumrEoi+PSFHwCeONBx4vyD13D8BObOn8EhCEOUl+
	 ydGBvJubjxyMFReiek02TtBVwAiS6bSxgX2O2i9MOIGH29DBJ0/WmSgXfmzubKykTP
	 ALNqUTxI1zlTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91265CDD1D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746755358.15922.345755846348882853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9670e340bcb12d11f42b3679d7f5f67abcce6461db5d5c5c11cbcde805ece9
Date: Fri, 27 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727467553
