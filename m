Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5559F36AB57
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790413234; cv=none; b=BmPxaQzn23mfHPibVOwwqJsqJK3t0BZcwIi4+mEg3gHvkOZaK/E6ClkmS8381CBrx+pEYhirVQo83Kiplzyd0SbaOdXTBMHX16znbYcQlVHS9WsAz6kcQWYgLhT62kPopnoZY/efHsnRRdQn9awsuqapyPxkU+ZBxxK3fz/WzXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790413234; c=relaxed/simple;
	bh=RIBjOH8eutL5P4UQz8BWUGcVZp2tl9iDcnP3mV0kVeo=;
	h=To:Subject:From:Message-Id:Date; b=lYKqJAQxqIbi7X95YAsi2UWPm4anBvWO7ASCwoUnc6GCArkP3QvpZsC02vu62wk+eKfBJqfWOJ9HeEBIV0EaV7/SuNWHn4dNmLMEm61QErTTO6xiKENLfufEGD6/eVHNz7ywj/n5BnOcFIt6llsRLOd2DFFzoX0L2UkLuKTPZqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=of5q1OaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="of5q1OaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53E3C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790413233;
	bh=RIBjOH8eutL5P4UQz8BWUGcVZp2tl9iDcnP3mV0kVeo=;
	h=To:Subject:From:Date:From;
	b=of5q1OaU49TAeG8M86abCazQkk6b1gIsisgR6UzUA6tSF5i61B6QX/0NqZyg5ALxE
	 wruPXsQor4tHIKCAsocCoc57epg+YQRYH3rU+S6UXZNmIkIS+7VpbD0nISEiTpzFtl
	 wKlNenZJ/x+reJg0YVHSsMgp5yskrvk3JZqyO13TQZC2Ooq78LlVLHQBKBj9fdcrXL
	 z5Z26pZo5oM5UEzuCRAgrR//ObbaXuvNySqNYkXoYA6362Z3kdkVv0r0loQARiAiw6
	 5yJ8JkEKJUkDhNLZ8Vv/Ggc2KTImWsVAGv3OfZobVhguFXsd/4YvfZsWYjVrMO8vHf
	 kMn4dxvo7s3Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E30C98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041323370.11978.17181433549751319674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb9d740025937d6998960b0df1353e7296fb5203207236fbb81fd8fcb63ce5c
Date: Sat, 26 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790413233
