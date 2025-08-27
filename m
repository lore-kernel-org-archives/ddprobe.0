Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C4F2D97A1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756324194; cv=none; b=qieFSvVtN2s8ORnbIOnhaNClQG3L/ZXA8h4bvBXtwq7glHkqiJgUcCTgccXtC6oxhJs3HQ5Bk2QhqeuZ6/ICFs29bGh5dUB9GDW26eBExR4fo0hlx121lwhMPJn3CLr/7dSYVPothT08PjXPxVlRyAl4faV453L7qAddp3n0EFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756324194; c=relaxed/simple;
	bh=6s0kQVoJ1OK1ISuIBEzglER1Mc+Xvk5/onPQJkUJUl4=;
	h=To:Subject:From:Message-Id:Date; b=J10ReAvL4kbTUuRRi2uBKbNAgvMkpTnv+uauQCTP79s7XpUCEwZYKm+C1ePFncR4d920pGnxZ2cw34xSmtYnqtSFyRzsT/EQ8DMgK0j/J9mQ9MljCjgGGl1koZIC4fqhGxifRINqtl6VtllxHCvp8ICHEcgv7tcRFjTmSzPoUwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jd2f9fCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jd2f9fCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A167EC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756324193;
	bh=6s0kQVoJ1OK1ISuIBEzglER1Mc+Xvk5/onPQJkUJUl4=;
	h=To:Subject:From:Date:From;
	b=jd2f9fCo1go5WZHkdI9I5jibDYIiKP7SPSVwrrzEEN9H94lNK1ecKM8mCBCW5xlyF
	 ctNlr1L5OlUR5rS2NDj0FHrZz8JrBRA4DHZQkUrIIjhZdoH5OElb9/LvhQubrqVXH6
	 93/JFcQ27TGuTj0Z0Wsr10KIBKQIWoyuH15OBndLDncXKWjXwlu0y6mBsSOq4CuoJa
	 XAMPVZ8mxhxpKgfdRLIoo9Qo0ndX99EGzNg+7ojSEWN4i0HzZsfE+DEFJPtQyI9b8K
	 I2Mr+XCLQgxUF7SQnTkFm9FLa65Yma54wWZKAuPkltJ/t15WtqSRZpOwGHtd8p1rui
	 3haMBEvrPHNyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E583CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632419357.24186.8065383706348106168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638765dbf822bea08085266da267e74e0ac7ae039539a30226369d109b13b0e3
Date: Wed, 27 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756324193
