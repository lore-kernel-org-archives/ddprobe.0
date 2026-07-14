Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD2848094E
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784042314; cv=none; b=V0gz3j9fnZaVC5bUDeQfck4nlYuAMrGPe2l8XSxpP3GVNEk6RGEhkXa+FlJckSUyOdjvrJpVaIq68Tct0uHQD8x05SeDq3vMQu2E07R6d/IB7sP4h2k2L+j63myMQhZ5zFtmJCg1W/tJ9eJEVaJ9Tsq23JrIq+9RYZVqAgrEfHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784042314; c=relaxed/simple;
	bh=N16rNLysvdQyrsAOJAlcZGElxWJIS0a92WQpPLQI7O4=;
	h=To:Subject:From:Message-Id:Date; b=Ln14ZDHrq4sdWOCYqHq6HND6LjkuUY/3LknH/w3AUw9ia0lG8q2xOd7g3Q7ddIRrNehaKeawTlWnv/mzdMs353WdCfGSZwjNXOog+C45S9LmJXUHRjwDzwthrD0igN2bwkNKW38Nlf+ReDws+Rlc4Vqmg0DdYc3NvySHsG+3zYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4jfDH+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4jfDH+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECB5C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784042313;
	bh=N16rNLysvdQyrsAOJAlcZGElxWJIS0a92WQpPLQI7O4=;
	h=To:Subject:From:Date:From;
	b=n4jfDH+3r2BLGUmBVaPAqZS5gHQ2F0Lm4RvhfU7wV4kuIIIURW7P2dpTVDYAp9Zv/
	 1RdjpYAKshkwxX7Pe6yYjiRaBlmCwtuVtpWVtLIxXPNbSOHZ9FmD6ba7W6V/nkHCLk
	 /Xup83hGYCJ71USz/qNoE8Cv/5+k6pxMloBlaGqeRL/1gZEpflTav5cyCn71p9ie2I
	 zn5WjZKZ/+aPBcr/U49YL4wz27mUm0GD+WRl6OFGH4A5IsD3LFVG9yxEYNU0skl5T3
	 MaFBo6Qm7vSxifIrbKJ109PO9CIJQDmDbbbPwmOR0uXsauxZV5dEK5blmy2SW4UD9O
	 6ZG7txzs+uSmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2D4C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404231369.32714.2365678389411547133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20797fb07f0b684d1b1a2012498328f2530fafa2b5a30c57c01f337ea13ba87
Date: Tue, 14 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784042313
