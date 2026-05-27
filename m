Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C59D140E4F
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779863554; cv=none; b=GgaY7cF950ZFhX1qJHvyaY5DUtwjN3gn/qpDD5Nqp6Gw2yW8E7qRcq1W016OPVJnN2T2ipULvD5PIItN9CHq+eZa9+p6FrLZMotIIjTHNvuvQ7mhhuQTWUhd5lM+9RMowhXt9+RaYXOG2kJ6LKTHblUX9uUKw5nUo+aS1kblubI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779863554; c=relaxed/simple;
	bh=x0HReWf+EJQtIyubcRvQdiXnRFmzJt9qrFzuntT926I=;
	h=To:Subject:From:Message-Id:Date; b=i8ZdULYhq7WiY/R52FZ0PvGN6edv1u6ECxpoHK2Ii5I0WnXl4dJoeymhR9kQXNplzC3w1GyPnNaY+upMXfSZXFhdqAS/dD5baY+oNmiRl0NK15qtr1poNPOOwUoVM/1oM3MR0pt+VHzZ4UAYwNW9S90CYGcAhHdI5Heh5btNv0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNtFf9WY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNtFf9WY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1808C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779863553;
	bh=x0HReWf+EJQtIyubcRvQdiXnRFmzJt9qrFzuntT926I=;
	h=To:Subject:From:Date:From;
	b=aNtFf9WYJefjpt7N1Z5ip6Xeq5N+DnFeLKIFqnb7nalpuVwSDuNxcavhF4cNPkQsL
	 DMeTsK+ElPG7eQjGDUI2wusR8CMtWqlaDAwwWayRyiq1MAj8qB2WPzlObLCNaSOuwo
	 27/LS4w/Q0Mt/3SKV10OY3oxQDQhquS7q2LgvLbs+T0+pKAkExyXtkiB6e+y9paZW1
	 CzJgDD3eqEovsMBp64Lmt0QKnAHbKrzoTC4m0O7eqpwg+Fk/NwWswfPB4sqpwpuzJE
	 RJCa2Bb4HdTe/NLziLdK5bn3r+PR0whJU7lYTmM453cAXY+ZWXRCVQfSigY0efd09O
	 Aqr5BVOs35aQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86BACD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986355368.23471.7583665106136627320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85cbf18a41d71ddaae7a060c2ce8694dc8b6fff8da82f969457ab1542457f5ee
Date: Wed, 27 May 2026 06:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779863553
