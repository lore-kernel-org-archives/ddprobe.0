Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BEF6A8B2
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707381497; cv=none; b=UXx9qqZ0+U9efUtuCp49tbXvEThGWIJxvpXTkXSIEBKgPX/dJ0HU/AVRdSTLwcC9rYJdOpUqbhXOl0KWFw1iqdkDzmbVsiVs9DlHGD6V5EvvKBHlWfTVifC9U8myDzng+vYypQKWuxLJXfrd41BgRPIy/QkR3VwheFAdP103lZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707381497; c=relaxed/simple;
	bh=BWN8Md8qpNIwCmLs+sKxJZkCu+YG391VtOsc6hx6mSA=;
	h=To:Subject:From:Message-Id:Date; b=oUChOomvcGLylBhxc2RVbnJDDC8Nzy3zWRecqe7vKKog5P9RGL6CCUsaalsT8J28qkuwK9HRwWBPBM507DpefDOQNeFuW/7PhuS5DLN50kXgW4zEyq52Dukzemv47i3pY6Ef6yX8D7qIhiUcMaxldmbgQAVkTK5mulvnBYfVIxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLP8MeSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLP8MeSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 793A5C433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707381496;
	bh=BWN8Md8qpNIwCmLs+sKxJZkCu+YG391VtOsc6hx6mSA=;
	h=To:Subject:From:Date:From;
	b=fLP8MeSSzRx0uGfzuLdLsvFz0KKmFbIIXuuUct2W6AVA6bz49mE1e68E5iWPbAvvw
	 ZTQdxChcj3/tOKQQwNfMpiI+3ogjyHmtEyXHI8LTGDCPpE3hYHFGoosveTNKv1gtg4
	 oBkRnoDcmgHJLoZkuJsDZ3h5ElA7ipb29IedN93e6eWwxQaG9CBjHFPlU7Q6wtadMm
	 SPF4phjj/H3FiVUvxHZ5ns6FPBC9330ClGz65Q2GKgILWeKIWeXrcKrDSX6hH9Al5j
	 vTL94Hj8z7f5EWReO61acX38h8R6qwAxC18M19UkSD/YrcObzdn/8pBfHwo4ErvC5G
	 ZUnQ1b1PGzHOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FE5C48260
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170738149638.17062.2433909250381149007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a53f0e6460790738fa6872aa29b9e508979309817e9c702ffae2683f75a7326
Date: Thu, 08 Feb 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707381496
