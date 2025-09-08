Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DB61C07C4
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757342994; cv=none; b=E4RF1MfEoTKj9dwQaNLYiNcN+Vg17DzdJIrgFumpJz5wdYZmZvCbRZw0c2qwnturbKYU7gNXQRTVGjGotpLK/FnHkOtz5y5Zg7aPOFtt6YIaURofiwIDloTtgVJKRclfI+bmH+rxv0vnLeVVqVxeoTlnEF8yVYh9aq7mJ0zQX4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757342994; c=relaxed/simple;
	bh=NJ36CuUKle6TP9Jz30rzHMuXsa0RtgwsBAVyBoe9ICk=;
	h=To:Subject:From:Message-Id:Date; b=qzJuVJ6cUY1uzIi8XK1Ztig1smcoKl5rJ8qAKOdavM5HXDd0EMvuY6n4qMkAoB+LTrvzZjzQzH2XPhLwagc9GilH1mJN96K8nPKx99ruLsdYaKzBTznR2z7cIXp5ndIK4UNPG4I/tA4P9vUFAXENyuHmjUZ7gjKL6IMuxy8sqUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGhhEljq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGhhEljq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE18C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757342993;
	bh=NJ36CuUKle6TP9Jz30rzHMuXsa0RtgwsBAVyBoe9ICk=;
	h=To:Subject:From:Date:From;
	b=CGhhEljqc/xBq5N7ttg9U0ULQs4gtz5Yf7HP/o77uS5tVsLoaVI3g8aGpZvR1fYUv
	 U90JyxAjXPzmNnQUn+Mkjzrivsz3O/93Qk45XD/CkOqQEAn9kcHeV1jZt5u6aD6ov2
	 ZjwA4LLRQsF9v3fe5BjjOPFkRtxOC24ZX/WijPPl9i31jW9V9D8nD3HxK3BMl8475b
	 sMajLvLZs+FL83NK6df9ipXqKPlcLsWLdd2pU0hcaq1hmpZM/jn2+BBq/s8CfCely5
	 tYVYXqYN0qt8rkeBIPzj7q5g0qcqm84wVWFm1NdljMMYk0OtVeMsvK64EVrgfx0MyU
	 RnobSrGvsxHrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC8CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734299358.28575.6743550011749781909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4756380f32cd4cab4a50ad49c60090001772355e30d5ca99092b282365d12d2b
Date: Mon, 08 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757342993
