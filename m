Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3932E1F03FB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754587795; cv=none; b=LmAJXX4ZUsWo26VJ4VJZDFDhDVSqrlRNpx0VNf/AmhnFL9Z9aGiKXh0RMQSMc0n64g0zz8P7U1ihdVQiQnO9UzTdqUwZPES/QFtB5KctD+WFulfx4iffkaA+inmBLAV8KazdCZZGdnGqpjuQiR9hkwn/OuqqTEN0dTddLmZc2Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754587795; c=relaxed/simple;
	bh=GggnwmxjRmYSr8Gtazxp5hAwbjkWnkgPK6lXuMxSHJU=;
	h=To:Subject:From:Message-Id:Date; b=Agi9FQsl/ZEVkWpUvO5STn6EZtc7MPvHk9p7OTSjaHmw0t+alIc6gu4Vx2/1oWEEfhqbuQDoJZMH77ji/pv8tIPgvGX2Icam3zrNMz9jFWvpJWutd7MzKcPXkrTqrOXrU4mNBbNY0NI3s7M7RgyeDw9bz+rHMsCfP+qPMxlRwcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uf3GzNKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uf3GzNKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FEFC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754587793;
	bh=GggnwmxjRmYSr8Gtazxp5hAwbjkWnkgPK6lXuMxSHJU=;
	h=To:Subject:From:Date:From;
	b=Uf3GzNKHYD2Pk08YxZ1NH5p8cBx+klP6aVZ9/4MK4HMO8d315C8j11HvqL+TQZ15R
	 zQM7pU6uqDnCloiSiFBZCi/Wi/777tK8B554ALq8fxaf6BQxPJWVlyHDFlvT3YHoc4
	 Q/G1Fq18nH0z7M8zK6c4cEFRrwYPW7WrUKggzmjNGaI+gD6jLD62LbIuU8CeYbej1m
	 s3YwTXJ5CgMIA1YSHxojnFDPUAb9tAX+DKUOlLctf0OpNuJsQA6hSfHeCYLFsY/YPc
	 je9ymWurM4xKUVKK9vkmPTI4j6ySsOgYHfY/o1BkuALmYm5yfef5WVtWPEi5NL9s7s
	 vItacbiZduApg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE089C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458779366.23696.15181851772611068428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146971cc2008fcdb67c8e9a397634ee9c5289379f22a6c5afcd6e2db773c7ee6
Date: Thu, 07 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754587793
