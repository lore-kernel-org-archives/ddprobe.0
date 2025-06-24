Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE08139E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750723794; cv=none; b=DhtDGf/b67hfAhhcA/osC6DSUVjmPiPor9R+dJ0a0HXMizercT57SYZIgNkLh1NHp9bjCovN/QEWa61ZWyEu0oSgbhNWJsBt39xKPnnPxclDBjwTSpmDcw8mhCZmh3HCL+BMkQjfnlfVIO3+Dot4XrsIzcssFrwdm3rWc8J+36U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750723794; c=relaxed/simple;
	bh=Kc2D9kA5NWIswcq61lejDVueLgsxeehL0aXkmDYBl6Q=;
	h=To:Subject:From:Message-Id:Date; b=cAJ6rZbYqvfcIwAZz4mAQXCZ7ubp7reKSBd8sSWoO+79BFeeEZJWelyL/F5mYep4gylelAiMh4/xQlXUnCgGHLce/pSA4VV4NZ+tdLUsZOzwYi2sesg4pPiiYSa+XKwl2Gq9Px34WC6DDCGknug3oQo6GPbTD8+xsy/gGxX9AOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdyKJvgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdyKJvgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB348C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750723793;
	bh=Kc2D9kA5NWIswcq61lejDVueLgsxeehL0aXkmDYBl6Q=;
	h=To:Subject:From:Date:From;
	b=JdyKJvgHMN+su54qmR/oRjLEYg963+HrGKEAMEh4z/aaDoTa5e7GcDobaOLvbQfDo
	 Qcq6dI1GES6v9slXCiAoNBo5OiEyuLLhSlcc8slrRbD20F1+XVqnyH2U/aINoPnu/g
	 1C4hEE1xan88ejDZn4XLHzeqpsydPgst0nUiK0yh81tLYmPNCnDP46ujN9iahyitn4
	 Dq7EGblRJQgIMEtjsznpUC0rUYGTg/v6YeYQvFQ/mxxnS0veuFltY0jRLfqLQt5+1c
	 y+rn7D/GhhwKLfE/hV86MIHeg0bdYN880SfgF+DNUvV8balmLnT/RfYaADnU1c0VtY
	 Krkeq5yYS8CqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C63C7115B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072379357.3662.12600210946378172790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f69193bdef7becf2f8d0fbf9802e8bb0e6969c91ee33da4016dcf29b03ec430
Date: Tue, 24 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750723793
