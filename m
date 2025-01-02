Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABFD71A2C29
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 18:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735841754; cv=none; b=dDisMHqDxQy992kjeo+Mtmf80EzDa58yctByOCmbxBWZQLVQ2uUkGkErYxtkplYFGC2SL9NrHpHu+x75FMSQzBBTJi5u0jCpKB/fII98yX9Oq3xddwtRzsCb5qmwNr5gvKFCOiSOlBNAPNxigzYKl3eKqLhx+8STBLmVURLXD00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735841754; c=relaxed/simple;
	bh=aLCaN0IbSbmEnaZJZD6LovhhQz7rI9Yu0WA1HFDq+Vw=;
	h=To:Subject:From:Message-Id:Date; b=HyXy/Is0XcW0c9DDVxAZkT0jjf8391u5Lrf67E3L+Ju4gCIRE95xo7OzN3vBX2FB+DhYoEs1JgoY+d7cRTmUsXV+9FQLYiI6Xq9BMkOtckufR3jdysYgcNddu1xKEl03f+v5WorFbkQZO1oN8A4nJ9KbryAvyq85z/+StLMjU5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti/lj3Z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti/lj3Z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF2AC4CED6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735841753;
	bh=aLCaN0IbSbmEnaZJZD6LovhhQz7rI9Yu0WA1HFDq+Vw=;
	h=To:Subject:From:Date:From;
	b=ti/lj3Z1SYimVXUW+hlhKqlGyqVstuSQRyXvC2BF6wbRXnvVUrKvYrzri5hTjBurp
	 tqbyJPHSwvsmV4x0GgqSIo6mdB2sJRxk+9hbJ5ruEIKzCMkxPVZ9U2JFMrVAchJgDZ
	 9My7tsHOgE1jDkRjYlUJhsW49v18asgGsTeRkSramFYaGiKX7OH4B+9x8Xz0OL5IPk
	 Z3dVnq1Ckmex/9vKoKY2fw8mfPjQJO21ysAK/HtzeH94n64ij6jZMQDBBK7PrhQoLe
	 xaLkU/YR+ekVJBBLOShcF4cd1kZRc+OOACpvy3ndNGfrbHcuGR9p2jOvqbwDxa96gU
	 GcmYkEKQxAPIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970C3E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173584175360.17363.16174407517115902668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74790e67d40d3a683239b42467a7e6d968cd0c13381297614cf6428dfd4eafb
Date: Thu, 02 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735841753
