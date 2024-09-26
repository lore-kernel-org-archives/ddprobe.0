Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4E41A4B7B
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727339154; cv=none; b=EJikZFeeQVjV/vP12SqXA5Hf4S5us7RhQLN66yzUB/pStk8FiGrQj4Afu36lgadL/Z/0ZxiOkdrNddLDeWADX+lR7I4QiqICTw6Ae2CLvakKU9A5dj6Yf/IMLkleuBfZWeM8//UcjlfvweCHJv2Uja+ykxONM57FMpV68Osp3II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727339154; c=relaxed/simple;
	bh=GYZOM7xvM3lge2uninBUnboGEr8CMpBYw7v83Vp/Gp4=;
	h=To:Subject:From:Message-Id:Date; b=TzpmAud0ZZbWUjNVQYeCS+UCyzZ1Jwhq17S6guatBk0AVDURbqE3jfrqQg0E9hZgJk+289MBCSdqKCbXwUy6sx8QBa2XU5h9QytR1FBfXqS6korlsBqIqWqxB9qR+Gt1z9UOsQJ27dKtLiGvqSuKTaQwdFo6TbXnQ/4SFZm4/z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBfcOCYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBfcOCYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4165C4CEC9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727339153;
	bh=GYZOM7xvM3lge2uninBUnboGEr8CMpBYw7v83Vp/Gp4=;
	h=To:Subject:From:Date:From;
	b=iBfcOCYoq9hbko5Y+FUfdhDGS+Rz/1Kh3CuLTDfOhO5Fi4qWG1tVx+lZzeKkVCG+k
	 CnCMNVengBtM3+YLsXB/H8UjorD0HtK8JWwB5bDAOe5V82yW6ubLeCdgOzzjpMrli/
	 z0+qILmYYHSZEn1+CGqCet9NuyIe6JxC7kNqU3mNLYHOOXA3mLJONBsvIzaWInWGff
	 cng0vB7rwYp1gOTKXV7m1vLqQrzJeNs5p9v3+MNAwe+dZaQLafZrbFM7zCWxo9iNoK
	 lpih0azHpb9OOW5Pipw2SLo9SVKte2bPWoxyzhH0o374dH4ZKjQ9mckwd3D09DIK4S
	 eDGAqbvSGuDQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91630CCFA13
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172733915358.30263.16665234956677695377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a604d8202b90202f996510c9bd1c04551676dbc18e115e64a11be576a6726b
Date: Thu, 26 Sep 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727339153
