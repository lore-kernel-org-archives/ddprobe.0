Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A896558BC
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730037354; cv=none; b=hdwBq6cAxhdfaUGXMzjJyON5YkhX2eAb56w+oA88QI47xHdFaEVYlzS5pYlbxalNDjcGCptbQOPQpKXjwQMwSy0XXhOVHdmzjNrYmCrzSyZ6Bt4kG3MGxF2SRFZp86mC9IAlq9KkRhiirWIWthH8UlSPkbkpZ5R6YYI5NoQRDSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730037354; c=relaxed/simple;
	bh=CnDm9XUWYcrSCw/Ov+jwYnd6pSva9aikulN87+hLb7A=;
	h=To:Subject:From:Message-Id:Date; b=AifPwf8V2iNzNsLGO8ODMyGh+VNpokzFeTcudJR6YqdthvGGGvm0PZ/RgCP2NlJBSn80YHDyg4Q9mb4q5NO2tMy8wwMwaDh1u6fE8GEODG1mmusytW6NzBF4G3y+Hbalr40HeYg7coq/PoelUtyTz6LiLcs+XQWqcaaLUiwsj+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQOpiFNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQOpiFNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C0FC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730037353;
	bh=CnDm9XUWYcrSCw/Ov+jwYnd6pSva9aikulN87+hLb7A=;
	h=To:Subject:From:Date:From;
	b=kQOpiFNNvMKco/Ko6wb8ING30B3oC72I0uEIWMGrvIn/QK5TpJMJzMhde2bdcAjIK
	 L3PfAkSk6cz+lOvb9MhChk5sbM/ol2SDHtUOSaeptgpsvKm0DLBJA58B6lUjlh2qU+
	 r6F0cze0J0vAeInzm+JeKEJYcefdYic88OsqWQwRm1924u0WX/2l3NMUi/LW0co3lF
	 dUD7GzTF7VfLYGcEt5qTYptz8k8EAC7/x2sAh6Ezbi/uQePCq9u2kiKj78S5OXAIVR
	 roQM04baaaNtBB7xgdILcGNOsaieqvXwPGm2g3QJvoC+1atG2YXqnHuHEWVZOHxVah
	 6zSOmpXX3m4jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9554CD13561
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173003735360.14524.3277968104824046856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a33e27e1f331df91745a1ed9b79a0d38db8a481a642e78b8cf6eca07b9aa76
Date: Sun, 27 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730037353
