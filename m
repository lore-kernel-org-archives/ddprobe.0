Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4046D1DA4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735077954; cv=none; b=TC9tQ6zkZpBrCTJj9Us2Qr6dC+5h1HZyzvqeQEnxarTheJ/QyHg2CovVqfhJInOdldXguwk1xGFfoUT6NG1vUdpRr5PzGdVGDCqQmingj4QIQJC6yIgcEDSgmcvoqc3b6+x34feAD1m9So2XD2wgTXnaWVaNQWE+g6kHhSl+zVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735077954; c=relaxed/simple;
	bh=yyXh+Wx03o3iOpN1AD5gQTACCyefTwmvycXiRlGkrBA=;
	h=To:Subject:From:Message-Id:Date; b=pZGJ54RWRBjhRwKlCu4+Z8311kgWem9rGii+0LkC8eaUIeLOeTCekBMeR+iGOW+WM+wUHygLI+S3lZjEgUbACJGEVSly98tdKT7wGWLxXop21FJeLY8QMse1Z6J1YemZISpfgPXSB/UKoaXNnvtlzMoAgJQ5wGZXnlT4qdSW92Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+/O6Zef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+/O6Zef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29DFC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735077953;
	bh=yyXh+Wx03o3iOpN1AD5gQTACCyefTwmvycXiRlGkrBA=;
	h=To:Subject:From:Date:From;
	b=l+/O6ZefvZswtQI5gcT/vhCXH1rSCL4xmQOyXUk+H8YIagOxKzTMnIGst6zfjwycK
	 o3lknkKDHO4xMhKIricd1R0XoH00P6Va+PIWwA23rhYJuO73+0Qy/wc6mIH6gJ+aJz
	 NpMpm4sgcDa0Ih2M7nlSDAtTq8GApnohMlErQmRBi6pnGGmSb61jD2FkOQyRotpcgr
	 3UlnJMivmX5sodHyRqJkzXFFHfe/NQ6A1Qr+q+6PXqW2C6kNc+pj9Lfx1bEX4OpTFp
	 /V1eYIfCubS0Kb+YeM6DOtz1jpird7VPaw9L4crHIIDsMooiMwsZhHa+569l5i/tcq
	 KzoZ7P58f7+HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CC8E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173507795359.27743.9115104781296952945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3860bb29a7b5c9a40abffd31112d99393b43a3b2d158a1826b56cceb302fc844
Date: Tue, 24 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735077953
