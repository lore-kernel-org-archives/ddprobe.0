Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B090A32
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726887954; cv=none; b=pDhmCyJ8Qzw/vO5ChbnMeL+ZqIHT1PtbOIo4iNVIWaQICw+Bg3999QAPheuBEhPEEWt7VLr9CwNisvWzfmFg0GVb3tw4vmGrOCyUYLSYNrJgPHyzu07xXB2VOuodLFWx5tz99zgWxmHIiBKGd2+bXdCJ2IuGfrepUx7RVGP/YYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726887954; c=relaxed/simple;
	bh=FEAvLcUT6OMRRGKsqb2BbVB9z0RRGoy/pBrOyuVqeFI=;
	h=To:Subject:From:Message-Id:Date; b=jTsagyfAfvSbRoXV/JGiqzx61jvx1V/Fss/oy6OxJU37AknCps9sSf0a7/rzeDRSMgu0chvGC3boe+gX+86kyM9c8u1SNkAsPYBeIfKO8YrEl77oO7aYZfbbPVwy6EbbkBzeESzcPQnxX7j5W66z8AzaMH8yZeWvy0e1/qn41zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6uq6Xtf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6uq6Xtf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F87C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726887953;
	bh=FEAvLcUT6OMRRGKsqb2BbVB9z0RRGoy/pBrOyuVqeFI=;
	h=To:Subject:From:Date:From;
	b=m6uq6XtfrkZRYOKVxmuXviIjBrYjB4hv5hzQ5eHMCv3VhtcErKx5rn8cYtC5uX3cy
	 /peBaCtbS2Ji5agEdUwF6nddbeQ/ItDPdugI1dUg80mbtd67GgUaASez7MnervPf9I
	 9JVU4eJdy4yGfgiIUUMOZOoqxaRX/68fNBNClifUhLfkqUZ8CfhwJ4dAoyj33KgUlK
	 uvbnyhRHY7WF0v18D6xdRBi4qTmyeMPxds9wyuYXqsa3eCw/375ZrJSVyGJaU7uykR
	 +qB3bjuvX4assAntcCLr5HA5ywL2ImD4v+/Ei03jTnbk+VZu6IXOsfNcaq5xSDQn4W
	 P1szQ38Ajhd3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EF6CF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172688795359.10581.5134761591627903144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca90965b23a9b4e458fad87728ffe7270e02b9def366d3d3435bed2c721a001
Date: Sat, 21 Sep 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726887953
