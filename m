Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193301448F2
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732958754; cv=none; b=lzexjfUFaxi1VcKcBdPHLjiZoYlDzqh63Msj19sBz2LuQ4IFFqGv84aNLCyjbdYYg4UUgHiG4yWJ8G5iuuyd8+M51lXY+9aMC2D4CoGw+Z6ytMC5iGiF8PN+FVHNCzXkJaNS9UxtlcY9yah3IdSfWRw7D/9ZVvQrEWxkhwQsBis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732958754; c=relaxed/simple;
	bh=I30GOU8aMmLkkif8FPAHAg7n7XCcm/kLY6qmd6YIQcQ=;
	h=To:Subject:From:Message-Id:Date; b=AWM8XUs+f3YsJeGuNDp423oXgXmSd0JraVmve2nsOrusyarBTLF3o8K6nNF53pZSklNSCvFvDbjQozvFqAq17uDPjvrTv7TtIBr04jTCG9644YRVy2MaLVBGae78ikwXtC2p4kropL4m16jb5GPLKSc6AruOa+VB0fv+RnA9aUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4QUjtAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4QUjtAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33CDC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732958753;
	bh=I30GOU8aMmLkkif8FPAHAg7n7XCcm/kLY6qmd6YIQcQ=;
	h=To:Subject:From:Date:From;
	b=A4QUjtAh21ZWHz6zYoEf2Mj/6dAHItFTHBqAvsUI5iSZO++sfR+l9N9Vdg9lqtW18
	 2fb4sXr2Fwe4V4Ljyqfjzs0pJq1mQ11ibD/cMAusoqm6s74XNLNWtKPno9QYmW2jBc
	 P5llRIMFt11Qp1UBh4q2LEbUfEmgG0Ly+DAv+SIKgehTGS+dIergMXbgpiAyVGlHQc
	 jGavDWZufbLxZVlAfUKMzu2Ec+dTo2pr5Zt3akrrT+1aDC47q8ZErUYrS/XBoDDu6g
	 9YZAKePOtV58gt/Yr5aeoJzyU7fxLuqy4y9Cfp/HFVVcsedVMfllSqz4/nsf8nmtgk
	 SXXkG6PLuxzJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92709D735F8
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295875359.2969.7245324102301275208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c217126295fb3c555c226f33c2924d1e37913c4d62b3d618326071771dc7e84d
Date: Sat, 30 Nov 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732958753
