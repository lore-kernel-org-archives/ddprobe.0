Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AAA53E22
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719555863; cv=none; b=RP1ECiBywxJyg6K1DLbovcr+pilZ2Qwl7QRQeF/pFx0iJtqHFQ6LbyQvSaipYNRMlsTNYVb5hwgMGUp4y/8202QtSKei3IuYMskiBNEj46nTC1eyDXsT9T0VWh4/l9ClAPOI5J+aTP+CbYcx7ENYhzx5OquGecse6MBCVHp/+ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719555863; c=relaxed/simple;
	bh=U0w76vbguWUca5+pr6hw5n9CbIQTeIZAgDdCkAKyQe0=;
	h=To:Subject:From:Message-Id:Date; b=OyeJdstNSVmNyJJ+psMLgWEfc1WhhtkOiWWZXDq3NpQHbOUnjDk0F77/kGsFGiGqLb3SEku5pMsjAs/PT2Wxzl5eBNL6Zxe7GvehMH+XouQz4SwcpeuZA+1KdD9pOetdzgrTti6S11GjvUvIv1tqFudkzrfPHkuq5RQLpzjl47M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G129pkm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G129pkm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AE9C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719555862;
	bh=U0w76vbguWUca5+pr6hw5n9CbIQTeIZAgDdCkAKyQe0=;
	h=To:Subject:From:Date:From;
	b=G129pkm5+6pEW3zx+x5CnrvP6YYgLwxblpEkJfmotV2huBPeLThZbJ3K8ZeYi6GFf
	 Ixh6r/P2SrkKqfi5FmKgFjN11bJEwqEA9jrJMZs8/G4CzyBzFxn/uR7WAsm5dGa3Tk
	 uZBKSH3CVhgK62AKQxu6bPtZ4E1mskqP7dA0pemzcRGn0SPZV0rlAmPLkRMpNhBmob
	 1qqx2U3SAUTyh7sX9WPnBhEqlMmEFFofE6LLSBEBsVzc/zqwq8fbMZfxxv+JDc2Kdz
	 R4yLwe5+G3ZpG1eJgIfJnubaHWIoQ9Y9dSYflCd9+5fMU64xonS7AqT8avWF3AlSLw
	 gG17pJthQTB+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3097C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955586278.2095.4675447094559865964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af16d036f9c53aadda0e823c128bfc7df3f8e53d27f3c0b84a143fd9045d2d1
Date: Fri, 28 Jun 2024 06:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719555862
