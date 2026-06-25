Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B8E34889F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782347854; cv=none; b=lylcEFR6LXhHDhcXI1axe6+3JH53mal/wykx4NW/87FpvxOCe64gmLqMaAWEmXyNC9RsV86hYIj5FzUogYJEDpivTQLZYkop+o9aFmpzzoXD2tCwr5C4iVu/v958GHFMvWf/C5WOS9n+iPeiiMnPtMpVbtbQoM2SKhSbyUgO35E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782347854; c=relaxed/simple;
	bh=14Y40MPRTL2ZWeojyp6rjSpoziGSxsCwxiP8kpwF9M8=;
	h=To:Subject:From:Message-Id:Date; b=i14RnWwCWBBkJC9678YNno7WYpYwwwX7f9+RTDc97I+m7amxSJNzGqkRYfC+D1aD08OJ/N7WfiF7mE2fdxCfZxJoYmGZsSv6R4s8WYrXYMUyumOaTpgLR8YHje0WO8xZYpdSgxV8AWjUCBr4+UOjvPc/giUZ9CeZxlcQGGlmMY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzsZ9s/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzsZ9s/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E9BC19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782347853;
	bh=14Y40MPRTL2ZWeojyp6rjSpoziGSxsCwxiP8kpwF9M8=;
	h=To:Subject:From:Date:From;
	b=PzsZ9s/WY0hI0PQzct6PAv02V2G+NW7jEvhGVKsITaWzE70YWYK2X0R1zVFfIEtVX
	 /5wQJGity+Rqs4YHF2ZxyhKC+S3d4A6opI0w3McW/uLCe1UVp3hqBf967yBFYokYPJ
	 I78pbjINZPB3O1bUgneXUzEp0BmrJBgwYa0UXjsJjEVTVpEFZD+mxLQnmiz5BlNw0W
	 spUlnMAEzS+SndTwug6xGYs2KKL8iHxm9XB2eoVcPkSXY7QKX2I50h5/g2XNdJGI0F
	 v8HJsddtLii6sZ9CntgMMstcjy0Lb2NaZ2RQAxd350fdRu93Y0sN7OHQJSIauvU5O1
	 RE5jVBybKI7FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF962CDB47C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234785370.12014.10335477186297410182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e096f8d66e039715e5238f6fc32506ca15dc89741216ce6b37a87ddf60c8847d
Date: Thu, 25 Jun 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782347853
