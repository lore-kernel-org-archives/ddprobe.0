Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB5B4A2F
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717272923; cv=none; b=hoRE39MCqdV/XSPRAPvzyGHWDO7MgxdKF6TCCkCEmFibM+qbnZ/U+Ai5tBm0ANBiaLH/4IwF2Jaj4F6I4T+16GAZCc1sZjcL0sE3bf4U3TXwvWI3wQMyXGwVLDJdSH/qzU3Ree7JtYyWE6XH9l5ydIdRRQt397Sgp0xLNSl+iF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717272923; c=relaxed/simple;
	bh=JVe5jEo6L/hAWz5nvHX6MUVAoD1vi0v4JFkIkwBj+B0=;
	h=To:Subject:From:Message-Id:Date; b=pm8BmkCO2jxBgLOfNHIvCN1aICxsh270oEdhX9IZX+hLmKQX2I2I1IJp6LnGzmwYYwPhhwvgGWYgWpif9LzmfoQAVWD/lID/QzR4wJjTDYke0n3mM00jx/i9lRX7RVGnM1YOtDICYf6LemjPA/Cpv8sH8bLlDESXyqdFrcZ/zrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hvr4b1L4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hvr4b1L4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58E1C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717272922;
	bh=JVe5jEo6L/hAWz5nvHX6MUVAoD1vi0v4JFkIkwBj+B0=;
	h=To:Subject:From:Date:From;
	b=Hvr4b1L4mnI2qZGyKMNasPTUdtO/h7/IewY89xtGtD1X0i9JNpRuJmOGQvt59sPb/
	 LPtblmlFpVU9qtGgMEAnxgwdzVJG90ihCQl+O1JmD1OENBWvUt8l27MR1suuaJuoMS
	 MMoNWdN9CQA9TSNF9tdHFyx1BxyqPu2J6ORJMhbm6wx6JRzMLI5nkOGaiN8wnq2huy
	 P4V+/7yaJGStZ1pApB5tRTnVGS/zk+Xp7uwyWeW+NMlGZrhQgbAqnqEzBhZId5/gS1
	 FL0vQTf5xBERFgJ/gNZmW/lo8Lf+/WYILFy0hTqgRY93O65mnv+PTiWmlYRVQ1hCjN
	 EvRfFme6FeoeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF70C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727292277.18606.7742416227450957601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7387bf9bec5ed8e6a0b28b8bebf103c2d21106c000375d65127f4d73a9a459fc
Date: Sat, 01 Jun 2024 20:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717272922
