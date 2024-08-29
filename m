Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294BC4C66
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724890554; cv=none; b=E5RIk0rAdTTdEkgsNBGBkNorL0BAb1+SF6xvstT/CCwzUL2a/IeX7KfNbsI/l/+s0CDDfvBga8KOk6tOhD1cU9H0hV5wMbmH6E59LvRUJ3OkjhJFS2RBD1mLeyBr14kP6J1SKnmNzbOg//XzStFaNqQpzkDwBV6p6EsYftnvFhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724890554; c=relaxed/simple;
	bh=ORdfo6PnnseGUanIp89J6yh2jwqQCqK63jH01Tr2Fi0=;
	h=To:Subject:From:Message-Id:Date; b=AiBwM66cF6lbMhrpWZqFiXWhZNSiKgH3oca6eEoK+lBlKL2tsGecjeZed/Sm/yn95fi0m3Xh5y4HsVK3+blXJ6972yg9wRr7IvwJMN+iu0oG0HFRcEowoBzKTAaBOah880Q2gP1eUyEWZzMwsoOue9u3L73+Pl7mO/veNl8Bdo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nu/izBRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nu/izBRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89A8C4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724890553;
	bh=ORdfo6PnnseGUanIp89J6yh2jwqQCqK63jH01Tr2Fi0=;
	h=To:Subject:From:Date:From;
	b=nu/izBRVIFzArNPFJ9AJJ/WY/wAQydl/2pwepDTjBYrDr7ug8i/0fm7flSDVATvEL
	 HntX687hw9gs8KCjIkXAYZrpouahhSzaNDeoEIO3LVQwiEXOJueHhTu7Liwkj5X5iS
	 d47puowWCm6eHVkhk2wwhmo85+IKBlSHZm0jARlzM/wkSkl+uZkP5mQ398WK713PZz
	 aQl9cObIPlg88e9kNbujr4FTOI0bJNjjFSw+cKSm/KeTvjbKXy6q5IxsOoXdd3LAiS
	 xYIVGS05aylNaNKvu0TtGBpwPbiUellksTgFeV4JQTElvbAT9gNfux48jNQIbYOCDy
	 OnImFvzbu4eWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93563C7114C
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172489055358.14881.9695648011728761648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29e3896cf4a0da998bdbd41ec33c10f0a5ccfcca92d0453efab0ca981a12104
Date: Thu, 29 Aug 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724890553
