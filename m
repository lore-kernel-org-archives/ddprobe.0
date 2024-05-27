Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CBB61FC8
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716824663; cv=none; b=mYou6sp1hmCY3xPRXceTFvODT1G4UvD19oxi0ub39Os9/8Ku7qWK2+ePLxHn/fCK9uC0QTK0z2C4IvJtv762Jaj5it6suQLVYEErEF/Tje6toXpXfi3LcIYnV21CDdpwjV/B1ttiszRwSqmUDUL8z+hW3cuD6LAUsCXojCRmWoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716824663; c=relaxed/simple;
	bh=yBbpQmf2wVt4+IorYDHuKySzjMu21xNvIexj85U94Tk=;
	h=To:Subject:From:Message-Id:Date; b=almGl05Cri5jmX321rYasf2GE6a5/ED50U2ma5IW+fUZ3Gjzq8efQUsL0vXu+7VEohqx4X81OFsgq3gXh6qn4CFSmeQO3GArE9wsmxgKxa12j6Y9wahS3V0vmT3ygE+HhvzC/6EWbEbRx27Rqb/xbnH7eM2SYry6S9/3jEwr6hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0NoXPvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0NoXPvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D206AC32781
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716824662;
	bh=yBbpQmf2wVt4+IorYDHuKySzjMu21xNvIexj85U94Tk=;
	h=To:Subject:From:Date:From;
	b=V0NoXPvHFfVGK3rurGzM4hsk9JyItvH2U5r0BTXkBYbA/Nx1xd/0RWcHmw22Frqt+
	 l5dEsJONrFL7A+/6j+TFhEfznuFLZgvHKQhHUtR6BJBWy//McwXwIv6fCatUcxLGm2
	 f1u9djGzWc540IGnnGvTEYhMJ9tnQul+zlaAmpAXrDu5Z2xhvUCxsYS2cObXE/qmm3
	 fRCARO3rQXIc+aCuJKolxpZfnZj+SjtB8JviHss9od1QTwwqnZZCxOCo5oCVzP858g
	 ObRn7rehQEbcwVaKlvjkubHR6004IVDDSG1AJHhqFJq21tvQSuxMpixs9x+kSZqKWj
	 eb4JLrVaUVseA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05CCC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682466277.8108.17054297624913927494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55b8c9aad80385b152fbece2e2a9e93d1d6bd5e60e2f6903764c57edbaf918b8
Date: Mon, 27 May 2024 15:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716824662
