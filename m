Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D69F4908B7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785024034; cv=none; b=WcIT0bRoqaAy7vbmdfPJhe9hps91c3jxXo4XMKEOCcLGBFExU9fF/TEyYY2fi9fDeNZuCVfOXIfov3ETccT8qaQNOJNra1JnJCf8+PfRG7UPyGUW0KTe+X/lpw1yPGfjYZIzVF+PpBJQ4vvkNap3fUf1/1/DSUg3ea01UWe07pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785024034; c=relaxed/simple;
	bh=m7Vm+DHGx838w1/toIaQ+qInK5fWXk3JMzH3aaKqxa0=;
	h=To:Subject:From:Message-Id:Date; b=QBDbyyZEhaMECiBl5w49pGg9nzHWhqjLGsXrHiRoQTjXH54QSzj7hsinhkTn8Wt6qOe9fCpwmU9Qn8WQiUpw6bgAXfKgqX9XSCSf4U/7z3Fw2Vg/UyAzNu2f75cLlD39w19zmv1MK/wmlJBPmGYJw5Ky/cmpfz1aYGB2WbELnug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSd6otew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSd6otew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC00C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785024033;
	bh=m7Vm+DHGx838w1/toIaQ+qInK5fWXk3JMzH3aaKqxa0=;
	h=To:Subject:From:Date:From;
	b=oSd6otewmpaf5YyFf4ZIUVBHF90JibYHKopNwFI6Q+0RO8mVkeFZjwMFT2RBRwGaA
	 luezN2JTOeq1FUy3pi7xFWee8imABqJ9oBpaKaILlTROYw+eWWKEOlqrGJm20YxFPf
	 IwQY6LO96A66wYUf+tbCFziwAomJ+A6ShkqWeVPi8+hP1WFWJbDoOO3f8lyCj+hsjL
	 0enGpbwBbBrUGyA0EaJPon5fLu9HdTVx9TSq21hYdJ1WjItHridXvac8tUgS5u3ULA
	 j4k3H040lvhdDAJmXAbPEqQpC9M8BCRyn2nh8nY5WlUx1V8dQD999D015EFmWGciL6
	 bnbf2T7X5aKRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81E7C531FA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502403368.22128.4769093021516852080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c89f109d96f71b997de2367a075455606bf6c773c23735650463eab1fd8c51
Date: Sun, 26 Jul 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785024033
