Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5502C21CB
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769918034; cv=none; b=MJmHkg7Jgpnd8tbI7Ag+Ls3+829mL27Rb1RzszggkNP17kx3PR0d+VxNF2+P8VVoiVJ7DLHw11bpn7cCUB9/6hRiF9n8FP+Qyx7UmBqHyC0ckUO+DkVA18VmMx+aeqwMq7OuKoB4MD1FA40HAXc/OVjiZv7tmsx+mu3OikXyxOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769918034; c=relaxed/simple;
	bh=ncuyEc2dG+WGf1rtM94Ud+VuyywIhswkElugwcuqIEk=;
	h=To:Subject:From:Message-Id:Date; b=LFyUjJd05ePkY1U6ovsukdhrF43mbw+GfLivEtAPi4mbXot7XcJp3Pta92zn1V3C7SexoAHRIQszBtgxKBPxMwXA80JV8zElZXQjuwniXJWGWhKI/zDJkY2Do/8lHrY08p9pDSNC9tKvuj2lYxS+ZqJVPnDoYRuqU/tITRUmcEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1YHX0Pi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1YHX0Pi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2110C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769918033;
	bh=ncuyEc2dG+WGf1rtM94Ud+VuyywIhswkElugwcuqIEk=;
	h=To:Subject:From:Date:From;
	b=f1YHX0Pia91NlQvtyaOPOdYGZ5d7AbgjbnpdK5eR14u1sSZWWNRWO4QSKbSYFYGuC
	 Qf+tUXWhLwmcQP8PgSuOgOzcWXzD4vfgiW0XVaKScXzAKEoWlrwqX2IBVjzJwjG5fK
	 +CTMSBeUJivw5c9ubFnLxVpLzDc5dqu+DQm61GON9P061GV/OVo+DhTIe6Zv+ayV8m
	 MZDGVv0O7zuHIFU+pzvdyygHNINjIfRWMVXI9ZFmD5wz48+j5gUlxhBVegJH2N5PjE
	 tWq2eyzxOJqj0iUDvvdG2BS5O/w0pb9AfkgITeNCJppntsdoOLtRUBFQaXpEQJf8IC
	 U5aFJjlkxrIZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF37E7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991803357.20207.13600158898811049412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ff4fcc85671b706b5dc5f22f78ca14982b7257c34524c38a51d7bc05d698d4
Date: Sun, 01 Feb 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769918033
