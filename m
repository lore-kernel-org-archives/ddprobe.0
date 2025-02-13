Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4710615252D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739473734; cv=none; b=DZlcYw8j3w2xg6M/5BlWoEHB26EuirNjhPn3MCU3u7ydnbicnA9AMWAXdewXehavVfby5VqeCA8kbKt4+B+g7Pem2vMZDshjE/CZ2gZCMfoB7Gvk1S0Z4UrZRdbHzk/k/ltG6wMh/xJTAPIdvwwmp39zwXgZsrW95ozjagJYyW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739473734; c=relaxed/simple;
	bh=T/4dbvFJrEHhm8Guu6rktwuOEFUzdvgr1UJ+bI4KL7E=;
	h=To:Subject:From:Message-Id:Date; b=uXIgbWmrQ48ox7EuGF2DPOqo86+JXgvrmkolCxgvhI1d18zNXFAGxM73GlQPi5Ilc7u/MZaAJZymcneLEiIJyWZkXaHbCm0ZeN4xwt5lMbwkdW5azr5Xzsge/kazEHE1l8av++eomCc8upSYBnUwfdhRBIQWSHFZ0RJ1jKkyhMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahD2RSXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahD2RSXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1ACC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739473733;
	bh=T/4dbvFJrEHhm8Guu6rktwuOEFUzdvgr1UJ+bI4KL7E=;
	h=To:Subject:From:Date:From;
	b=ahD2RSXj69tfeZDPb3dAveYJJhMa4YizdcjzFnnQjigawHkKUrdlwtFM+qwf55P1y
	 Zrcn1WUQVfOJ6gzLSzfl769LlbxZgRxCILyPsuXEwih6ctL2ErKJsblrl+3Hb5kTTC
	 1qwKrIxKmIPJCoaIGf2qOgdhY+nSRhIfElWaCfAjKGvV4zSom6SpR1elyOVklH7YGg
	 Tko/eXhUl73x7JIvzElb3WqWleFp3CrqBRikqqC693Wm193X7o3bsPA7aVkUE5FA7t
	 Vb54p3qEiM3So/rV+80uyaJj7rBYjZvisJNU73KFRUi+PfUgzZLII12pJ8UuY5IV4d
	 mkIM7JmRwzMkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913C0C021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173947373358.1618.17260548546256529456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a765152d9e3c15419b843e753706d238ddc433758732bbf16d902b5daf316d0
Date: Thu, 13 Feb 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739473733
