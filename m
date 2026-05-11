Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4067F36D4F1
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778469034; cv=none; b=Qyx+m5mn1+PfHVUa8rqH2NMSsqr2qekf8N3Ukoe76qF0RAUah3aIE4ARGuryXa+2fG7uK8anDughJMt5DmG/o9YCztczqBY8mvArghi97KrQpL8GbjbIEHtJ/4QlkUxsd806aKt6f0Kv1u4mfYWZVXSbjFrhTHsszGAJdS+3qWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778469034; c=relaxed/simple;
	bh=2JhxYLDmWqHp70xJyT29emoEcuXUlF3FLe21mcJquUk=;
	h=To:Subject:From:Message-Id:Date; b=RW8VkjBWGvxWRJ5FttMnwuUc4s9O5Y01fU0szzcRrojbTwipaXHY7rSqXr95L+RpzbnJchQ8zuDZCJVZvUizPBMcvFMr9jWNb71HqzSngRLsaJ5MQ1RQiJKvSmddw7fMVjCU54a92KfEiDEIRhykTkfT6C60lbpll2N7CT74wKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGFZIhlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGFZIhlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D99C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778469033;
	bh=2JhxYLDmWqHp70xJyT29emoEcuXUlF3FLe21mcJquUk=;
	h=To:Subject:From:Date:From;
	b=YGFZIhlBCQzKKTltqE/onCYcEEcBGt0CMLA7zuRitcUYhnu7MhylWa1pTQLYGpFVX
	 5ee4Wrb17OmmtGjz7DKsRhI9Giebb2dVnFPLj6nWtJk4l6z9wZXr2lrGefNxnbiiub
	 Q01j2/g6C+wFIN+n5iNwotC1fthVvVajwylk/OlMXtWSmW5uLTOYWQUBzUIXUOGrgV
	 Hiou4Oqt8q9NznHX3viq9c8E+dsrY9AyIDr17SKLvLul4ZSmbHD7Ois3icFI+7GiB0
	 o9fvBpjUfk1RecmAh556JWB0cqPdYkcbhMxh/5zaidLT7eA0lDvoujUlhRRqz+twhb
	 eh/3bkQfWsoUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39BACD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846903370.11980.13906821387908249169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7284367edb92d9d72cb330a332fa12e79705f8f99fbd25faa9426bdbcabc83e
Date: Mon, 11 May 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778469033
