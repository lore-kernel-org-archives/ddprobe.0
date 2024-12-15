Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAE327715
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734255954; cv=none; b=QlyYeU6N1EqTfu+sluxLCEMBuO9K4Y9V+s2AvjVqKv1XtSA5yYzv0Zs7917cKfMd4n3Bv5yLvqL6Wvq+C01akg7MSuC8GQVXBimK+/hXr4wyYmQbYpJyny/cUvkAmVmkZYEARfKLVUpmqV0q6SLoHc2W5PX8wKELgp+EMS+lFQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734255954; c=relaxed/simple;
	bh=6BfItEb/jeIh6ewQoXz04SncxEIvfAVJ1jZl1Jo7454=;
	h=To:Subject:From:Message-Id:Date; b=i9wdzyYFq+Oz/SGmfQ7LgzV1eR3CAYQpDIClE0cEWfdPntaobkWm+9xcAKfhr7Wa5y2961ATHhquSkfgNTw8yE2ud+xXsJx82mlUPWmqleJY0ddVQWH0plSd2E6XTd/SP9vSUOkjwmrzKqAioTB+7ndBxsuOKDF4ZLuEvKUJU5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/8t/+li; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/8t/+li"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ED9C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734255953;
	bh=6BfItEb/jeIh6ewQoXz04SncxEIvfAVJ1jZl1Jo7454=;
	h=To:Subject:From:Date:From;
	b=D/8t/+li5YGc+oAg45Q6i6i6yPshwP3zP7O/RC68LJ2tmcqKDwj5KPqcu/9OZyh1P
	 w2pZf46gj4BAVT6wiQJ9sEjeofgQfV6DdqVXBEyHhj4bpipRYQaE22a7MF83Wh4YPK
	 tsgambYKixxT2Ss6C5BEW7dgyIMpZYIubsOH0UYjeLmROfIgWNetJP8Qq7twfTgwh9
	 d5G/5SKoOIq41Sav8rZ23KxNFFFyIuUeGhagK4In5bd+6MofFiBHtQdQaImdWrqEK3
	 8ieg/p7uW0AP+0kDK2fS0CsOR2Y3eys5GpVPrgLP+k2GS2F3MSzxXdjE+BmLdpoLdL
	 kIRfqI9fnAGuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9331FE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173425595358.23547.3259515673363386144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1691d5302fad11115ca8e325617f4aa584e3ba0d818f3f2478ffef2170c362f9
Date: Sun, 15 Dec 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734255953
