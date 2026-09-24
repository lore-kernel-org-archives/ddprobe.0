Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630F216A395
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790227834; cv=none; b=Dt80Dq28i+dr384+BhHv1O6e6Dvy+DganP0i9l0r023jdHwqORhCGMTpnFbUp3NCPTtKnGlPjT9jddvBKpmYRohhgNZd+Ui9jcnjKaWd9kid0zksD4hk7UvwTBCFUDgR1qkLpkQmp9LgdKFk8fa5ElBlc+IFW9ELXgfiDkRgN2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790227834; c=relaxed/simple;
	bh=wNZrCAh8lqVBJOpu0T8hpTqQEzgHNz8kXAKcumZzlhg=;
	h=To:Subject:From:Message-Id:Date; b=tzLR33mrRJeS0452cCtsrLeM4aq7eJNPRV5l3HRkn2z9BShl4xBwGluhlwIiAG4viZxEAz33nGg8S71VVek1+egVGvFsrAZWKV3Oxm8Q9ona1RHbsjHjQ/R5yq5bKqojT0uTFcNtZO2wN8krJku0B1VjalsHD7cz0WHjSXBliqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffmesquq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffmesquq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D493DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790227833;
	bh=wNZrCAh8lqVBJOpu0T8hpTqQEzgHNz8kXAKcumZzlhg=;
	h=To:Subject:From:Date:From;
	b=ffmesquqhwgwPl4RES4zztj7yes5BmpUPN9INFLc5vnYjcUsVFotocF+9OjZVy30m
	 r1s68V+DRdaS68gYPGIuqQz3mMK6O9geXOFF2Ywg6SL60oAYE907QH14OqCYd403g8
	 yF8VO396BYskBXmPEoz+bC2AfULaWA2gWgj1kJnxiKzAQF3PGWXVQ6MCeZMzXrOo05
	 bPJy3hP8Lg0gQ55KzkOZwcNrURAOocgo+dWc5W5be+JMzrtF+j+Xspmx5cAmbcoNLf
	 7Zs6edLbxE0hoVDZnrYSC1d38dPWSU6pg6nD0e6Q6k02spc1N5M0URxIt1QqVf1v+w
	 vodyPEKiMdlWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0234C982FD
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022783371.14693.1230494613450261872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a5ef7efe66a85cbc57d10d93995cf8fb5a11ee68e1ea771ffd24ddbc713591
Date: Thu, 24 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790227833
