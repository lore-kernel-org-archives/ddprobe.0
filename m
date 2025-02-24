Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7681448E3
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 05:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740376136; cv=none; b=bcRydPPZAXfFIra1h3iY7+RI1tvMSpTpzNy4H0QecCvSSI2yPiBCQBTyGGR5ejdux+J+UO9QoBy+uipqilkaYRjA/0CQJfXPCUNyeBh3Y7A48USmrhtTwP7GlvY9ODROJdA2yhEvyrvq4ucoObraOYCzLhTFaPHFEufrXAhRAro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740376136; c=relaxed/simple;
	bh=ijYx3v6aHD5Z75hcqbCIs26TdAMthFOyWrytf4iZ+S8=;
	h=To:Subject:From:Message-Id:Date; b=qbfT6ntyftx6vzY3ZY0NCxh65rL5MlYxiyRIyQpxf1vt5mU8YhnRc6dSmzDVyZO8TVmNksfMb3p3rrAmWnPYSLRo9kSn5m/GuwK0QF0WdYOo3tyfLCYSwqOlnvA+9ZcH42lszg9NRRzUQdIKL5fG92XWq/4xbSXQxybo7KAYCbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMOrtahA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMOrtahA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AD1C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 05:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740376133;
	bh=ijYx3v6aHD5Z75hcqbCIs26TdAMthFOyWrytf4iZ+S8=;
	h=To:Subject:From:Date:From;
	b=vMOrtahAjb8A/JBkD2HDEFYTWSUQDXZ90uQN/7NBZfwhlxJZ+7Cfz6gVIoBGJd3Zv
	 umDA2gBu3fJmSt0fKvX4E4duhy9/7APmUMTT4bQvwplQBhVsFh+zqpgbwCXGFl2byp
	 8VmbN3ONL87ZtHWGGp699mrNIKRVC879w8X/SUfcIzhXgI+M30wP+58psOB7aYJJVa
	 Invx7IwnFE9WHup0K0U1Mh0oQdGGMszfe+dMUn7wz3ajA+M4/+Syc+rNwZnRHSTJGX
	 jdBVLLkJd7endz4btl3FeXtCyjJNuHYQqEG6BWKHBmbgh9FwuB5xkS+s8tCNaRtQYY
	 cV8o7Zc+hawRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C01C021B3
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 05:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174037613359.21990.16328750872776898785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9899e391f6220030c5eb120f0352b20e5b38a65f2cec8fe39a89bc1a4435473b
Date: Mon, 24 Feb 2025 05:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740376133
