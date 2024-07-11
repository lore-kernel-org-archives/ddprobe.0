Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461B1200A9
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720722443; cv=none; b=nzxulJqdZyHO+GUBG+ftORBs1h7+N5GXaHq0A/6Zhs3KH9XSGdJxOT48nLRg5F0WPdX5L0HaV+BscO7/rzWLmVcEPlN9T7Zo3FVR5XqeuUM8GecgYAKAsD1dmBQWpsXmOXexHcrWjsPxuPjdbKPYJMdUK40VcPSxx4Gr01s8ITA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720722443; c=relaxed/simple;
	bh=KVWv7syMqMg+Ylyz90Xzp3+QXNYSb81lVb0gW9Upb6k=;
	h=To:Subject:From:Message-Id:Date; b=hJe7POm49woAfl4C83AHJtIdA+p+APrP1jdunQe6yVzTsFHECp3axQFLkLxl7O0R1RBMZrld5ml5I60dHGMeQvMRRLoyJT9VA/krLAgSs+J/EyIdz1g+Q1kGBtkOZRfduJtt6RuY6f3L/Fcu5haAzkXXnICCUJoj3mBOXsS184U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyyyrbCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyyyrbCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42B1C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720722442;
	bh=KVWv7syMqMg+Ylyz90Xzp3+QXNYSb81lVb0gW9Upb6k=;
	h=To:Subject:From:Date:From;
	b=gyyyrbCnzS2OTlhwK40PARO4zmnzaxQckvLPNR1UglVwvcube34+rsKuvEF/UURwq
	 djZ5IMoOdvtXW7YrIMSXdjZMH5w/c+yY7AKa64zcZkUdBRYncK5o01armqHcVbf354
	 ippN4l4LQEjClsoDX5B9DXDn8pitE6yRo5pNDf0Jeuw2EG31Qt8qG99+jW8cs5PlKY
	 8rQrvDOijlsKM7GZY+S5cUTwEJ8ahEDkz9t2Omn5Hshj6JBe1lsFmDGT8RgSGDSrwb
	 dTgaZV3MEd9s2BnyfxfeAgWcyU4iW5DDq8yUQ2WLvyiXXkm9FVJtxE6dsg8hcDJ7jQ
	 LC5R2acX5Racw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2553C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172072244278.7673.1832330749573030911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28c5835da260f7da944b6a4f0f26c50befca20bd924f20008ae1edaf0c5e912
Date: Thu, 11 Jul 2024 18:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720722442
