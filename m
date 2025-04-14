Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52C125DCE5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744621193; cv=none; b=Bkn/oPeUpvxuXBnj2oXusDc47lFAc8Am5E/9HzOSZB4M9dP9ASz/nhWgH6xag31y2J26KE8MvsTCxpVma8fo9wGaD6lS4W1CPjVEOYTonGMpKjrNMhAvGZsos3ul6VrmjEa9ZpptjPvnao/0NpX4day8K47CngodnvgMfZhcdXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744621193; c=relaxed/simple;
	bh=+6TYy9ptNoYcDfNBY5vKwoWsIvAKqMxEWE98YV1/PcI=;
	h=To:Subject:From:Message-Id:Date; b=WaAYrkAzS1/zgE561oe57C9yOZQTQhcOjqCE4PDP8UqwY542+jBNkVv9CzJ9icwzuue5BeQI1WC8TYhUaW1B/cVF50Yom5F8RDjAq5EFgAMLnNFA4Kj2T+Za7mNnC996Q9hHIUxmY9OoLRvUoYLzGPk9Li/zGwrTLZaqeSQddLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umIdtCna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umIdtCna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45D5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744621193;
	bh=+6TYy9ptNoYcDfNBY5vKwoWsIvAKqMxEWE98YV1/PcI=;
	h=To:Subject:From:Date:From;
	b=umIdtCnabJf9IGhFnZM7BKE0BRt90kRyAaxobIkH/kU95Jz/TYnpl8wlOO9Tk2rmS
	 iNuipsvCi0RLwN4GwTIDD8QqPw05Bz+HuL+vMVUkQpGkcNzOqenBLQsNPCHI4MYgg8
	 jpjGKZQiWtZ4gq8NUliU7hvSVCtZwWmuiDoVV+nbcX9PgG2+OPly5b7uPSr3oE42B2
	 8xdRuDJ3/adwdNGbYqcLGs4bHfDMD0h8oBf9qAlg8xCoe7BV2fyy9iljtMkelS2+4y
	 7ippHqfGms5q3jy7GYuGdg26QhyrzxJTvILP7wjA9S2vyRveFh2famo0hqiND/RI5Q
	 e+hJl/7QRTi7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A242EC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462119364.29733.16917601376502702562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ae0720063cd13206624d0f1dea79a8f59a8d67c8de9ef1966f079e91f89502
Date: Mon, 14 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744621193
