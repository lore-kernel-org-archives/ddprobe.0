Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEFD1DD9A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743203394; cv=none; b=pSIcS3r5+AXmldV9dVRq3tGderbBhcu3F5ntPeajbsIRRqQvKA1dwIhkzK2Sib9aTmVtHVu2dMPjPrzPd8uxJ3j5O9+nCZXx3vxOTQO6MDv5eP5I/shVVO+9JV/Ks0kWUWNgqzRsOXj+1Q5Q71Cyq9zlWsqbv7WqUZ7e53Dmfd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743203394; c=relaxed/simple;
	bh=2JnGynOkgEFrGbVTvmfCk3v+2A+IrK1Gv8ORLXd3TJk=;
	h=To:Subject:From:Message-Id:Date; b=OchVGsPI7jcKmlSb0Lfv4ABGHuPwTL+VXTJsC9GTsFAQ8uHd8EN1ksiZZyAKk2lWj7HKGZ9m7iukTTy9Fw2o9lFCgSs1km91dFmOyZvdt7CAgtE7Sc68YI0Y2tte6eZ7HzPhdsoXOEyWWj7cLZFyKQHBaRmiFA95n7g+kGWmBf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1C49Bqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1C49Bqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38DFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743203393;
	bh=2JnGynOkgEFrGbVTvmfCk3v+2A+IrK1Gv8ORLXd3TJk=;
	h=To:Subject:From:Date:From;
	b=o1C49BqaucVe3UkisFhs6QOfaEuFzXB0yizrXZsW2SqfewgFYSF11PQB0xkQilERE
	 GjnSLDU21boc7yj+05vLgHOu+qXj/HC9IMEWnVeIiT/JxknRsTDUrxxRgmWttDOIgn
	 ckrnOWSEsAmZJnJZ4xQxYIl4gc/qVOpSQuiaPej6gpw1ZTL2A73Gjj9WhEAw9HStzt
	 y5H5PC9pm6RiSiEJ8qzCVd2a6U9wZYf67LoDl9u4z+Vy8zynjJpAzAyHMxsWqn3Sqa
	 t895HHJBP4v+4jxckCEO0gg9lg5ekMigOcIllQJXfwt7BMAf1b6eKzN4OA05trnPvc
	 ogVKMNLczNXyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9922FC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320339361.6632.3305731507375911811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47b3bdcd37bcf02e81a739a86dc5061fa2429af85b715c20a645f4251030bd7
Date: Fri, 28 Mar 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743203393
