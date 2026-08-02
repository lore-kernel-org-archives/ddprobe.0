Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C9B273D77
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785697834; cv=none; b=mfP78oD7yPDiUcqjUVz2pIwwOYkLHmxScSxsc6kccqcWezOLHYYkprcDiXDyQrCSJZ7uXxSPMLd6DM0bYX6gTl8gZgOYOq8P64FfiJ4dvjmhvTudik5AnJDMZHkvkp+rb+V5ZauTQmjecMsmDWEwoEXGkniEJv/H5XygBenM9dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785697834; c=relaxed/simple;
	bh=I4rgVsw1MhBWCsKYtsA5FPqHHoR4pGi21bo3rwZSukw=;
	h=To:Subject:From:Message-Id:Date; b=DWSMESayVyBe+LkUalguXzjx9/4gUgB5X+EX8ZjcB4GgMRRsI89lPwqFcAMmoQn6wwE2+nvciJm+1FD4dMMmEUb4je0lHLWzdkx+mv/ExNaMmxwfwq2o7opt1QkwKkTyK77FrZCHzme6B/4UivYSi8AVjZL7D/C7UQktU7IuN/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikx0l3Fl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikx0l3Fl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1320C2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785697833;
	bh=I4rgVsw1MhBWCsKYtsA5FPqHHoR4pGi21bo3rwZSukw=;
	h=To:Subject:From:Date:From;
	b=ikx0l3Fl/1rpO0aQtHX7PlOvrebW3m6tsdaVEp/tU8ofWkqOYTl1dBvM0wsNKXYar
	 QMkwagPIvv+N1Hvrf9x2VW1elt/v9bJh5lE9FPPWzLhVbZfCaxAfI5005mK9/XL0K7
	 MCpP3IUbtCpvt0Qy7ADPakOy7tUERlGCfXvEV3TCHYQTf3/aMhzV+ZSpaPTW1X1NZ7
	 B90alxkW2JmT67QeOTpa4kamnNjWrG5Rz7NLUTfa92OPsOlebJEWoYHM6AD8xWHa9J
	 YnKIuwnT+QRkXmA0Pvnf7YI5q43WRc4E1SQAL3LJtnf+rz5esvtp/TAv+uFjG7aTMP
	 Y3OpsYkSOtdtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9313C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569783368.22814.13806436040703697811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc28867458ecfc7b91118b12d80ddefcd1841d29d79145ad3055a6983471475
Date: Sun, 02 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785697833
