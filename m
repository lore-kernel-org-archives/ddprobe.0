Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C2B35CBA1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762895394; cv=none; b=WeBJhwIsh9c1tCd/zm4vka9Z6pzg4vdVd60akl3Utw5RUazp6vzuA2J5D3E6Q0wnkuQM/lIsTLClnvieTQPmNHngBHcNZ5E++iG1LlZzNdf2cPHJcoYXgZ7eK0LoekYKlaub5zBBPaoP9AurtYg/2iL8tGNxnqtIXpauRy6hXtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762895394; c=relaxed/simple;
	bh=4ptOJqQQZIWpC7i/abqE9I3KRHJjLJ7xZ2JYr/tJro0=;
	h=To:Subject:From:Message-Id:Date; b=UI0NriUGJEuRTvZrxi98KBA46i6wiRmjBKeOTpIvmHKSqoDLmEBUR9htHz3l/YpLRNiZxY61xBEwUqlKmZsXGqbLOMkEstturdVp4ENn0bIQUH1eEPIzcZWepyhZNOdZRWBBVD2mAhuv4xcPQYETG5ao9VZqCnDRycA/lnH/KpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTSde+2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTSde+2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E86C113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762895393;
	bh=4ptOJqQQZIWpC7i/abqE9I3KRHJjLJ7xZ2JYr/tJro0=;
	h=To:Subject:From:Date:From;
	b=rTSde+2DwZ5Qy9kqmX7Eb647IA0gP+ChaZWGoTte8yajwuZblUl4y9k2vXtqNCHf0
	 LE9vBq0tvo1l3VIuMKeLZPvGS6po+GrmmStQmcNvtTQLK0ssnnM3KRi9OERs5PV5mc
	 PHeRwZgU+dS6xk3gM7vLmsXaA5/25F5VIXx42oarAATmugcs0HAXD78Zm88bmwGL9a
	 mzKnXAjElOeeGyU2iUEpfPv0axUmmVbgBnpmwFCNd4/fSSdo0Pq8xTZAuDMi2u0AIo
	 9oBYEEkkxfzvlpTjEiwhzcFuEUfWYTb0z390tnidCU3z0GNlPCI4dSnkX32cVwft5e
	 d6ePb9WJITo+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE8FCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289539363.10055.8403152871652861867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ae559f6d176a099ed730ac46891a7b8a3639362172351f111e5f1a395658aaf
Date: Tue, 11 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762895393
