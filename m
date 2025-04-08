Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E487726B957
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744115394; cv=none; b=fwHbOFn4DWUxm2wQkAvpTQaKM4JnhYB3nbGSbyPa1lXqBhum8h1CQAHql5TZTS05BWCTnemtWivOdKBY2DfWlC4OjLNm9L5yfJx6Tz4B7Ie0nH5/+guTyEBU0rTJFxDv+XKD1qzRqp/2ypdBoBsF98NLWaXnmgq6AtgaNHIQC2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744115394; c=relaxed/simple;
	bh=pVtMw4oP4JpiDJ5rivSF9hsQcU2Wel+9ovQEh+QXeMI=;
	h=To:Subject:From:Message-Id:Date; b=R8NUZRyKrlIBwzDno3zy1LcFOPrADzkmukyZuBqkxrnZmRK7E2WFjXnY9918LSn+9Xq+jyOPDpjxJud6jZ+WbH6VPHYIvdhYuGvrH6gmuNVepY27ev2mVgoOydRoZKIjeQlXNjdecrFNwarcYJ1CCz+4KS8YvHgwH5xtENDos6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHwrX+qV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHwrX+qV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAD3C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744115393;
	bh=pVtMw4oP4JpiDJ5rivSF9hsQcU2Wel+9ovQEh+QXeMI=;
	h=To:Subject:From:Date:From;
	b=gHwrX+qV5hf0W8kyrFfXGbeIfWYstOBxrE+PpYgJ19BNaw0ZFCZnQpJCMFufLGntL
	 y47FkxxKg5xhXquNn+nbxh/6lJhxuPTTwx+nAnMi6P5QLF+TqZBMQcPTRbcZ/y+sBa
	 UmQ82WzJlSg0BgpgHf4nzlr5fC9v+A68A1qwjHtA9L7Co2wA6F5Q9+IRUvcFon3YTc
	 q+rEzYgEa21jN06WfMoMShBzmxFOUlhCscEdvJZJvQAj+WGhV2wu4Hao8NJZHZpM2L
	 zoMqO+rVgpEbkgTJJcT58jYNMEuY8WWv8iddPA51NNxiBgSX1lJRhcEKJlCPCcN6Iq
	 c7F0n3ljcXT2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9894EC369A4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411539361.22660.1244563559693046866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3c5505c4fd9be97a62b8ad3bdefd5064401409e502e20eff3f9f89d28ba097
Date: Tue, 08 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744115393
