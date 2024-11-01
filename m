Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEDF165F0C
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730504754; cv=none; b=ZoU+JYwXqShCfRpq6/oXjqnNceaiFdftxuHLMTaLAGkF+gY0xn9Qw4SECDqCLgLbCQ3b5QEZ8IiLKXPaYMWVqysJUU+aWZQy5CjJPIWZ/j6Q6dG8x5COdQlzXQJrY546s/YPU+1iSgDFpHdJnFFUC7PbnC2R0VWUpEUupi1a5sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730504754; c=relaxed/simple;
	bh=1nJvPbnH41ZvtTwZ4lz1k/5NtYEQZt1rVMzGxrQzMxc=;
	h=To:Subject:From:Message-Id:Date; b=WcWzFwctqHsZfOpAlqiZgdUzIXfBLhzzH+oGdgAl5+Hs4Qds1EoR/3WiRnD64Omn5ozxm/VB8MMa69M/S/Q39HMJQZHWELpBIlDkr12aKrmdz0cAQNSl1aez+fYAykAs8LnTE1pKJ2nMBYuruL38LW3QXvqh4Tl7aQdT/62+7gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERyn4llr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERyn4llr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2B5C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730504753;
	bh=1nJvPbnH41ZvtTwZ4lz1k/5NtYEQZt1rVMzGxrQzMxc=;
	h=To:Subject:From:Date:From;
	b=ERyn4llrijFYlAvS/U8jS2oBUyQM7vuIFGt+A31LlfbpJUT4KDD6TNj9wXN9K/CFa
	 7qfgZp/GJifQMsAGHG0TKuFkgnwW3sUErJQjwW8mtbP6Y5gPp5IFtbI9PQRpmp6oxa
	 kQc8TTJppLU4VtkmShek1Wuvtn20QUtTdSuHdD5v5PyN1LFr+2JGwKCaZbdrgLbkX6
	 bUA5JTEE1dzD2pqXojIzwoQnYoCR17C1z9zqdeDtkWlW9a3M3RTeJrVbd+du2XyOni
	 Y9fPRitGkPVsa4mRRE7eItlzT5cIxaxOblcMQEkyJ9G1DTs7RZnv+RJZ0SmKZBCurb
	 X4xeBKYSvss9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A0BE6F096
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173050475361.13821.7398679581147083220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91aa35f8850a32f66a4adeebb641d701a1b5e2828058f1b221de081060accc2
Date: Fri, 01 Nov 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730504753
