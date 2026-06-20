Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F60CB640
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781925394; cv=none; b=bWihV/LVlaJQKr0WXixeEOaW71IllLB16wZY6KGjzBXepxjlBc7AFsOSwmcAOVWo8ACI8BwJYXwI8LnjezWj9nCGsznJz3A3wCfXDxNmVX4SgTTTT4mP1AJa/P/U01+EhajOMejftnX39NLqVp2lVM7QTAUuEF+tSWPbTI1BB5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781925394; c=relaxed/simple;
	bh=6k6dkwgCMtykNuM2q6OHdKBzzvch5vmcRo3PGI2+8IU=;
	h=To:Subject:From:Message-Id:Date; b=qHksQ9ABi0yP+Zkat4HQ/9ZjRVK12qVVTTVyobbZzuRvbXoIHh6UEzAzM1GGwqO9NW3ABSvdOqfXWcda7oL9NZHv5+CfbWHW5RuOckRzhtdBz5SNY153w4K4rqmg8gG6FkBU36xUbY3lqh6FhJRATsKihe6g2TxfTTcM1EDoAfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrKAl0Vp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrKAl0Vp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D2CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781925393;
	bh=6k6dkwgCMtykNuM2q6OHdKBzzvch5vmcRo3PGI2+8IU=;
	h=To:Subject:From:Date:From;
	b=GrKAl0VpHqgNdSRdhGB8fAOafL8Ecu5CNVWzsvnCYwhzVRkSW/3nxsRQqXqL7aTA1
	 GkVsuGXsouylv/2OIsorL5oSHVvHXjKJIhHf/3T18R7deCCjpqrBJ+DD43C1e5NO7Z
	 RlfhDqkGh7+Rl2QYmI5i1Q9jNI3nUOuOTJPYYpqIBNV2O8c4W7pYgU/fWmNiGKu2yD
	 tEwdyzpr+uVfMr6aOOCSNAB4NFVbJ8AI0TlNkbVjoHcZinlxAE62jrBjAHnAeRjD5y
	 l/+FLzuuO92lxGz/3/q6sRwl8KusmRILQUmirjF7hILG3AqwoLmTe44/fXA8isXj7F
	 NupAfF98jSJ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FE0CD98F6
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192539371.4141.10146532320867594167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0e6aaf5b91eb48d645d654643e7ec496e600a26cb32e02d28b61ca2a7ca45a
Date: Sat, 20 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781925393
