Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7802701CB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776277053; cv=none; b=SDyr8ykYocI9p7K7H7q5N9lb8ER570p+ozT5gkUi/M3GuQKErYCrtGxj6T8vUrtA81gHntiEL3hLyOxupdFeUT0FWH3USdzEkqMe+Cx/BFYj1sPOoRN47UjzVDJvfR8AU8Z/PgVkmjxgRxEVhL5nVlEY3wMfsenXLSczIY3OVRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776277053; c=relaxed/simple;
	bh=3naompom6hiRKYEE9aEZbdJ3Xa9oX3qsTyIA1NTkCV8=;
	h=To:Subject:From:Message-Id:Date; b=sprEVqYBcemYNLQO+V5uj4gFQ5bT/LMS5TNr3Pnr3wqMRAK6iaqClQDUVcSAxuOI2uOMXL5ePFdmjObeWKl1sIy3Uyjq4N0h2G2Ua+MgGQFDvsZx98tSiWDFhHLhZGVc2+4nAErmwK+aW9kjld1wxQEs1kOpylZehac7VcKY1So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxtetCQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxtetCQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD03AC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776277053;
	bh=3naompom6hiRKYEE9aEZbdJ3Xa9oX3qsTyIA1NTkCV8=;
	h=To:Subject:From:Date:From;
	b=JxtetCQWHVL5gmf9+4bvprfpPgDFHL+enNXI1q4HinjI6nLLXQEeoVSpbs6FPNkYl
	 mO2f3CKuox+j7qiL1SHhmSCXrsHG+OxojDcr6HvubwvSUTk4zvE6USRMT6/rCWZ3gC
	 FxvhgNozQwlyqHWIqiQKO3xm/6vKE53vlsusOteHfAiWLyPAdwlZnqbNPHzjLyO+7B
	 Ea7sUwH7t/0zt+KiQ/fk5GiWvYBxxr631PqI8akuo+hh1iTE7PvrhdPUSC9otNSzPN
	 W5PJD3dT9PdiGfYyFHES1lZFWtzMwlo94NxacvRkHbQCHSZLUFUguctac84ku50rqG
	 jJXRnmfM8wO0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3B5F419B9
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627705369.24369.15125114002393881726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c291d1d8384b8e5ab58ea5cba410e22ff9a30c421a2fda4bc7e33bee6e3c0b8
Date: Wed, 15 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776277053
