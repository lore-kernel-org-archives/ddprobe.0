Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC9935E952
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787331634; cv=none; b=n4cm0zjgXkpmHIZKaxNIxndj9choe9I5NPkm2oksy/HmGTbe1hjdtccCY/wJBDIlV8bM2HAEM5czfIkHrWDQRLQC6Z3iVdgF4eEPU1MG5lQQFtwGqtT+Ckm/K7GWJY78xAFq2GDdrXpkP0tsgEsRylNxZvWOxQf1l7303wMQx9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787331634; c=relaxed/simple;
	bh=riP3tHL9PgLnPeW4GYu6TI8pt7QirZEmQp4/P8oHDo0=;
	h=To:Subject:From:Message-Id:Date; b=LSN8OCWoQurXYYGW3QERo8PTNtb7WZ/DFF9bPlzFReBmOt1e3TMF5NMeVh799aj58hlE1wGhNz1kp8R9zsuf5jvnFlX0wSNR4bIXqSjMoBzrqOtDeeChTcJfZAkaumhpQ9vzfWjj3cpXS6V08P10k5tnXKmmVpgWFgP56ziwp0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spD7M5kL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spD7M5kL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5DCC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787331633;
	bh=riP3tHL9PgLnPeW4GYu6TI8pt7QirZEmQp4/P8oHDo0=;
	h=To:Subject:From:Date:From;
	b=spD7M5kLwyDg6+bPgVlmfjctPM5A7q4NExub43b/6FGAB4e7+InikKFI3dmiuAqyY
	 j0rdngd3cT9zB9G27ZZxMRLx2QOPwk7pgREKsjY1ND7KOZGmg8v7d/iN2mlAEjqLpd
	 8/mWIu+NHtjp0vrL08OPKSrDHJzan7HgdlXihmj5y8ikEgoOl9Fb8mDFqBd/zjcW+/
	 eORrYm6s2rIQs4mV08NAqcWhxrZCzl+WIE3YuskJQ7WnqCvJDth0xGdiqVPxHZxVvl
	 WGuQ1xq+gShC44363VwE1HgpYBwDv40Oy8OC5ZfB4Gb4OV4NHjAq1t3lxTk2sBLMyi
	 cS8YxW7uB7JWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CEBC5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733163370.5033.9887211702301479185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3e181f0627feb80f9a86064bf524d9e827d6c86e8e2c89f165767737f8c1e6
Date: Fri, 21 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787331633
