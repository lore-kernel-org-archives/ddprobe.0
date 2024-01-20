Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D852F56
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705781297; cv=none; b=sDZleeVs13Bg0jtmz1/Xt3GvbVQszPfYIf0G2dZCWjcAHYTxQ9jXMfOQwsXuoVWR98USi45n9ldwHEUS6Tb5oM0ygSxCURjqUz1vvlWnXIWCKBkhc0JbiLHcOIGK/XeP5oPGz7QJnhzG3nj3yBQhp+4as6nR76+il5SZyk7DIqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705781297; c=relaxed/simple;
	bh=eiZHmzfA2StCmtjiu4URvxXdJnLEg/rPfbb7kk7hcAw=;
	h=To:Subject:From:Message-Id:Date; b=tDeIVWkn4SYoHGBPWI+2HFyudIf12pYdJ2fhT0zpgs2y758Z7+T58QYZx9v/ILppHNdrd6wvaJpX1nlk6Pr8pnuCw6TKM0k/XJCtVE+CHmLg5sIGWTurAeuRfYxqn/JG9V5Iznixy02mvalRBD71y/tn7CYzuT4h/3Q6Ejr227o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVweyTWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVweyTWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 775E6C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705781296;
	bh=eiZHmzfA2StCmtjiu4URvxXdJnLEg/rPfbb7kk7hcAw=;
	h=To:Subject:From:Date:From;
	b=kVweyTWv1ZGlWI5AeYqbFNawZjfy/2MxOaApYfput2688oGYvw+QhUS15elURbNJ5
	 LERo0heCWDSPk+68774AFSYnxSqJhkEeAZHOqO8+lDuB+idWR19ID9AmsClr2nK+pO
	 I4O0TK/gAfqjWimO6bLuNv6wv6hywlSgAkHj9xK8fi6QytovWKosg2BpJ1UuBHhX1i
	 VRcgtLeejNcRC7R8KH9RHbmcsG3nR/vgUK1+l6v1PXQ+7/UFajKOE6jNeaTT78dhnG
	 A4IaQ+0t0Yi+caSQeieWtUEWN2lOgB67wxNsjswYscSzozJxvb4NnqC/BRbegAuycK
	 hEnuz7mO9iNMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D266C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170578129636.28985.8773767844907842504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63edd9d166b4e18a9a6f9a27adbd898a571db3ece4f70d0682b60a1ee88fdbfc
Date: Sat, 20 Jan 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705781296
