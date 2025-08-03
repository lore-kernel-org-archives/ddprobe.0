Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB0AF9D6
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754236794; cv=none; b=jt3XeOTECl3URze9MsWDD43zqFy/q6FFKJ6XnvfIHrvFc8b5RDdG/7w7YrempUoUT45wL8vSW9RTToQiH/JWGpC7/bJS4oOmXraeoRyVOv5QLWabIINNli83QzX2ZZtpFR0bSgA8teXR/XsUe5xPAUSfVx+tJlLZD/6StBZ5/cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754236794; c=relaxed/simple;
	bh=v4OCjF1Y12os7W3zwf0cX8tT2LO0Fb9Hb41rA0WgbRM=;
	h=To:Subject:From:Message-Id:Date; b=qV27MFeQf1gSA/qv8C2EZz5dnYJRMmZNlFIJGoq3xMOczJp/+DFDGwuoG8n8atYUA4AZKBbV8HEi2KyfeUuQQdsWHbkJfFTZ5ZtbaWZX8XkGTECJrjTpZt15OYyidRDLRgZd8qh46364uFWx0qPGIZ+DaKJZhuu73jx5xFtDiZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Os8N3SHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Os8N3SHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2950C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754236793;
	bh=v4OCjF1Y12os7W3zwf0cX8tT2LO0Fb9Hb41rA0WgbRM=;
	h=To:Subject:From:Date:From;
	b=Os8N3SHyN73zUrnl9nCDdm9C3PTwoI9P9qcYJCU6On0DSm6gYblOCgiPqRmAKlalZ
	 6OZqKPiZrflPej3AoyHOu0hLceblIrPlrAhOXDNL7pjp7j1MG80Ap17b4v0G35fr2Y
	 QeAj6Ktpo9RezvUwuxuO00kNC6Ffdhwd/XheB8//ahQ1WOFxUC7freXvlk/eL+/www
	 AZiyQHIZb9FgS9l/WohQKn/WH6NciPPytdZn6kdaFlz7KoZelt6gMaEIis9GtrMi9d
	 UkVF0t0cnVXH/KAZV4KgeeMCnA9X1RoGXLIe3BWiD48YuxHWq/66WgI/fvN80in8HO
	 RNWSGabl0JcVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9120FC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423679358.21382.18441280751436006129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fc69516846e89a76b746b1f599fc9050d624061d4f385a03d80f02d6fc96cd
Date: Sun, 03 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754236793
