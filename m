Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B3B4A3E
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758305994; cv=none; b=KNxqtRIO7bMAndj2p9ZhMuwiM48fwJGUeGoGJEQTY07iYz6cZ+KjKkSsmTW2lfKMKDdNfIyP1uDFgGQ0ov81byg3ieeu9lizkI3hw3uQJQ8eXhr9P0uNTLIK6Wwp2jwbd2AtJr/BBbrICJX2MrehZEzm0y9bcjKpZSulaGoB/Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758305994; c=relaxed/simple;
	bh=IroCFzRqV004u/RBgaf5ziuTUjfW/cM6vmsCO7cStj0=;
	h=To:Subject:From:Message-Id:Date; b=sDb8xGJOWwnZYHRKkvxNLU5mPiwz8RbFyjOM/d/oFN1rLhOiXbteHYqIDitcnAIOyeQJUdwgwMDNJRv91rGgmseMUxnOIPdKObW6dq0e1+wHb626Ka8tbYX5PifEPE14vNjwoJ24MQNtJywRbdW+KlxVAslnyAj1RDE5aum9tCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVs7QTWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVs7QTWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D5DC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758305993;
	bh=IroCFzRqV004u/RBgaf5ziuTUjfW/cM6vmsCO7cStj0=;
	h=To:Subject:From:Date:From;
	b=AVs7QTWbapF95mKMXM/iQN3T/OfGeHL7+GJIqW4BLR6FY2lmwnkLrHcvgHhx3Q782
	 tIx5sLK6l+w/iv4e36lmTTGqFdqP9+9xUkTd7Oow+ruUjYrMsi4EjwkLxa1vxLg44N
	 j4Lc2ty3Cuxs7/SgjrN86n9IKqGU+KanNl70DKH5gzPwlZ/hydHOr6ulRtKfU1/rh4
	 h5kMyzQ6KTM5OAhFzZRfwjkmP/FwklOh54/sRA/nu2LQI5paZsxDeitrd1jCJKWcO4
	 buIKVQEJZMOS8UU0jWwdeNR+eOWRQFOTB3ry66MJk0hVhEbUsTon3fxEQFyx398Tv2
	 /B5xdqvhEz9ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB52CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830599357.31538.6642799528114666248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71a1635f3affbb14ac9ac7977bd2167632e21153fe4f1c7a5e29cb3e65107278
Date: Fri, 19 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758305993
