Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DD73FBA5
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737876954; cv=none; b=HRO4x26uuVjMSckkWfQOG9+jFWJ8zLVslLirD8WgTIq2fH88elP4JLkInOwiBFAYjHvaDkhLOv4C3UKy92QOB/C9NFPMXy6nuMN/w+cIYBgUKRbG7pffFnw6m5mfUisyIp5qT/lNxRMPbyPIeOooGtZnp0APQE8l+JcgPcsxNww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737876954; c=relaxed/simple;
	bh=jk6ob0h6UrxB0Ri/Ufpxw2+OjrzFUsKViyjejaeGq0g=;
	h=To:Subject:From:Message-Id:Date; b=ZEkFQUFfXENT9tYRWo0Earo6dti7sV12AFybBGQJdi2vi/Q1vA48QjNA6kntb6yEfZyJtK2M0ZyMY2/yAui1yQFqXjoE9Z+iZ8Moizy7YSKlcM8+dyUSfs2woo06yySQ9Ec7qYz06PDNKlIPNe14dWJd/0eN09YLnPTAwuOHwgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFR9HUDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFR9HUDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF19C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737876953;
	bh=jk6ob0h6UrxB0Ri/Ufpxw2+OjrzFUsKViyjejaeGq0g=;
	h=To:Subject:From:Date:From;
	b=BFR9HUDbS4n0wU0f1XN1DHfzXL37+3JvrhaPSI6LPac1s0h3IffW/Ko4QXWATgicJ
	 +g/ePNLg9BkGXL5i1J9+T44KkVjrEhQfPgEIwIgs15kuFKo/DSiL6Gm7eO3kHhALuD
	 kQYPDUCKjt/ezCPIA234mZK9YddZMGG9DmN2owSZcdMRGHEz6F4fi6fObg5i1UTDuM
	 2eCa6A36R8ss7Nt6GoO+ly3ecvllPnw6ZdTCaWaPMAXnSE0GaXbIVdu208sf3xXVRc
	 b+GYAVn6bONdRbg1XESx/+vp5qd9wMlm7jAvsnoehL3zKP/0TvzXkDY/eEiOe+Vr5g
	 bA9ZQgGYOZtPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F900C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173787695358.6795.3321530412953197925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a333c943bb607b0af3eb0e6e05e63d712f38868c0a1e0acf8ce6d8209544e2f7
Date: Sun, 26 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737876953
