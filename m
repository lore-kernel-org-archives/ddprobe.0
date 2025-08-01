Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2251C4A1D
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754014194; cv=none; b=DeeXzaBwc5evgaM+pCJwMiUnl+YZAJxPlrOootWLCjJ+FII6Yq3n4fucj6wJnkt4ZwhZy0KR2353agR+ss+Ggcb/o/3J5J/XXFdcvbIKR65uE3yfnrY9aiiAfbZnlVjdcgN1maZXRQMy/Mdwnz4AWWrDTwN9f5Kvp/FwtA6W4KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754014194; c=relaxed/simple;
	bh=BYPbkxnhVm1XmUyn/qpWpm7zz50a5IG+L0/U7AGMLaQ=;
	h=To:Subject:From:Message-Id:Date; b=DrIIogZ0mROBcDeBNH3/fjAKgseoy0Tyaab0doU6WSY3FAZJP0dJcLuiD+S4GvKptLMMoGxYSJPlNIqilrgHZ2jlZE45poZGlYwIJ1CJMhuP/CxzcnHcKeIg5AG6KFd7GEGvWSNe15S4FuIGmO0CL1Qjr123N7Piv1Xp0q+KPTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAC2CseZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAC2CseZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E62C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754014193;
	bh=BYPbkxnhVm1XmUyn/qpWpm7zz50a5IG+L0/U7AGMLaQ=;
	h=To:Subject:From:Date:From;
	b=VAC2CseZdQ7NmSiAcahQdqJDeJxn8qRsdZOJ6cc8BmZE4K20iWfEfK4S+XeT9HEon
	 8iL/Gtjv+JO5F5NHK3udctGmQI89NMF36mAqRK23GSxbvi1hGsCUjAhJUvcSBn56DA
	 qYcy04zb5sYJMJxs5Mu7Dx2H5k/FyBR/KVmopCK0CrXvjPfDLZ/SEsQhfZf1DoTa7D
	 lWiOp5GD+Cd/AW2uERzFc15feDy1xpoMcuANL/qmZsoZ/PMp/NGZ02aiHL/nQP9Mlu
	 PZuOgLX8ZHnUp7nY9sOPMLckduygxEw4p/icAeV2dNn0po4mj09WSk+C+l3Y+VMdt/
	 z92lAfOS9ZDaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4E6C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401419357.32725.6654971508383398887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f5282ffb1093082e11da403deead3e23d9172403832bbfbb142976f760949f
Date: Fri, 01 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754014193
