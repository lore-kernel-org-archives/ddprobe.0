Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DFFC8FF
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722398154; cv=none; b=rfMjaeQvS9XmhwnMtnYfWjB2/ofsX+uj+VqwlybY9u37ogh31EG7fwwQTMMpupBf2lqXEZeNriQ5cEBbsSquYx1O2S6icWVpT2TNCTww9BKImRQlRZ46vZbJcPt+EAdM1x2YN8LcN7eNXW8Xdhg6zRYBYvGZKcbnqTuZWpROq5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722398154; c=relaxed/simple;
	bh=NhmHjOlLg0K/OXBIarNRHWIJUlMOWbBK/usPHALMmH8=;
	h=To:Subject:From:Message-Id:Date; b=fgM11JxuhO0YPCxCTf+W1Ftm9RpgMu4psuj8oTl4l6+fgPyO9pg/eWqx6qSjpjx0Cl81lGJjJWylbSb5Xnq8vf4cd/YJyFg3dY0wPqDOtJ0zb2fUHITjoUWOKPZQ74a+G1oCbOEKI+ANr0PLMwc6Sy2NA93AFsxBa30JO1oNlhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2YnDdQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2YnDdQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89CCC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722398153;
	bh=NhmHjOlLg0K/OXBIarNRHWIJUlMOWbBK/usPHALMmH8=;
	h=To:Subject:From:Date:From;
	b=B2YnDdQ4jvvdD3O1gLrk+cVk/k/1DBXZO51Fq4Fw8qOuaGqeX0ZesJtAIvtYMKOSX
	 +VmyImSiGosOc3xnoa269YZcBXOJmx5S/N7MX3mYImJzMty9v53eUR+Y2OYAx8vX0A
	 GMDZ+7A94oz+tAK9m1XR/WJ0FKXAw93fYph1vnsHL3Syi12l4JRUhZwKimQIXNq6lm
	 aa7yPzLoerQz08Ancz5x+Id+CooIxxrpVlWg5Z/DjuOLZqMcJ0/r7Fq4eQqK0NU8hj
	 +GljDiB/94RfkDqiOjVV09JtLmPeWxjxRoCVXDDyL2f463rKK9XWwLvpzAglLCbcK2
	 w42GnDQ0xLv8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957C1C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172239815358.29459.15851097495656845647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c011942aa5ab5ea63b57d25afa3d12be21ecd0ce8b4c3f01573533ac03a25ba5
Date: Wed, 31 Jul 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722398153
