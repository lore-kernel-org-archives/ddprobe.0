Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396533A5430
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792258234; cv=none; b=RZt7e0o0D6Kshn21ZuUUCsSa/7HY55S3sWwQNGdFjsJxF5c2ZSHXV+8FUYDYZcU3UxQOjTnG87eM+sSLQL40zjN/7fnGABaGSd5i8fYv9KKFMhckTKDK+iR231QWGRMYsNa0XGcaNQKNUAY6wgOlL2AxhgbVT/bouzWd9jhmXMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792258234; c=relaxed/simple;
	bh=nyL4F1E6wdOFC0m8uErMtpspODccPRy1yGOt++m3YNw=;
	h=To:Subject:From:Message-Id:Date; b=emGfWrac/rTCXAJAgpEdJx8rcOSMXj/G+C9fIL3r8exPsTUQlPZjINmemxkOLSA2tO1YgySMR49iStN1tLci6fhVACsUSLVxc5Df4um6MY9Dv74NbH+dBvYVqQFRQb73izC41fT5zw7q1R9SXtUWoe1a8/QwJLzlZqn2+YcDkME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3bAkhpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3bAkhpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD993C2BCFC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792258233;
	bh=nyL4F1E6wdOFC0m8uErMtpspODccPRy1yGOt++m3YNw=;
	h=To:Subject:From:Date:From;
	b=A3bAkhpd7HBFvBZxU/mYg61jdgGKEVgKYWSU5r6Efrolq6pjc9YCxZRrRLeSp0WeS
	 GUxPUSROQsDnoibBgzpOtKGAU2L7qec4DveF9eSC555UeRZ466nmSRtr/k42zFbe30
	 JAUOOcpQczKKcRUFMwezrQqBaO9wKBoVgTnftjxbR9TM75Qzs2Suzd3QiFisF0qgwN
	 xb7irAvozLnqZQavSx8B8OhdSWO5Dgdq5oobRWMJQOIHcOrPixN9mlFRKi7FI0zFev
	 qkH+wPRn8QDHDMmx0ypBRw1FRtsMPwsDqx1P8nIbHfXn9lqPQPYxTzmu5BX4UhbLV+
	 UC8R2Jymk9DaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52D6CCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225823369.16078.16112186435708051277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5263865fe43a84c0052d4485a0d32b600582ff02b89b85880b8bd758e724c414
Date: Sat, 17 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792258233
