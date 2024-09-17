Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0404A32
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726536954; cv=none; b=nLnpyWg1oZSMAqxgGIaWnWwYPLkV4TF/rE5gieLcrsk5YyULW7hrXKZSIYoPoxvbOB+XGCz85NC8Dgl2izLuT0CIx2Ucz7aZKlmZsSbTmpRDi4fPJNrd8Q/aiixMIPR15KsJ26BTDS3tXFV7SxI87fn2DBmBztAfyavnZrBU3gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726536954; c=relaxed/simple;
	bh=SljkHD2Njz2Swy/dQ4bnpoEuyhnSPEN3bI6tkf0N4Ec=;
	h=To:Subject:From:Message-Id:Date; b=nNunF3QG/klUG7OY0umQ0on64wC9fEJQjzwMY3PRMGBs0uIdeqyOXpGzt1sGi3q0IW2dIfhiPOfTP6HK85TngEHpWOxvUtjrAwXT66YGMtjgASBP4sn6o1AMa3atQS8Tu2Ig/KrEKUKq0QGLLqNlwm/IsIOiGrNEShQzfrWXeeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTBALXsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTBALXsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ACBC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726536953;
	bh=SljkHD2Njz2Swy/dQ4bnpoEuyhnSPEN3bI6tkf0N4Ec=;
	h=To:Subject:From:Date:From;
	b=mTBALXsq4DmwHnH4FiDLcee5SRDNS8OkyjNVPuXl8Ic0o7QssuOItQ76NNexbHLZt
	 7dgG+znWr6Vor2qj6HthVB72+bsuRtv6TJyw+zTtYGZExL65RC4HxsE8nNyySTip0i
	 8mMlstggjmZmqSg8Xia/Po8dFgr2GMQK6YPwA0ip68+wYJH32lQVVb+wH+LXmscO/+
	 rZLDyZyiPjKT1jx++mqeupPcrIf9cQxOJY8alpNr7jcwKr//q1pFnkRBMJRv/yW/i4
	 eJhXMZfOcKZlzjY5ASsNPsDERzq0V86d7qv4mt1t7lz25xh2ERp//UO2wuD/hS2h0P
	 Mn3k8iCj1DLfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921D8C3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172653695358.16602.10394451252091891479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed5c44441c1d21775d8d7d7156aba3bcd66e07d559e62aea44e68fc01b2ca4f
Date: Tue, 17 Sep 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726536953
