Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7AE26E702
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757394594; cv=none; b=d7zty0F5EjO0ESQ3jKIJsoZGE8SG2D0K6k3TYJs9HpoqzxrPgMrbiZmoS2mS1fd/QXoJ4zG3djU8uPXAUwMsoLoJxDxH+f5AdrwpYhyXduaJ0aQ6IEsYTWugm4XL/HQYDZ3kh86ImKACEETv77q9a4QCpBSYK55OenJptxrjCbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757394594; c=relaxed/simple;
	bh=vRuOV5lWrnL7LPJc9dqPvNZkyJo9SUMV3vdBngeDvSk=;
	h=To:Subject:From:Message-Id:Date; b=ZEMLhcFctzTipv7EuCb7QviyZTGZpM9L6e46XHTNxN7zL0hcwT4DQTgE111tgDXmp8lYU+msfs3FDvqHa9CCapjCVgjuLSK2YZZiaUt/dmwYk01tDKy/KS7+q7caAvAVKo/PmLaF/yCLNfVFdx3L+72ky75hzCYiLD3V6q7fiLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hr9UtjYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hr9UtjYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17DEC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757394593;
	bh=vRuOV5lWrnL7LPJc9dqPvNZkyJo9SUMV3vdBngeDvSk=;
	h=To:Subject:From:Date:From;
	b=Hr9UtjYmTsxAFE1W4CGHsx2iU3qqdLcX9EZz/eb8XhSZ58yjgKm4HNe7amsWEUN7R
	 dWo8EuxsSTwRyTz22LWda5Qqz7WQPVam9ynNLmcigcP8GvHN5auvT3XYZW0+kEqt5P
	 uT6P2C5vJDLIrJH/V2N9OA58xRfY3PkmU3WV1O3rrmg2xUS682Nr2Tmze41pORYnyA
	 nCFc5X8Ew2PK2FqXtjYDVxY0Z4RvER1b+9aN08VNl76lel9cpnZocXAzYB49jqpGGJ
	 I1QGtRgfzNZvqKFQQF6Q3exsPXWa+S1djDB5ihbdVNUwo+bH7oxiaBvQpmj58CJGZH
	 zakROb5u9waQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F741CAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739459357.408.18207801593929390876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860f54508565ce4dc3ebd58baefb7ff934634d4dfbf3b9cfaf7f64354ab8d2f6
Date: Tue, 09 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757394593
