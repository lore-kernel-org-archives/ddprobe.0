Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F8313D516
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 11:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729596955; cv=none; b=trUf3N/vHjdiRKfj4KP7XV9EPp/ZUm97HI7enoMNXvfiU+GZ/bBMhSdHX3VwgkqIjiYsgjC9fcEHGzOu7sax7WjpGcvK+11kkYnBRtQ30Om4q6zy16GoSOjvsMkQvAV0SaUDDgT0R6nvoj4yy+mgDyNgnJJ34SlatE3wFHl7t0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729596955; c=relaxed/simple;
	bh=dRrUXDAu2B+0+xVBYBxDcn6UdPIGDNtHJ9pa8FEOFKQ=;
	h=To:Subject:From:Message-Id:Date; b=cxTLZu0z2OquCMqrFY8eAmhRWX+AUoUuyK8VyCs3Uur0CzschQOHatPD0k502yskUChA3c5i6tVW9p2iZ8kvRrR31hvemj0j17QOhOkGjLEQQkbiu9aRNRmR+L+bgPbtp1RtEy3cvqNHQO31s0iekC6Z3epOiWf1iISse+6RQeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCew9W+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCew9W+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF50C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729596954;
	bh=dRrUXDAu2B+0+xVBYBxDcn6UdPIGDNtHJ9pa8FEOFKQ=;
	h=To:Subject:From:Date:From;
	b=QCew9W+8sGGhCORnRTYBbYqoMjxLtRpmaBSjlATjZFns7JLa0EpeQQ8FoizK72ax6
	 xu2ZLd49PRlY5T4UonUUMPc1muo0A1OIRAXl8VyXN5jfXJAhtBun68t9I+xysDfuBr
	 18khH7ARQROa0f7XsGa7aAQJQBJsQK54qRc6l2XFoNUql6a6Dh4M/CQdGt2r9AOAwu
	 z9GjxAPHGb+AgiJZBF7h9BqVke7VlarSr0ogumNuE3u4Y2qAFvME4KnCUhKo3hVIeD
	 BSgQHlZOzea7uOJLUsC39B66EBbBPwWkd4bacta1bJCKeWe8kZnyztH0yvGFN9aCBz
	 lSdJ76/pAXr+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A795BD15DBB
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172959695367.14427.6379477218059363485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24bf908611229e768422b48167d7a4bc3edf13faa0ce095dc5ade72757d0f1ba
Date: Tue, 22 Oct 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729596953
