Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC3A54654
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775376934; cv=none; b=B7LqSCZpe1s2h8sgDjmaaHUtSv47+lOq9GawqGle7UVvaWXsw7RoX2lK9hCAquykFDiD8awPuPPxTrjkfhJGYXtLcVEp+WKpnJZNOdg5y4Y6gOuFw/d1MZ0smC09WLHeOqHxJLWIOtQhB2vOlDtT9Nl6ybusiDMb4qDhGmzCxD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775376934; c=relaxed/simple;
	bh=AzVvwqo3jL40w0ftxsaEReQgi6wvCKi92DEbWdffS8I=;
	h=To:Subject:From:Message-Id:Date; b=lCz6MaJZWQCeFfwV0UoPOc6GY2F5Ipos3PKF4wE3Eq4r1yXk34o2IpYam80CRiOCFYWCTP+e9qy4Qa9JhxH8r0q1u3ppDwmIISU0t5ZVdpnT86xD+nq89dl3szIdZ9CVlQVOZvbntyl9lA4TOfYteRyP/pS+bz7EQ+vY3+DR63A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5Q2IpWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5Q2IpWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA03CC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775376933;
	bh=AzVvwqo3jL40w0ftxsaEReQgi6wvCKi92DEbWdffS8I=;
	h=To:Subject:From:Date:From;
	b=s5Q2IpWCJaP8cPP34Glebd+kdoGf+CL8hafa5vb5FwS4fItUeWJJWWvlduwhK9719
	 iNSoSJX/0UG8+zOkz6PLwWGzaoJ42XHsJX7AwvFD7fPEeEexmEcfZ2iIYlLBhBfo0M
	 C70WZKDW29CiAnLu4GF/uwaRABTfXYZsDrOCpnntu08Np6sdoHd5SqIaj3joA9T+Iy
	 hCyLz6xkI8QinZuBpx/hXDq7foIZoLEhlYFbbz3h8JCWt+DGDpTx2Kwh4SufEll4z3
	 +7trArUGtj708kxY0bCHKkc3ad2TMmtZNjqcDuWRrC5V+Cl250Ha08kWna7OFQUyh1
	 tBmRYvL06vWCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3982E64002
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537693370.3710.13041271888126271163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dca9f6c81448ea76c138e81c636a37055232f83d19853130bc26183d7c94bb8
Date: Sun, 05 Apr 2026 08:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775376933
