Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D1733DEE1
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780545274; cv=none; b=bWOtWtQmUs9yqzJh1uK2sYa0ssvSOhvIgvAXuE2AzzgbjdNe6zB01suZoUsr9ABzEtDrOZY1/XOLhHJjGhLMzaiIO/EiLwr+r2UjRwK9jEkkxDbfSciHii8AwkC5IT8UTj6p01lqfsiNhuq0R0QRd/+ZGfQCGGfwGRbDzt8OPSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780545274; c=relaxed/simple;
	bh=wtzlnSRHZa9a9YSUja+Nn6P8AQ2njnbYb/l0Oags040=;
	h=To:Subject:From:Message-Id:Date; b=h2aQEkrpwRZ48QqRsNYycj9VB7RqdkfZKPRnsx8EpWA8Ll0pILF2aWHoSajJQNACK01Fq1qHU7lPii9ET3hcmcSLpbd5TUVh1g4qAqZTmWrl/qLI4sbsoHjNDwyhZ0eyFT84x+4PnHOoWgG/tujusaH9CQz3J0xSDY50VOikO4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQ3WPP8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQ3WPP8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3040C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780545273;
	bh=wtzlnSRHZa9a9YSUja+Nn6P8AQ2njnbYb/l0Oags040=;
	h=To:Subject:From:Date:From;
	b=VQ3WPP8ymwY2ZrpBJdO+hhTro89QkwlDqD7tvrKVCmDtn7MdGakPYq+UZtW0HZ3Hi
	 swcj1NtI1Un3K6hzcR5w5vv/GIy+mlgGZglG5tZ3+H0PqEYfVnincklQSPtYKQeyRi
	 tkyXeD2OLEvsFU1hVSALcNhMoQS1byfxmGgrXOYuEdNF1urehxQH+dcyxVYbuayC+s
	 GYY21LcBxtq/qs8EvqGMyE8O3j9wxKlpL3zGjigXTQjIzYjH86cT6+KZVXxwiSXdUB
	 4m/GyQMytjKOGxjci7NW16c4lO9mYW/4GOELHrJx7odcpwqkUKxjP/WQNzFcgItF1f
	 hwmLMEy8lXe1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EFECD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054527368.25933.15031715472419445094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d564b180f1010ecdcd3c48a433d7341a5ebb5fef00be1d1b535f4b42553b3420
Date: Thu, 04 Jun 2026 03:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780545273
