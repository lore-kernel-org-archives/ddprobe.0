Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADAC1DB95E
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771811094; cv=none; b=gfIAMkEfHxe8KX69BAnfxBbfGjU3YdSqUqpyUa6LeLa9RhVxKIeNJLLeFG/081bh0qZMw1830U6XigdI4JR9Rx28ELPZENqLKZhS/BfB1bETm3aNgAppyy8lfnEkWDp7VLByQN2LClZQEZiuZNH11P65I81R65bWggxy9NC7a4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771811094; c=relaxed/simple;
	bh=0vxmKdK1WwfQ2ohM7ct1gTVZVqrBf8uHeG09H5T0H90=;
	h=To:Subject:From:Message-Id:Date; b=tvH84qa2TupHh77ONG7J5RdaO3U46pSNJyJIuYrIs0G2pPqbG5HCVswImuSoeFjOp5ITBtO9Fxkouw9/K53sqs9VpzyLAy4kp/6ZlZL6oFfz9/ulY/WNJoRjLZZW1Lvef6ex5xnGNmTzqXuHFIk+SzXV2ohwJFa3zEP+A7JlvLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLZ/QNkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLZ/QNkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B966FC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771811093;
	bh=0vxmKdK1WwfQ2ohM7ct1gTVZVqrBf8uHeG09H5T0H90=;
	h=To:Subject:From:Date:From;
	b=uLZ/QNkZl0EBkNMTmV8Gd7RQQqs2CCskmKm94Fq5bWpBZiLHxgDOgT9n79Iw5q08G
	 c3UsV81O9vPtIgQJnph95gfUp1nwhPCrrKkMJwaBIzGzldqPLqvNDVaaBq7sqhnQxq
	 tbnVtx/mDEuSWljDfefhbvm7qjTC8GIopvA6ZWHh4Q3FyNDoV85SXjWkquVQ0fV+Z4
	 RUwnAbxucUFShZc3QdAC7gGZib9D0uTqqlyIseS/ZP97Vxnhmf8wAFmq/BQPbamF2L
	 CuWGo4YfJA8/ug0SpbunockDUA2ebZwCdosYpKeLPXV/55aZQjmuAWferDkzxZiYZk
	 Kfr7V8m5oPF1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19CEE83831
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181109363.13679.1554444443815890933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9483228e2fde8302d7bcb50155cd165646fbd678c3a20050cd8cadf28b6faa
Date: Mon, 23 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771811093
