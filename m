Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D673BCD36
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791330634; cv=none; b=uJj5mrSEGy+Cvgowjs4MH9cowKKPH6uzE1SpC+esNOztIJh7uW2PnNACCGeRPOa0XiLHQQJ6daFLqIgunc5ogQs5VNPZ0xP7UDJ/U1de5s3FxCYsEvpvhsSP6sKvhA9Y91EJ0xFeh0wRjeihDwd0F3rl3R5QFHsHyc6quoWsp2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791330634; c=relaxed/simple;
	bh=ffwVTCqDO/QkIGPIIVAHwfElVe6aZyNoqZbz0Sqj74U=;
	h=To:Subject:From:Message-Id:Date; b=p0Su2E3vZ8pzM8vJUeZcjy9FRJEnJ900z2oEtnJt3rJ3qi6Uv3Y8G5X1zrCSvC/m+C1f671neGTEvYs6ZsP4x5Imn4cmgHGni6j31atIer/PAizQG22htxUu3WC6isbiwj1wwufbTMS0TctgzT6FXEwmYAUur9DD+qV8IYm5IOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCaUCErB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCaUCErB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA132C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791330633;
	bh=ffwVTCqDO/QkIGPIIVAHwfElVe6aZyNoqZbz0Sqj74U=;
	h=To:Subject:From:Date:From;
	b=dCaUCErBlhWL3xK8MzsuWiwoxmUNmnxsmgLxnk3WN6ovAwbCBAMvnEjNKAgjD68q1
	 YCkG8gLHMRFbiaEpPEar23NrJR2K5Lh4BQfmo3KBZTrJQU0enumF1TCd5Mns3/1kX1
	 KX1KdneHOIce/bOmolUcpLCjonxQf6nsOahUhTo0T2UXFsWIk7jcpyWnHG/5qmWQnL
	 6Tyz5imLAH41mY0wShoay99dPVdDz9J3w0RqoQ1a1YlyI2uUHTYjImCsSRkPxKR+j0
	 0bRANRX7MPFx756x/tZ1i4O7PaNX9pbG8nsQiTHn2lWcM7wajWIkJRG8KLsH3oN3Vj
	 KOH+M/DSMH7MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8F4CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133063368.13358.12005679694945626663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf15ec9da946e0f8a0cb80a5a949b296dc5af9813bf0963f3fc47e51a9751799
Date: Tue, 06 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791330633
