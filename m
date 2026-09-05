Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4103438E8B4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788612034; cv=none; b=NGxebHSjrfNEQngQ55caX/UdgvtTKP5aVH4F8yRSior4mOM2B6tut9Rsjf2nLC1YxUIWfGkvsb5kIp8XVdMvLjpTC3hChUspVFYA16jlLN19FXovuckMVpcTwE6LjuqTR34BwD3eOPWvyyET4qaCoUxOqqaOIMOgjXJXiDC5IhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788612034; c=relaxed/simple;
	bh=Fct2gC+B5awHYCWefFMlGSooEM91JLChdvX9IewFUTY=;
	h=To:Subject:From:Message-Id:Date; b=lC/R0IgafGYV4kVQzfYla+6ClBo4KqMEtTGA88E3l0/dCuZMOWa7QtVIsB1yKm9SveSQ/NHBQzWH9i91buVCqdZXVTfrgVXypMD9OYMxxbvIwxsdL/8K6nbnwDqCkEYbSzGN5RK+GKaSU6jfIwR5rnbyDgZKSLutozmZWx5nVx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiKjs6uH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiKjs6uH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9268C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788612033;
	bh=Fct2gC+B5awHYCWefFMlGSooEM91JLChdvX9IewFUTY=;
	h=To:Subject:From:Date:From;
	b=OiKjs6uHF4S+xsqG5xaiTcf5eNQUjGTqRhj+rgOAbUWuEWaDM5WjLHwVOjg1SKbT2
	 HHBrRTfPprxIZHzvbkHTBbosP4KLq8YtnVRm/s4MzOHreujOCy8rX3k1ZCG4S2JhKa
	 xf06T9PRCIlgkSNuN22quoodlpbPQmeGxEOAnhGQwc2g7VYbFTUypcxIRY10ijRWGG
	 8WxlS02Ab70dDLESnGuvEf4NAQF814Hh5/CBYkev69HL7csbWWGrg9QvgeMgAzhGEc
	 DXoyfP1BHL/37jCghHYinfoaGP2wwvKd/njdlNU4x4jtPTmI+OMXzBLulaXA5HVArC
	 cSB/LKMfjQC8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1E4C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861203369.32405.2509983643697804528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6073ac7b7f99aaacba3a9012d8e42d6b452a830d7d77ffaa358b9a221578c2ce
Date: Sat, 05 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788612033
