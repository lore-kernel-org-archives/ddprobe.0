Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B98BE6C
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752161394; cv=none; b=VyosD5QYCLc/wcxAQMismXz5/224I+1uWpbzOKTgkIdphTZjsPiQzixPWrbfKuXkVLzzTyQOMLRq8G6xxIGEsic91WYzOKP+FT3K4Pe7/MNCAmfblesOanml3w8I4BnXGoQVaPscEdW31ifpppKm8cn71R8aO6p5hXZxzREPyRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752161394; c=relaxed/simple;
	bh=Ek5vXcQrZ9lfz+1SRn/eNZCk+IpXC7b05fADkeI0gJE=;
	h=To:Subject:From:Message-Id:Date; b=GBPalGngI2w+bzar0uu+BiT0d9TQIC7j8mlsVO3PsQYBla9X99fjwPQtD7uyVVaLhn5y4fdDOz1n/+kQO/yLCEsOcSVlRcVedRjXtd8taowcUZVEWw9Nt55MYkijNVxAr3xHZwt76X/DI1P3ZHBE5tAnlaXvFHr1X9HDMYcW3Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7wjBQeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7wjBQeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F9BC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752161393;
	bh=Ek5vXcQrZ9lfz+1SRn/eNZCk+IpXC7b05fADkeI0gJE=;
	h=To:Subject:From:Date:From;
	b=i7wjBQeKc23Sxe0orF0zguPPMCvcvvGa+Q7uJI/ixPByEqABtZLbKppA4kKv9qbim
	 9uaZcJMXyXxp6ybQTKnEq0iqke8piyE2+JAyUPs67jvCIT8MOO59jREuR1I7d7FDsr
	 OQHjIuEizPjurBx5ninVoi8MRh4xYnQIyLqP+5gXC8G3BTebFe5C8Sak5bcBs6XVQE
	 Wk7C1o5jJ0h3AZ/PW1jLYRii1fz8oAJEuqCpMOfX/XzyO/wQj6HZq3wEqyDs4Dr9aZ
	 9Px4H6gE6Umhfd1icB0jnaj17ok6TE5mJsqthRPfPWyLnwdtcdDaCPyLAc7tyeW5UI
	 lw2idC2W08VUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCABC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216139358.6496.8170936195265905100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f93951ca73e20663bb4f9c4f9ec817b6389a6ae76544ec339a3b22b274d649
Date: Thu, 10 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752161393
