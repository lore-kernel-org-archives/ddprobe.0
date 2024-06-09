Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EB3DDA0
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717919243; cv=none; b=DHsTbiofQPYvCJeH5jcQKUwgGg6ynNG6CbbaT/lf7CsRkBMXk/QyIPADk3ovCJugeVi5D4ZHiRiunMWC+WNO9+VBXFucn4q9N23JTqErkA9XwEjXUhil0R3Z8VC3Q6Ksiql1s/l5EyJA+X2gt8oIK5yX+Rj6v6HZU7irnH8DUeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717919243; c=relaxed/simple;
	bh=TOJKxs9Vc7XHlcIqZ0K3PbH9vOSQdAyPrd466R3gU58=;
	h=To:Subject:From:Message-Id:Date; b=Dx5+X55MSn37yLDP4y/63MK+zV//EwuR61zNsd8NrLYsifssLvpC/XhCoEBWMhKS/tSDR8vvgDLpLXCYqKGf50x8FAvARWoB2J2CcxJwL9b521YwlIdnw6yqNSztN+FABlqzYT4FYhw2JDpyIk3kDzTKSd8qcvC96/CzvUNlx5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kx1Ghbme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kx1Ghbme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3F3C32786
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717919242;
	bh=TOJKxs9Vc7XHlcIqZ0K3PbH9vOSQdAyPrd466R3gU58=;
	h=To:Subject:From:Date:From;
	b=kx1GhbmeS4L81VWJZhVnYW6onM+FtawfbLZskSGVe/vpocn13Bd7LBJO7t9xQW2s+
	 UautYVOpUP3CEtdqXI9dOT9ojg2yqELgaA3HO/IU0QXJELesaJ0oEz76TMirdEpHqA
	 skCX/AAFjEfIwy606HzIeyEfUuhjPmyhUdgLqAiHikxDdiuBP1xDZypBZO+zl4IusA
	 11enTnDxEwuORW5UfSgzPPGFnYqMb2z2z2/kCoM+W/HwKA7YXeLJLm/EHgnMGH+IxV
	 Aou0tEdrBvMcsom/njeRlG6cH3v4gNx5DYAyMmxn2Imo0LiBNksltwBSH9fQ6f8l4T
	 Wp93BWH8/khtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09B9C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791924276.9214.2378394795823264985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc22c0c8bb99661e3cbe3158a067676b4c0fa6a8240c2644c39a519583cf113e
Date: Sun, 09 Jun 2024 07:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717919242
