Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFE32F2A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749237594; cv=none; b=tsVaNRTJc7qsmZU4fDG1mF8Bv523WeIFr8oYZB79sAqFGJM3xIZTHF5vWOrxoXyi6+fxOY6W0EjNHKqdEP/WTdWbOu/EzT994y/ijvdNWzrBkJ5TOKVaH3XotjKm06WDufPoflhig8z86u60O0xo8+jlIA59R2b8qct9V/M5r5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749237594; c=relaxed/simple;
	bh=fZUeG1WlNkwaxnGgPbvW7yszZl3JUmkGe8YapWAM6pw=;
	h=To:Subject:From:Message-Id:Date; b=cYzbag082fRtrOVNIz0uv8Lgf2lR9flpFoAnf51we5ds+W8QUkWEigx0S0q85fss07Qgzs8yMIypyHcHpmStTfv/6E1nVzFJzAHxyw1ZVojDayJzMvbVpSVPXxRdf7iyaaMjxOZCXObiOYo7SWuWpd3NPr5wO8wDvG6oVGwAIxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rzxkgr7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rzxkgr7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DCBC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749237593;
	bh=fZUeG1WlNkwaxnGgPbvW7yszZl3JUmkGe8YapWAM6pw=;
	h=To:Subject:From:Date:From;
	b=Rzxkgr7K2NUdH1I4PO9K3SwMn8H5WkncNSZt5Z1yRM9XObT7G4+1ox4lEWRwnmX/D
	 dmO+sFnf35KUrEbcvgpZEtMzsJ4WnEvQQY7Jv8/5x5AG5rfrZm2R3rucFPC5a/4X6U
	 s2hkpve4Fe+mMTQDqzc8F3JCbIQmgk4K9D2YH5OxiHRgWQzyFTM1PMrhiUq0O1xEfy
	 pOfwwzf1+VttWK3Q2nLMAgkEiU1TeBYoBOPygxtgrIh36qkC3jHmHLS+GRtnpbe1pH
	 UwD4ubOYNEuK9g4S1KEc9G6O2HvNm2IMGyub48K+5kXXowcp6aCUZ6UPS9CWuCNkNM
	 7tXzhhKlhvWxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962A8C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923759358.11227.7985594648058465240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1dec24d7eaad22b80dd0eba4e6a51d7c31527c91ed8c63f5620b17e5e0a5a86
Date: Fri, 06 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749237593
