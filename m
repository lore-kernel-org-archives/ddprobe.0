Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3305936829D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785427834; cv=none; b=b6t+9O/0AnSw67eLg+n+ZpiHx2KgburwBvhJlJ6W4rBG8ElSnCoRf9tCpZNSpAZOi5AbEe6HqbjklSlVrFK4vqDA2CzbhGvZR7HjBTMKSe8bphOciim+FWjVisZMTlg3p/ppjiSfXr0QfiN9HUQmijZCeNfTG8d+6j3kpy8E1Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785427834; c=relaxed/simple;
	bh=E4l+/QcNNa2gS/ta1Vh5g0VNnMKit5I9aojRr9LWqQM=;
	h=To:Subject:From:Message-Id:Date; b=BrbGZlGdPfwk9Rqx7hZ8xWZsSB+vqZPjoysQzxQPITdQxrNYN9pTOdhxH3sAMvmpWq/1tv6Vw0JcfLfLeQTIXONwPTNC+hcX9X+GUh741oAw+vqbofdBStB0b8yBI7fHQTyzdMqJTWngvZWil/KTVGrV242ttYUt1T1gA+5mpUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCA2vN9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCA2vN9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD60CC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785427833;
	bh=E4l+/QcNNa2gS/ta1Vh5g0VNnMKit5I9aojRr9LWqQM=;
	h=To:Subject:From:Date:From;
	b=cCA2vN9boIvQeSmTd0t6U0T+vYs6ctzSVmH8DtNxwcSxdiSCpa2rdKrZSvekmdZ1G
	 pGr6GXzS2GuJHSKdXDQBa40GvwtR7+/xMvSIn1cz9cjohDC1XMxqcvYkSuhNl8f+AB
	 X6/bw8QVbUqqJAMJ4zwBZxv+LdHDTf3PAY8KHy/Y7QeER59+LefovLQhssSn6laVsW
	 xbvbHenk+EUUcnJJWDpev6xWM6LLJQuceCy6Xrtio7wxSnCJ/TqP5fo1tttIQRMDj0
	 IbeEtW2i0H0ZBb24w4YF/rQ4pdkT8YrFdGHLU25SrVyTIwUpRApShQ7SQGot6HQGTW
	 ecwjd+FbW7j8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4410C55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542783372.9925.2743015490651369158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab13e7697336c8d219c95b14e57439d1ebd33b5c5a6599890595932c0bbb03ee
Date: Thu, 30 Jul 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785427833
