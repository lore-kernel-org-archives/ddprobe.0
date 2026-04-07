Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2199A242D89
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775582134; cv=none; b=kMnUDNSqRQuKD1hT9k9bjaU6tuVav6NnBqoAmyzzn5YNFnuRWyLZisn6lBiQnjGg1tzDtcyEO9r5pe7XnzQa1R6DdVvxHjGkdqpbLuWRfed5dF+wvRfNqLh4+YhEFMI8EgBuAo2Zr0SWPDsy+GT6d738lXJjrjSiHV8gLU2z+JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775582134; c=relaxed/simple;
	bh=HYrMK2OHj03z52yNZq751HXCmVZ5EsospnaV8qyIPpI=;
	h=To:Subject:From:Message-Id:Date; b=pYwVicrApiZe4X66VM1ivzE5f4lwxStZ/C/Mpm7+1f98H76Pd+3u6d90+i6XMrxVIn1L+oEiN1Dh2jjxs1OX13mAhvBP8+GSxmc8lCY2jxU7nuvkhfsyLXBp6XEgb+xIbjo91asF6YClxIN9h0cxfCKHuUmrkEl83iNMQBsjSOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+ld+muo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+ld+muo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59B2C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775582133;
	bh=HYrMK2OHj03z52yNZq751HXCmVZ5EsospnaV8qyIPpI=;
	h=To:Subject:From:Date:From;
	b=R+ld+muoX9zzHUje7pp2RlGFt83BkJcz1ZNG6u3q91z/KexgjQ5f8qOUaXxQq2tMU
	 0oYmJaqR+uKUlMjq+pI1vIu7PtCHZJpvOnDeOr+Nzs8sd8yw55Qa+M/tnka8J9vYtC
	 zFvAf75ZoRqrf7TcWSES6VuCDR2aArKkRUjlMKFZFqj/PC7d9Y6QE1NJGnD/Jmb2o/
	 0PQyH6RbBwCf4HvaPaXiSF47jbihXCdrDdzy62qnaKSZZhn48DyxDd4677lilNYr7A
	 ZBPKrfpnT5o+oBckemFal1DJW2dFKdty12SgbmS0ylIxiwr77ccmDdXF+vYWz9i9Am
	 X2ShX/u06aFpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE5EFF512E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558213369.1845.15011043402879801145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41260b6603b822d02577845565e7c8e37b8bbfc3979b9edabf08325126740bda
Date: Tue, 07 Apr 2026 17:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775582133
