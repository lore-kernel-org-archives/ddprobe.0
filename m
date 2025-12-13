Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328D1182D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765602774; cv=none; b=PIQPUbTzJxtPAJIBuBN9bcCry6+j8B2FQBrG9LGck7zbREMiY32w449+LKxmXT6sLkzWNdItKzsi318UgRRdkbofOyyIPsBmCKUvAEMYF9Ws//x7CIIqSftRLBoRUFEy03HKmElYTrzKXAYjTNlOXvXylZi+qRqcMGqPXYbI82s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765602774; c=relaxed/simple;
	bh=0BkHkvp6O0ZqHPxSZAH6ZfOUztxxMw6UzEPwuJVyTTE=;
	h=To:Subject:From:Message-Id:Date; b=C332nb1WNkebH/lQaP+5klWMO5YacidGMu12/1DTNHhYfC+oCa/haEQ33jQvndqy2BNiLSg44lRo14ozp3hkBkTmCkWa8PXoqb1KsuzkDsw7ds6Eg+hvZHxpLMtJev8Z20fT+5KSM6xrfz4mmT3PLzmCMgIQ5MlBA1HcAAnt9dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSzAg0Bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSzAg0Bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC94DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765602773;
	bh=0BkHkvp6O0ZqHPxSZAH6ZfOUztxxMw6UzEPwuJVyTTE=;
	h=To:Subject:From:Date:From;
	b=mSzAg0BmMeOy9h0QTcZd9Sw2Oa3WHGTiSEMtf0MHDKRW/M86im8tbK9NJiMHu5alU
	 OZVx3zEaefu/njyboPTwVBpd4x59UrtNXrDRVXB3aZW72JdqHio69a7fi7y6jA+sYb
	 xaal6hUoHIMr9SJjSWxs0Zn3iyOJp2276sYmoVnGbs4SS6HGl4rHZMIqjRFjDO1pv4
	 88cvX0OfimtA3AZTpm6MUtEBPTw5IEqiGSBZZR7gOse2FwKbOjWUKOeCDdjE4BmKcp
	 oScYbLJmtbNZ9Mnm+eUm/XB84n2ads5SJRJQEz02VZt6lgG2nmSWMF1NmTifvrZSFQ
	 vpCCZ/RDJKH4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4ECD59F6D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560277357.846.14074549557181265195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c495fe60a244b31559bf1beadc68ef564943135f429e01b80484b0369c5f73ea
Date: Sat, 13 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765602773
