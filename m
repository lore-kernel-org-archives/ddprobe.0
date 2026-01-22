Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24969221721
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769040834; cv=none; b=hg7qQ/KzGDJvkCAzDOZjbkhWcts5VjA+HpLefUmF9jGan/ry814v/AAiLLMOlbnhFlyhFLpm2eqrdBtNTUw6gALXNO6FHcxBcRAAFDCu7aqw17bRJ213VLQ1mEYsohetU+sFmJP9s2GY6OqbSKJaZRwbgZoa+QUqYtsUGvUHccI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769040834; c=relaxed/simple;
	bh=OoN7VDHR/gxTt4o/MDXl6peLjqkP2k6YAIweEn8sEdE=;
	h=To:Subject:From:Message-Id:Date; b=Kg07VeZuI4rcBdSXeR1T2HqVlFOWMa6Zd5V6hSosNgW1SkrLYmRYHmDHo3EvTuL9GWr/8K+xW3ObQYLFBsPWU9Gq/Bqtj3WyUpIqbpD7UrKToqRi6ZWlcCZpgaSZkXgsUN0rQltoIbBzCt4aYePxHADQn9cs8OV+8QS5CXn5Gfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEagxZM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEagxZM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49E1C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769040833;
	bh=OoN7VDHR/gxTt4o/MDXl6peLjqkP2k6YAIweEn8sEdE=;
	h=To:Subject:From:Date:From;
	b=mEagxZM/p1AtXIijlv+CYpKpHiYvvS/fH31AcCy1xqXVqfQY5eNjJKkAZnxlbzBNb
	 9AvI6NneYEYasQ3nv82XbBnnUXaOnf7FDnwcIC5cMavrUM44NBHskY8LQruJO9FVYE
	 bh7u3FEPmQCWX4S5kHe9Dc8/CTybFLrsqJjkVOIl2EKms8rMBQQRTMcUbRzKaU0VSS
	 UceWgYwg04blS8NNsLocP0E0q1YlHvb4XSfJA37g0m2VZ0iE8PzoLDPdDKg/wbaGHK
	 hGoWBN6i13zlX7c8jcqWkBQudE/gqzcIfsrmzd2wk3nSnGvi5zPG8aAPHBF5ZEBEst
	 9xnIdvTe7vcWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91773C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904083358.25084.15760013034728511276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c20f04dc464a6349a10ead2be983fe0b88f606228e5a2bda4d8f8f889c5e63a4
Date: Thu, 22 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769040833
