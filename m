Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB372FB624
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763049593; cv=none; b=YwIMv3j3aTyl3UGD9LJsNCAcHgw3fv8H9tptvd/SiUaB1EOQwrlM70OaYK5r3OQ7EEZK530WlCdWsMuZzulMH29F11heCzfXpw3xHaUEp/NhLfGuaJbeLSXbxegKaHniPgNvXBU1o8JUObdfELqWMB3LfjPWJx5W1YvT3HbJmlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763049593; c=relaxed/simple;
	bh=/bFyK0KZhCAN6R9zq15HUShBE6ZknrhUsspOlfhJp2o=;
	h=To:Subject:From:Message-Id:Date; b=JNvTvplGzB6yv5L6d1SK7obwPuwZj2CbV/QT0h1rJn/GFPWYaZr3NBOKHjpGefoxkJXcmYHfjMzty4wVAVaDjnk0a/vXZtGoybbo5QFVZUw99/wb8mhoxZ7SOaCKNwB2yh9iQDIzpG/77Myjp39eTPeRtm61IBqisTqMHWGLuw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYNioN0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYNioN0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A767C113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763049593;
	bh=/bFyK0KZhCAN6R9zq15HUShBE6ZknrhUsspOlfhJp2o=;
	h=To:Subject:From:Date:From;
	b=DYNioN0QdAIL77AbG8uGg524AgE9S0obE20BMqgHFwESYgTG/DiqXnv88pP0qTSgM
	 SCmejbgehmrJQyhTAkg2DdDc8Dv3ohyqkz19RQMUxJe8vn0tfwYGjeDeHEEc01q/ww
	 8bug72PtiEKpmwoXaOEutCYrbfdogwX9z+FqiYwVFee9EFQYcAxiPIXuZDg35Oo74G
	 8ZfvZxY2bPJNI7duGI9kKdHij/D1vJxfVd1MmLqv5Ic0L6aWdD6zHvzxyvLBJ5acvN
	 rnCrjge0CDij9XY2fuOwQWaIfAfZ5aTiOE+GlBpN69ToAkIflTGgAgDpFxwovC23Sc
	 sOFVsK7sZNcsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA3CD8C94
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304959357.8383.9862874458061326123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6c498639aa16e9eab60ce7cf6df31033229426875731ff7d47125b50df4cb7
Date: Thu, 13 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763049593
