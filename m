Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476FD38C2A7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787850634; cv=none; b=Upb4qA+R4XbVUTjf3di6z09RzYD4738BqBbsRANPWILx4leZtSe1BczNXedQb0h2fW4dmTPltzHtIyntCSYPiLc00vwTrwhzuc4mlKdRGL+Cs9SOhSs8lgoO0MQ5VIhrcNiIriLxHAaSGWWtMX1uDgpAz+mf9nf1BQwPl2RIJv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787850634; c=relaxed/simple;
	bh=T++qT0sUs5Ux4wK0GJ7y5u1i28JAyHbFYAQzGhIHh1c=;
	h=To:Subject:From:Message-Id:Date; b=TIRw1EOV+3xWMPkGczSfAU6E6MUj0DEmAICzqDzFqzAXJaPRt/J3/wQ+31UNZAhTNj6D/S9hgiF6icz27y0fRjJgFQfsSjLP62NKISzCE4wycYnD8/eE2tLW6GYbxx0OAYnrujJrObwLDrH6WaFzS9M8TOXnC7wbj/dvlZsYWd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAfIY1lL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAfIY1lL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC995C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787850633;
	bh=T++qT0sUs5Ux4wK0GJ7y5u1i28JAyHbFYAQzGhIHh1c=;
	h=To:Subject:From:Date:From;
	b=QAfIY1lLLnQnSGb2baTIQctTrQQgpavhVtUlOCEd2IMX/kN0Ht0rp2gKmGIQ9MPLA
	 hgYT1V2ZFwzmSPfyxzjUm77KCL+ZbsF9x3//4sK0B6PjUv7tgaOa7Xg2+e+xZg6FkD
	 Wx68vfa3T/jyJwMLMtrn8UN1a6XFB8Z7qsHa7bWNzevG3rlAosGGa6nP15SU666pOO
	 BEsYCS1TPmU2x4vPtXPkKb0WyM6SW2b5QUgdxF9lxsYA8rAboafrySIezT6FePOZeJ
	 XFi+ncaeh9BrB7CoNu2E/JTXATHnJE8koKdv6HR9zIg2UIJHeaCBRe3A22ZuEY7DDA
	 9gANCqarfkxIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1AEC61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785063368.17850.12984611374407485926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2710c6fe2117f6a85ac6f6edbc36249de4ff1b3343a1174fffd65f7f6eab07
Date: Thu, 27 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787850633
