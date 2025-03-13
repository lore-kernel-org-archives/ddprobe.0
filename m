Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475A81E8325
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741864136; cv=none; b=Kkz7swJaW9g0pI49C8GhEImTqaqukZ4fSJDeY7ViqzAVU4gY1bj6aOSIn2yVcW7qtSHrHtFGOPMPFIDG4xhukd09Vyv1048uyBLLY+y29Uc/MQynpNGnUO7Dq0SNecrNLzlVbNbTnCIu6kqP+JAm0BIap2HMZSANem1BwhxoqwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741864136; c=relaxed/simple;
	bh=0UxZdJNzhho4MItJ+Lyr+6oCtkQ6dZUi/Ij0NIraONg=;
	h=To:Subject:From:Message-Id:Date; b=uXG8GQlufFkIqoHJNv5jXu9glAKZt3kUyqmM5IlXEazvxjZimq48DVhKuQ7dTDqcg3VAlREAEdhuNS34yNTTIal07AZjzexxSEMhL4JuSMjsmsnxKw7B1mqO5QBbfJYqIapTcObhZdJpi0A2jDrGq2Xq1V0Zp9xhMhADEGtcaTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ho3f4n4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ho3f4n4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AEBC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741864133;
	bh=0UxZdJNzhho4MItJ+Lyr+6oCtkQ6dZUi/Ij0NIraONg=;
	h=To:Subject:From:Date:From;
	b=Ho3f4n4REKZ+lh5FAcJxguo+uOTya2OTEVwkZwyNPHvyDaKOX+DsAixjyf0LOy0gW
	 x0B/as3O49A+yW/FoN9bLOCa7Wiqq0M8iYssamy6NffkdLySQUKAdjSkfGInRQyWpB
	 OD0KOXnM0rr4ynxRtNfFlp97yeze5FQWwCb/m9iuh2j3Qr2kqjqmHZRlcFBWFv7A+U
	 hk4qUgL7WIxWpU109Fu4h8mjxfUUqFvsH970n5g7PRxqn10yNJAmPwFrfori1AtQwq
	 q6/l6e5zJvqiYpflg30HPgqKfi1Ryi5Gqp2B9ng/fOMJVypdn8G/w7Y75uMqjKxW3L
	 3dl/vusIPKdpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B504C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174186413362.13990.1867531099716819693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42acb933b99c93faa5ae3725e3f1a334e584899be3103009f263c7fa8a822d56
Date: Thu, 13 Mar 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741864133
