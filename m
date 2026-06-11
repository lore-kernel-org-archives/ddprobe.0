Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E78340D573
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781150794; cv=none; b=GFIhQHXTjJqfy5sQiZWSRQ4IjjA0UovjqzP0DCxHSuoD02kEJ5FDDh8Whvl2gdLNWcKWm2GjfQR7aBjRgNQAo6I4HuK/uNeHwyE8uDQH8BZ4y6MJHE1YoAlRjU7QfREezR9fuypplP8stNcd75Tu3IaktznH9yv3zTZAdaOPtaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781150794; c=relaxed/simple;
	bh=ZmravyFIKt/MOCH28cKwGM6EolVwOI6svm5RHe5gkvk=;
	h=To:Subject:From:Message-Id:Date; b=Z0TvQ7ayBYCbnRLAYzoH0gr0vvY7L2NuW3UwFvI5pRLxr8Pms3GXQaqVReXeCu6a03qokKVJTpIqrizhrdLODJtp/oe+UwhUMuCuYkq3txxqR6hWuagksRxFl0oorS63ceowkixsDk5RVV59WeYK7lMpnrRyFaVh2HZzADbN+A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sa+tI+ra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sa+tI+ra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB19EC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781150793;
	bh=ZmravyFIKt/MOCH28cKwGM6EolVwOI6svm5RHe5gkvk=;
	h=To:Subject:From:Date:From;
	b=sa+tI+rar1CR9GD6CWfD7poIcdsp6CkQA6U6mvkyGvwNRY8gekUGV+ODVND8zmnai
	 OqiZGKTp1darHEuZD9ODEJqcbDipBMA0bcz3k1IR65VTZiZrqT8w6cJ+aXxCqTrobR
	 ZMWHsVk2wY8XocMH01w45puC1qmjUZoQxYTbtcN5VjjstYHLRV9HMM4+0Mwur85xVN
	 L+YkGaamc/CUggs9OH54qg0UEGLId+VX4X3UM74LQySMSSAEhyKXihR/Wo0AIw8M5B
	 +66GxxCz1MKjsMAqMSYe0aVpirn/6couk07dDV/U5TUkbHvJ248UwoyreovxnF+bdQ
	 KLjNOWEgI3GkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE19CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115079370.10312.13343506416645805185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fcb9d0809972c27963b390ed004aaa9608398b86cf86ee96fbb45ae7d4c4676
Date: Thu, 11 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781150793
