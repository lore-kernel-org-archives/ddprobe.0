Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A43ECA64
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723167954; cv=none; b=dYGMzBn7yXT/8wvJIpzPJpARDYgBkOIm+TczbN12Q7isMbY2I7G607h/PaS24yeTGHPX+eZ8H9NlajfbFyiJpX7aYfLwIVc112kcATbIldrAjwPMLNmyz1LVobgyT2Y/CPcO36V0bw23d1NwcLmxH+yZbMu2aZ4A2SVPuPZ//XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723167954; c=relaxed/simple;
	bh=3lYsSc/Iq+GBwZE0WMajv+s90A0zmpYE63Vd+Lw6apI=;
	h=To:Subject:From:Message-Id:Date; b=IDhrd0sT2Bj80pMxLtDfuIXP/5G9oaeAd6yNSknQaKBW9hx7BzKuZJcGwassvH6BEYB/6OA+rxypeuFUQNofo/+zRkpKQ48X+IRoinfl5iIklYHPLwTidpSrtkcB+Z2EjPrdm8uS02xvjXo7LQnsGnctIiojH7rQ1iG1TOa4n0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRhaXukW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRhaXukW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17DFC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723167953;
	bh=3lYsSc/Iq+GBwZE0WMajv+s90A0zmpYE63Vd+Lw6apI=;
	h=To:Subject:From:Date:From;
	b=vRhaXukW7OXg5JNk4W6gBzkmf5nMS9PY79de6/b3bHYGkKEUkANvpe03ywdisnj2m
	 tUug09dFSnsMdmWUnJHEoBxKx/JWxm7YM7RH0EM8pZt5bInDx/jE9tMbx7LJ+9FYer
	 LQ/tVZCdHRMcMNqLg1voyhl7eZ7pklMcf28eai4RFtc07zcud4CA/OedwDv+yUDl57
	 2jc0c/jEzBhxlihZ8i4r2iSIUMPNNV9dx5ToVMzC4ol8ACW5EmXss9ukQf2tAuJEkE
	 51KW5yKdOZah3JIvCj7aynL4xjpAe5yBUPwWRBgUn/ISPqIfVS5Y+byRmoVWacyC+U
	 OTA+FnXNGa1/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9747EC52D7B
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172316795360.32064.5768165735611990790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca89507247af6a2aaf142255bb194efa773fb8f7a7a301d55263e0ed07e2b65
Date: Fri, 09 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723167953
