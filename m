Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512AD42BC51
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784062114; cv=none; b=LJ3a1YwSjEBnWNeoyIMxkUX3Z01dbLxUxg1r92VhNvswQLfkB3dk27Pza5BMMY4iPt+gqbFdKskcwjhHJKeoMMurKkT9VmEEanBRh+YYIec7Pmc6wxesDl5VqcoHDtmg0xMSEJhpbMMR0GQI3xH3iIuXojNWMuFBispBwJJ8xfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784062114; c=relaxed/simple;
	bh=GMf4V9sSDLPJfc2HbfMtr/o9wQXZE6HAFC1COOP9BTc=;
	h=To:Subject:From:Message-Id:Date; b=Z1Hd9f3N0KGXyGkOaYjLipEm+4k0mWFWe1LEm20yyh41FRPXyCG4AgJiMwP8poSvUbp3E6AwECAxZEAU5iJ2vzjMGwhcsh9OhfQsANJSlk3gmDVdLe4pCFtVuva/xBuCJDHdvFwQkvExZ+eDidaBkyB+rubdDjVLLIkEZmoi+9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfMTWTPL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfMTWTPL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7ADC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784062113;
	bh=GMf4V9sSDLPJfc2HbfMtr/o9wQXZE6HAFC1COOP9BTc=;
	h=To:Subject:From:Date:From;
	b=CfMTWTPLxX3ebkKtERIVj/icw9dmu8xDTivUiX22KMX7qeCz63m+9uPX2skLb7Rz/
	 fGkI5ZbtDrOZofJ2Ib6TJgbHN2a7C63C0NfdfbBezs/BCcHhZoc+LQsYTHxvyKAJKw
	 p1zRwpS7O6MjI/t4WPn4iQHbrmaklDi/m6zP4GGK/w/aIe28s8RUlyV1gjAARSKKmY
	 2iwzys+KsCDWas8IPqkjvxU16zWeArxdAqNDmkoDXxgpWx+OHxPs1Q64GIBLWlR95x
	 YjAlJzPVYDyZg+g1KEiFvOVV6yn8EyisZfre2m2j+XSTcBlHdI2YRSgL23T/HV2GgP
	 Id5HVkNAC0mdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9227C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406211368.18710.1522034202347204941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7a26606b13f5019161fe9e774b4b633c9322049922b6cef1899ede4ebfed2a
Date: Tue, 14 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784062113
