Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4022B8F72
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718977943; cv=none; b=o71uKJgmOdgXEk9dI3BQdAVzur75JJ2IBH7+w40AxXjUIccYWaxYcc+Xy23e10xg6s9H5D9L/JSU9XkQQioUbKcfFOHWT4/0WQQCo2Kkhtc43bbjdqK0RGoi9YTG8zLH6tu0LHIr5ov226s28uFyAAsL+ACUJJxq+QpvLYnRqCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718977943; c=relaxed/simple;
	bh=ZqTNfvSZjhzKcgq7fGG20yP8f93uqoGerjhtTb7nFcQ=;
	h=To:Subject:From:Message-Id:Date; b=eQhxwzgGlrYjxKHTrQNzcCWbLAyiYmng4YlybJs9szHNG1Hx4z5dVQjcEgfbQvLDs+ZuQZNI9XWcuCYsqe/L4jsQitnRxKWQi2pH1Aywdjpmdmsi6xjpDl6keXaOJkD8PKotWaNYoNsZhhuNmYfJ5WW1Yz7kILko6bhN6ELAwk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlSeQago; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlSeQago"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA442C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718977942;
	bh=ZqTNfvSZjhzKcgq7fGG20yP8f93uqoGerjhtTb7nFcQ=;
	h=To:Subject:From:Date:From;
	b=jlSeQagoF0pQnOBAqZPQRvfDAfflan6fEG0NhQsygpyCpMq4wBxF4AJmciBzdsR5v
	 A3vTJVx/7eHiByGre8Y8oQzNGXWQkWN8ptameMhnARuFbvVXi9XJg15Ini5FtxKMfc
	 mj7P7058STaQLZtFlt2J97+BT3eW8VCGpLQ5vcmdslvXCxvvJWmenyOucMk9NRllB0
	 CAZliyv8YCtrLNc0fC7hvU00ttZdH9b2V8QVgWvg4hd/qHhcGtFa7c8FQJJQHzjiTB
	 93pnfdo10WZdd2OGxjFRE8bMqBZvwubvoW+y8lJ+zuqwe1Tjgk1AZC8jsNfZ7i2EsH
	 /BHx4+j1tAHEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8042C2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897794280.9368.11482654446861296785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b58856f36975070bdf718bfebc3943251882595ad65921b09a127d82249af1b9
Date: Fri, 21 Jun 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718977942
