Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DAC1E0DAA
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730276154; cv=none; b=KsqYl6QDg71ik9AXktfTEdLMrSkeGXzyczQTQhzAe2NXlYK4Zd9287uHVaGtcPQZDLRKFKjHvnTVQJd5PWV7Y+eNTprB/TH4b2ttQHjaXPafG5CRhLIV3HHGscJ+wCwssJUY2uthCM5IGeAl65jprHF+rMyNnRo8vXArJ6ufGoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730276154; c=relaxed/simple;
	bh=9JCssT5HGxjiMVHzRzJNjVejsC/k31pYFZ3fHAx9pdo=;
	h=To:Subject:From:Message-Id:Date; b=ah3eXBZAErPy6N/b6ab4RIwUU+AXI6ien7uladmbllaaBgPql8dtrn43jZDwvMfWGqpR2G7dfrqxZCrlZy6cfEoPcFjwsiqqNn1fJLe4hYjKUk6g+XjuG7FK1kmWr+3tzG+kFFbMGIujNKlgxlu1dSzvqg3hz+XuTeWw0IOgub0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+yhTydB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+yhTydB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4E2C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730276153;
	bh=9JCssT5HGxjiMVHzRzJNjVejsC/k31pYFZ3fHAx9pdo=;
	h=To:Subject:From:Date:From;
	b=a+yhTydBOT/RX7X+HWXuT/a52r0CH7YupoYxef27RWytoqUUMXwo9eF/QsI6B66fe
	 gtLrcPeRaMfX9m1YpA1hP9yIjXEvv6KNvonuUldAxjwuvuIaR7QfXZNbawHdBHYHXo
	 joTqkaKoaxW6BBZdsTCVI0ls8wjkHJN0RmRUNWZmOlmV4xZE1QbG2+4b+WvZUGe76Q
	 5KF6RtnC5EF2SvoFRTyEuf6sq7cv3K6f5FB/11e64lcZJKFzZEwkPHmyQAHG5gTvkO
	 T/M2M9Waaz8dNrfkwqZ1y1oq+T7aTxgSQJWp2rIxWObkkMcIGue/qKFY9xJphUUsB7
	 KvSlo42Wmt0Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DCCD7497F
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173027615360.21338.12413503182645847547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fbccf56649686bd911a0e9a68d078de01f641ea3f4d41af152c5996979c65a
Date: Wed, 30 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730276153
