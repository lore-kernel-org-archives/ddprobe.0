Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8771ADC93
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745227794; cv=none; b=M+gYbvKH5MbhC/AufhW0L6HJAlNleH6S8e2sNLUaz62UuNTQ3jZ3C1u0AEahH3DliBgmRYL0rCuvP+rozLt4LwXud3BK09fvl0w1bJE+zmka/3+Eo25u1yovBKWljMwm/PMqtXqJUz7aZuNWQJ7F1PpQVj+rq9SAxHaUKeLOYwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745227794; c=relaxed/simple;
	bh=v4vgGWgj7XMlblx7LI9jlWy8bCbsvyF3mRbaq5OtcCw=;
	h=To:Subject:From:Message-Id:Date; b=BQR56k/Hfu//T6qzmbIdpDGrZwfus/DEJYBM0se/3CEPTZj7RlYahl5Kdsw08TIPQ3g46RvXd0g+T2IHjGMssSPD0anZDEM7+oihB7RJvArJfj1pa9RGXTBuitd2C9bEm8q62nzvl53QTYGRjmSZaKap4IlZXK6YffDL9dSTDEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frtfPPhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frtfPPhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E4BC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745227793;
	bh=v4vgGWgj7XMlblx7LI9jlWy8bCbsvyF3mRbaq5OtcCw=;
	h=To:Subject:From:Date:From;
	b=frtfPPhOQZm9DsDGn+hzbpB8ZxjNUBvP+5cI3nL8ShdRKKDiT21hxqoOXY99fMMIU
	 gEJX5yJGveeVo+mKNDgASAe7gLG8EDvNuobq2Pz0ZVUciHfPRlIRDNDP/BPHGPs0Ys
	 pwhJGnAnJZq6AV+TtJ3ufyOaaO5tXKa5K2BxA+T94SqLqBczPow0b7R1eGjWJfjiOs
	 buZv4QxYtSTRrSRZY4vjanGC+PZbgmbU90v+1aQAlC/VsyOREQGg1sWlPUbk7ApuRX
	 tA7caLNqzL4V9KbJw7DGvPBEiO9yrKpeGvSAe6jJf78Rq/4ILqRIuBx6W+UlR46sYI
	 WIkZ/iUZyB/sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E3EC369D3
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522779359.18275.4960959955432861601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3124c2c481f05247dc173183b09f304c16a0fdccf91ce8e49f604548c8a8410a
Date: Mon, 21 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745227793
