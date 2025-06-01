Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEF510957
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748789394; cv=none; b=Uh82HgW2dIZSHID4y6NpxMoyiqYHwWrGOTB4zAyj4xUqxWWd76MLYr/+RqxbeuOszWDwx/y0K3STZ4al5Kq3A1YVasBMuzmRS9Xa8oaZxoEzFINl0P0OJmviBeQd5ZUQekiTYFl/LEf3YeeQko93B6jgFvCd1W/l2Ne/L8ahhtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748789394; c=relaxed/simple;
	bh=T0Cxt3jkXFe7jNKzAqgZLjZQVR1UQZ4ULUmJwuAMpZ8=;
	h=To:Subject:From:Message-Id:Date; b=VCcHbo4UnZ8IWrYFo1+xS2SDsLAwVBZFhuPfIZpptW2VWlhdVrOEAPTisnJE6XX5ZfZ4tpTXmhjwGKuKPlfL9SXjjzXbs6b+kSdjNiT0qX2/zgmfoLDQRVHoS0mrUd6XZ7F0ARqW/EqctO7F5lCpeKwyOq5uC4M7lMfhvONCAQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0Us4ATv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0Us4ATv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3907C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748789393;
	bh=T0Cxt3jkXFe7jNKzAqgZLjZQVR1UQZ4ULUmJwuAMpZ8=;
	h=To:Subject:From:Date:From;
	b=S0Us4ATvtwucNiEXonU7bJ94NJfjAZgPxH6Pjin7avetS5bOR3bJh7LciQOzUy8Dt
	 JI8zKfMkdSjmB7QEkswuRtP1xvrKi76Yz3ezp+Py1tqLrkDiIPqNAy7/AOfdslypNa
	 +Zq3m1pRB66B/m3vZ3q7zDdP0J7XCds0WbG0j9Wws9lV/23weUelPFZW0rMvI/fmKH
	 LvtvfGYcA8ukooGf9JePl2ztIXPZ3PH7owgEnZSoNOZvsQPqgb5MiT5aTp5TjrW+mT
	 SJG5DLoISD9SDMC7nQy/0s+FRs5f8r3sDasiF+BoL4X7Vu6q7Wg9VqgbHBkmpjxW4j
	 14c2COvjr+eHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE06C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878939358.9988.5466385282213428882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a1740a79f547163e4b1a663e3ce6b2b340f43cc664831001b86796570dfaf6
Date: Sun, 01 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748789393
