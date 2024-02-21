Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8AE83CB8
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708536497; cv=none; b=I97an+fT2Wpziy/tuFtFigggJYCufQuCU8lfrzdpvDLssfUYjWUZM1jjDny8U5wePTfQJgNMXkI6oS9rybj0sJKNUcEyrsQ335P08TukKipmXfv0whBovchbff1ukfaue+6PhWlOxjyJciSJg5btzv4gUklDRD7za3RB4tR9xCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708536497; c=relaxed/simple;
	bh=6GtUSZu70rVcou7zj7/yqLhu1uACatKd6Ven5Oy9tNQ=;
	h=To:Subject:From:Message-Id:Date; b=mpSflCpbpfooWtgcrLtilubw4s4adS079+uNjx1yZpI+qKtVyVeiFwS388ij9XeNYhUljKlh49IV6iiR9I7dOGCt1yqKXbI0/D9//xFnxW2jMs5mUPWBS03eOB1X364JGI0Hq+NBK7zuWTi89mBdKXjqiGACoh4DQKzRCXggwlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jevK8ZlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jevK8ZlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7926BC433A6
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708536496;
	bh=6GtUSZu70rVcou7zj7/yqLhu1uACatKd6Ven5Oy9tNQ=;
	h=To:Subject:From:Date:From;
	b=jevK8ZlGadDxMrqP1ceoxmzYjjhinydOkX9ffSl4kay9EPoKuYOKzXz26YSd1XVVg
	 0uWbPIiWN8MM4/gKkaJec7Pea4QvGnkvxDZMaCdW3dhFYrJfyojglRkD2GFnhhIWCk
	 5VmMfC69OHTI1GGWSTm7iR98e3R83LgfNWeDDkCiNFgFHYyLLX1iYRqbMbCw7ggG4U
	 zeOHZ/RHgTeHH4F2SJHAbbqOB1s4Yq8Gx9e2xV0QIhxZBOoto2mW9SNQDCJwO4duRg
	 gcwTwKBSaQ2DnrFwubI9gS20qRc5aACm+EbFtApNdR7qKIip7u2tpGMSbjS3iDK0H+
	 JhGaeeKqjfLcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622C9C5478A
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170853649639.30394.16790632709389156057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69aaec305b180c4cf44259191f7af7373b7932602768e9e91ade5e4fd503dde2
Date: Wed, 21 Feb 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708536496
