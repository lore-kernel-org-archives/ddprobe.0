Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F72785642
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718926823; cv=none; b=gbBJdG0N4Y05U7kcrov3LT0nx/FKlpwKJwQwTQ+59pgSG4xXNPajuKC7LwoBYs1XJYXpk2qnzeF3cqkLsv1/NQevtYlmiWETIuW8DoYISQXqEfDLgHA4mN7y4DmeQNC+heCERzAuhZUo1uQrK+25khJ8zoQwnzuPwpwCOI9T6as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718926823; c=relaxed/simple;
	bh=laFZRgFSgLnThfm/B3I981eJtHa7LWDfcztzcDoyqu0=;
	h=To:Subject:From:Message-Id:Date; b=aVV9+r34wVOnZWLESS+hKydpXaKXFtgPFlLXUyUApGArf8zQdSthFFiV/9s72J3ZcK3cK5fngNcJQrIiSOSseGxRMvPQPsYXGbyptwO+pDs2mMKiOB6zM2WuubPJcVlE2MDdaFYE8Ak7PjTVPCgpql5WR3rVJPfsUh1OL585y28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wl599QYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wl599QYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9AAC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718926822;
	bh=laFZRgFSgLnThfm/B3I981eJtHa7LWDfcztzcDoyqu0=;
	h=To:Subject:From:Date:From;
	b=Wl599QYn9JRhAwZiEKM3zaoTTLdsUz+z7eB2o6zrbUN21Xg/AJUzyLmfLTWqOLSS9
	 qxhlngag57SdZUAL7FgL3lYA+XwwamxGEY+U/Oe9i8PRLgC5gdDvwiPjkMWztvkD/c
	 sbLdBz8o6NL0DdYA1snnb7wczB0FMwoN5P/vRklbzyPUeantnd0kro7fKWsyDNjbJD
	 pN5uXhwiHjhJ0gkG8538vT11YDUaSLJYPrtOVU2eFgQR80N2fNREtemolqXp9bLdY1
	 CsNYUrYoGtLLEOtM8quIS2Oe618lA9vQt3g9RQLNHIy31aVE2QP9S0wfaFHNgPcLHu
	 oqUWakbTN1YLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8405C2BBCA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892682281.20852.13289102723484490913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffb4c53475072f15d7fbac8a11b1f8cb083bd03e8ed246533581440b13e45b5
Date: Thu, 20 Jun 2024 23:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718926822
