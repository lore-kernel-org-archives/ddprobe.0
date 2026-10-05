Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F37547047
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791172834; cv=none; b=OAnDZlIRM6UtQRMab4wQ+VAbh/prq8BSIBYefeiYXNUpjB9iStP7yrcf8PBhA4FBrDZ9KR7OlZYU5l9gbPhQmak9STGTfSu/qsNRb5BBO6c4YkKp+XopN3Q/WquOxE9Y6cCo8PJ9/m4z03Bigq1JSQmU5cQN3w8izbDZEiWXSko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791172834; c=relaxed/simple;
	bh=I6trwl4dm19WZrP6U1GDcs4b9pIGb5Yc01F2h4Bs2pg=;
	h=To:Subject:From:Message-Id:Date; b=qgB+DcaxuxQ8ZXbd2kqKvOhC2lQN/iNbIvHtDJtNu18O3AsmpGjgd/9qXtZZXd7N/PANQH+TzywSm5m4wC5eyti6L80R39XyjV2i7VN9Pm53To0oH+6/T7sRQqdfsmV1fwy0DHaMWIbe005tnYqlb1jtrRhW9oc4BgEzHxsRxiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7xOlUdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7xOlUdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D579AC4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791172833;
	bh=I6trwl4dm19WZrP6U1GDcs4b9pIGb5Yc01F2h4Bs2pg=;
	h=To:Subject:From:Date:From;
	b=X7xOlUdK0u8nD7h/RpIEi7ZQrxkeQruq7QmWnkU+XKhresxtR67dOMrGb08YG4cBV
	 1ov9yOP9MhbwtYiZTKzArq7KKwJ7iyzmHQY4smaUpM+MurvuHhfD4zylN5M8XgESno
	 gzSbfR7R95tK6LZCbRqvktYYXvkdYrfCmpCcl8j25BxDO2aHsS/iSz+n9nUHe+ruuR
	 MDLJRqJ45VKl0RnIJY1Ci4bTiZ0JKnWAxX2V3O6l5t7rUzwJ/qClnmQctck8TEFW7B
	 Ei4uYDWZsKVLRPB8esCFxGkTOaiWZVzIAmx/32TakxNDaVKGJa+vdFAt6BvAHUUkuA
	 l9iHhJ1kvZlzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D56CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117283369.18776.6287338684760455082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58de242899b5ebebeb2e66aee46d19a0dbf7b0d518a197ed661351a50dbfd3f0
Date: Mon, 05 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791172833
