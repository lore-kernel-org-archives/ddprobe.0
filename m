Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E141F5437
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748190594; cv=none; b=nvTE8reBJl2vB3uFga1YSoYA2yHWAfhQkJcUzs7vt0a6r9G1jC8XSJWOIr1PHOsGUE/eL6N/9yA9/4V6xsTUP4jErP9rYDndVHl4PyPVjb5GQExsFAQcTTGUOynBHggQG65QnZ784Z5ep/TEJxkUCAjkYBbgGhjlfScDdFzRxU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748190594; c=relaxed/simple;
	bh=6jlh5XVMxuoh7iKAtKd+2CCM5a473Qz0teifhJxRqqU=;
	h=To:Subject:From:Message-Id:Date; b=lPPVK3w/NpaUMSAHo6cKM1/w1gJVSgKMDWAx5WKF8Uoo8a3kUy7gzEBDDzLjhqsAgNlyV9A1kHvHr7DvTkATwa4xJ+yBO6M9dEthjSFQvw7WG6hqMXhf7flJL2k2bMe3D3bVy5Je19yBbtNh+9RKM8tuysoptG2bwc9URfSP8dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADQ9YhSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADQ9YhSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A564EC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748190593;
	bh=6jlh5XVMxuoh7iKAtKd+2CCM5a473Qz0teifhJxRqqU=;
	h=To:Subject:From:Date:From;
	b=ADQ9YhSH5+05KlbaJhc/Iw4tRLwH0m4QFbfoSZgV4ulXtsNPkiBLDiSaPX8bz1b3t
	 /0OhWjMV2UQCdo56tD+ovxUEBNxtthT975STi9tlWJiSMHRGFPpRlyZRkMIWWAjkYM
	 B5VR58zNTmAmwuok5a4LMKkfOmrhkCXK8C63zWjZDymtrikjHHhNqPpiN6K4cslnzR
	 PIG74+aKG1xfqrN14aBTtPfYHIGygS2eB3FfWlWNLg5sRqmvp6RRulxqOFpk/FbdHK
	 Cvbpdv9jfpFk0UKwFboPMyDQoKea/JXJfQhRIUm0TvuVBe8vmSE4mQ3be765XUOJuL
	 hb2tcQ/h+jYVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9242FC54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819059358.27256.4803297599612239086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded698f98e423b23091ceac058cf46db165c4d966cfeff389da13a1aed39a47c
Date: Sun, 25 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748190593
