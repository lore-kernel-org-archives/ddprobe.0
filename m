Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20530302747
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761218994; cv=none; b=tEQrD1DDYK2OOnobaH1DdpUBRVWqoSKV/KndZzoP/BhKjj/KVWmmkUBv2J6pW7dMIT3aqjjLCOUIDtT5o18VJi2fEBrsMrwP6KLn02MvkA+xhPIgACcpY4clwQOkBBqNgdk0HXdaq3iQqolFYVJlKZdqAGfBGFxVYBx8vuokAbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761218994; c=relaxed/simple;
	bh=jqqL0zkGcfdZzB947zjQ6tDB3vtLR7GeXofkOIoTvbU=;
	h=To:Subject:From:Message-Id:Date; b=kHVwJ93tIXugUqKkL6TCG0EvTiUgSL9aPRyK9M03AMnJT/OMuIuRhK1guR6YC/hj0i8xMm/e1HsG9BJn8caOoVJHai/qT71YkTvhi1bTKEo6S0tSTLGopKQUqt6UQOm6Jhs1UeRXZaEmD6Dwi3ea4PwWY2a8chKV3S376K1n8ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrfdE8yK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrfdE8yK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A31C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761218993;
	bh=jqqL0zkGcfdZzB947zjQ6tDB3vtLR7GeXofkOIoTvbU=;
	h=To:Subject:From:Date:From;
	b=FrfdE8yKSf9KCzHu7Ktmlzc6eWlp7XiMpI94MG/4s0vzuosJtP7UKIObZ8abd8Cvl
	 UWCb8Z1tE2Zw/5ppIXOmivm3y549gXib2WZt3+deVdmN5XXFKG7sx870MI+U7+BlTn
	 2yZtyl/eEPiHYNXIhw7jPqbkhI02v6OKKleESgz8CzpioaT36mJ4wCUS0M4hawyHV/
	 ArUWP+phDyivwu5HQl0SGI0B5N5JsQU0Z2iekTxv6tdt4Jka6PsyrQX9IQaDm97i4E
	 RbaN5Yp2oveif9UvCjs9eBbI98ScLThUKAD9yD31bwmU9vKTbUlEixnwOB0YIquVfe
	 MuwgYdo59P/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92074CCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121899358.4159.17088097174374911743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ced279c370a458c923e2889c5210fceeb83417228d3431fc2540e0936ce7563
Date: Thu, 23 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761218993
