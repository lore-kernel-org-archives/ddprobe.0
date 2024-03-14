Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBE974BF1
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710453497; cv=none; b=U48ofVNudsDvk80zKi9OXvUZ3F/tU5h32Y3QSc0AkItyg65e2dZ+/8oizT0SFFtwqw5lOV++51pnnUjHsOwFuJ052eViNAHsh14kS480QtZXHWusCRn45SEfv3VsvkiWkdvaAJTl0GSnLuUdrNU7mSZaFZDnuffE6mdKH7Qe2m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710453497; c=relaxed/simple;
	bh=btydxokDs8Aoc7p+ttvxJawsMYQkxaFOT5IsaYbT+uI=;
	h=To:Subject:From:Message-Id:Date; b=ttNPlIZGQxIW8+/71rKscIlNCYw4w7EghTwgB3B1ygO7Xf6feGp26rxmFZ0PNNPuN8rITJTXcufmrVkV3lBP0TNtuwIzE6j7D66hOiOggZsQ0q1njHLd10J2OhuNcjY1799PDzmSsQKHtPd78njIEZH2+hpX+vQoi7amF7Zy18s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMqDARWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMqDARWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80BE2C43394
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710453496;
	bh=btydxokDs8Aoc7p+ttvxJawsMYQkxaFOT5IsaYbT+uI=;
	h=To:Subject:From:Date:From;
	b=UMqDARWbv6NBSDMEWKdeUX8ehDF7ayv+LAaUV/cUQlEPZyGYzBT7272l4ffEg731K
	 RxVzy7d47ELnVl5xpC81WkVQhbk3igIW0rChm0VYvVfaQaWapSNggNNdkLAZQfGjMG
	 c4VB0Gn6H3nM+A+NtV8MtjSRaqHEZlc7fg8oRuo4vy9UAqxPJFDCykn9ViuASlwMUt
	 VMSE1T1gG8UMzO8f7rRa7ouUhgZRrz+xXa7P5uLCZJ0I+vQJEr0OxVf1hzjeP9T6f2
	 Ec2vEIc2Cl4Wt3XJo+wu3YtTceaLgWeKXu/ykFw9V1prQb4kidvncoG1PxOAm48E49
	 0RE7YL38P4xQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C8BFC54E60
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171045349643.21227.11213633923745933380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534cc03abfd3836a8accd269bbacd7961e62a83146ce956708fd8b919b386daa
Date: Thu, 14 Mar 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710453496
