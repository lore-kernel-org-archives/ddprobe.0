Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC403FD4
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 00:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713228563; cv=none; b=q2FPspo+pBf9/++EH72GXziJcVgdoAKNXZz8AelIxTlFqr9g5k590QxEWTWvibTUAf0gdFRSxnUV+RgxvK9WbrjGTXYJkxo+048Ota5FV4JTW+A4lEGUbzXpqEUwf8eGAw95hMxf5yHG4vjK4iuFWYPMpxHuym8KKTN1zdEGvh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713228563; c=relaxed/simple;
	bh=iXX8aBTXjHXZtnCPzAh0AF9xuypYX3hxI6skYv/Rge8=;
	h=To:Subject:From:Message-Id:Date; b=bCjz1bVDNHbH6tTMg2UCY30UKkOGGatqHdhj9ldwseIIbsLwrkYqEYR5AiQSxw+DQP9XiQFeG21GOyTUbgJdNU0gFrCsuRwwcweQW+FORZAaTsFuyvfXsImbD0dh4vm4BsumZ/sEqP1mXGa4g7ll1w4OiGpKltN0srHmzD/dBG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsCDxkSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsCDxkSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF71C113CC
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 00:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713228562;
	bh=iXX8aBTXjHXZtnCPzAh0AF9xuypYX3hxI6skYv/Rge8=;
	h=To:Subject:From:Date:From;
	b=jsCDxkSEeMkbDXFZ2vRAUKYKML1mWNwcvYq1hpX/qsyzr3JGZBbr1ksl6Oz+CLGqo
	 LeI1HwhOBCXH3KN7B4PfXIHsg8Nv2KSB46X81eM2W4DeVr09dGZLtVLf5jICZshnxY
	 EEw4qpf0eyxer97taS/n5XKtIaVHrOQ0UfKczBgRqzTcfwgLGTYWT4mTlgk7wPb/D+
	 E3/l6ZoJnQ1AuJreSXTJHHfGkSGuj/dYcbjDqr0QBO8Edsi6aRbidrCUpDj6wV5Qdh
	 II9PDNg34GlRIz700pmZOBh1A4SNmF2DgKekO0+kxJXAZWIMKDferSR72f6tOMQA++
	 SIxpWcaql2/zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EEAC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 00:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171322856275.11431.11815535884628513675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccb11465ca1baa6db5ac20d318099638cba70b66e4edcadbb247a7cd9ac1c1c6
Date: Tue, 16 Apr 2024 00:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713228562
