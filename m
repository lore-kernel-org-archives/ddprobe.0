Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392682D023
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747608594; cv=none; b=NCCJPa7sA7+fNdsH6h3UeWyRPl+oHssbjazxKvSF9m1O837cj78SDtF67hjguh0C+SAn+XpHnkRBwIYoRxMIkRkdeQ6pB0BvuFnHEUwEbBUiP5E0UvOtdDdsB/xi8Lqvil8IDsnWWMZ2ouDKYScu+unZqPTeicqWAdoghazpgtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747608594; c=relaxed/simple;
	bh=MJjggUOd9B6Zvj/IZ3A5IKuIwS9x496YbFPQMt5jG8Q=;
	h=To:Subject:From:Message-Id:Date; b=Q6fDc+Ntqy6LUB7NzlQ0HwYgapt0I63Tg7HzOJ67x5VQt+vneEHXd/JcCw6SKxzqr42va/SnmiEF3yfndn7Hr5EQoGMeVLdu30vIsCwkkSbLHbmtxGq2pwAR0IjU90n6aVI3zYnUL9WMDUzIHsBqFHeEnxw3KhJ+LL38zH6mXd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWvyvvxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWvyvvxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A565BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747608593;
	bh=MJjggUOd9B6Zvj/IZ3A5IKuIwS9x496YbFPQMt5jG8Q=;
	h=To:Subject:From:Date:From;
	b=tWvyvvxhyI5fyDGDaJuyQG5dhfOJ6Co1nPWl43KiFBBZEXKDXYjNtoMILHD5CqDPw
	 XZwlitLUoGqSN89lYkYfO4nHYPaRznqP1rV1+8A9aobeUs3IRpy++YaY9TPelbGgXh
	 9OJXjJ4AAAtWzJulELS+7dJTG7UIKP4leEnM9GEKJ7syw2z3OcZjhWcnHf4GVfvcKI
	 gUnG0rMj1RjnSENIT7L5N2W1X1B63W/I4UbV7FYF29R/jEQszyrAqtmzuXSZSWbpyq
	 sBKinejNKFsE4NuI3Ke/9O7NHOeBmQ/eiBHnYM/tyo4gEtSeOctoHIEM6Mn0Y2f7H4
	 FAztEz01J7ZLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9279CC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760859357.14465.14461517142296095935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50db934e833da372ee04ec073d0ec10a12f828cfa330e88c2513fd947087cdb
Date: Sun, 18 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747608593
