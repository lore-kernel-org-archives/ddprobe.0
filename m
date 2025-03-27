Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D36A20E315
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743093595; cv=none; b=XfA0B10yI4xVRSBvA8Yq1vE3+7yhBqKIT0ga9vekmFRgSzRxVRTuA8yYPW/J3T3VtDbftyfG+90PYElM61cZMmYSNmSwFTZwxF3KPWlZWh3KTFYaSO0S2E7zGptqRIvzNIV5S8e+yJj7/mZzoabbdJcImaKktPRxhig4xqys+g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743093595; c=relaxed/simple;
	bh=b9i5CGCXFS8K7TqtHASCjhI0+vi4qr/F1rLTiwTQXIk=;
	h=To:Subject:From:Message-Id:Date; b=G6Vn3fMeicrsqhgIpxjAkq4qUFB/Q10Dp8C6SjtY5Jn706mb413e1yF2Y0vULkIlbGLtwOKtqzBf5yP+ZPM+vCpHuvkn/7gmSzVPnjQyMXUnzA5VjO2pUB7sQaU54dLazEiZ+qlLXnWapNmZiLlViooXRBeCUwW2H6mMCRPOAgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUkp+S7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUkp+S7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12ABC4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743093593;
	bh=b9i5CGCXFS8K7TqtHASCjhI0+vi4qr/F1rLTiwTQXIk=;
	h=To:Subject:From:Date:From;
	b=mUkp+S7WngSuuZj4i7NHOJJg2B8QFyLHWIP2Sz/HV8bSB7z4/L78tIhZ3vPcMErrt
	 E5lfM9GpUt9LCGGexoVIfvb8qF2QY4f/EpLYPyaa9pbUdV6TBmoLEfQy2+jjzoKgTm
	 NNgNXi5gKb6wBPjyI2XAtCQkOzjwrO2aVXxOU8nxXL3qeWd6+WPY+ajNvDO6bKygEK
	 R74Cp0bw2/g+gY+OU1XKTuLLtWDxBwt7oVo4nLZ1ntKQ0nwKUovVm3vvBc63FQluAi
	 ZjNsJvw3J7gn3tV/oztVNDMzJ6BF7XdlJmsPzcCFoPekAO0jKWhEvgWYB2MJ5XZXLJ
	 9UWy3In8PQeQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B551C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174309359362.344.15439985026773836993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c548b899b574bbec4327fa31885f55d91a21c57df8350f465ef03927125f764
Date: Thu, 27 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743093593
