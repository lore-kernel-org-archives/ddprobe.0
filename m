Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436663DD528
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787214634; cv=none; b=J5pF3qaLfxJvZd9ht87laVdwZapUlfsPSvj/OwnsAWjWE5X+vWqM33XIYibQR+Y0BQw2ulaj7h+TPXmYrqTlF9I2Vlv82cHFF8+ybe4854/UZEUYEZHahAeKcYuNwSXzAJvnnAIDHXqPk1bKfp9MeMEaPPFGsg5kdS2Xe/tmShk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787214634; c=relaxed/simple;
	bh=+7tw6AuM7wLyf0i0hr2tFofBfXuWHp5S7hREwUoWZKs=;
	h=To:Subject:From:Message-Id:Date; b=RVvYbO1TvYreAb3LlMmT+SAHwQlLB+eXfUk9UqveGl2rZBXsK0r5y5AAd87Ww5QkihESSjEPEtMXhvkkxRbMZbBVgfdImBKNIgAQAzEDBKonBxpJdKKDArrjANFVetmzHtV/VL1khZya0CW3hYgwTYEIZC+D+eIDCVil/wGZNqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elJeOOW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elJeOOW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E35C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787214633;
	bh=+7tw6AuM7wLyf0i0hr2tFofBfXuWHp5S7hREwUoWZKs=;
	h=To:Subject:From:Date:From;
	b=elJeOOW7ZDTt1XG+tJ1c/4NACQFbbbVHTAxbDj3rsivRW6aQcjGJBnWgxEkAT+cg2
	 iKaAo9AKSI1GKSyp+jlF6pC8FD2nIKzt4QVAzDYj5FXKsV++ldwUoVWJciJyywFWgY
	 bQuKUofJM+hvpAxzThZO9H0Hscrn/pbq1UxbXqaKdEJGqDuJgFQ66DCX+AZUOTNpej
	 fF2PbIvoUQRsuImrKTVqx1oN+BlFLHc6Tmi72CC5XPMr9N2vXNmVtN5b7wOf2T7VcC
	 GVXJbWIe851Irli0LWqaT19HvvV2/YAaxo+CdYn4QXXABVd205Vad3UebfhWUhNLFo
	 xZWdWR3j4Xtlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF2C5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721463369.10067.14923015569515249172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b39eeff99f5979b9f6f490279b197fa3b9b149d3b10d2dca4997c309b35e613
Date: Thu, 20 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787214633
