Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D72A274B23
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780718674; cv=none; b=LCVYQTf0EZNuOOyxoMJ5eprDyUm6n4mFyUr8RAkdf7lybV5lmJUrLrhtiQJWNf2o+X+j33AG5+f10RYqVpv60Ge+JHpLvB2IeDxGNkNZI8H6cUMlKCUku1XkY0tBEqQbl2fIso2AdMHqGd5nIspc3iI+lc6lAFz/rI4didPss+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780718674; c=relaxed/simple;
	bh=/KZihxX5nP8DdKNzQIW24nTnusfnImAHNS5SUmU8I7I=;
	h=To:Subject:From:Message-Id:Date; b=VkQ390ACENZKcM2wReWhRam1vVpKNQl2U3bBW4ZPI19cxP3WcW5vGQE9VhLzMfbtHP4zycbTzacYyvsBJ8YE9d/Jg2cBOdznsoYX407KcpTfQjjnvE0SsaOGb6CRFy5FnJp9p4x5eKBh1lqoGe9oHKGKO7AVE7cVaBkakP7nLgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIa7ZHY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIa7ZHY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FE7C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780718673;
	bh=/KZihxX5nP8DdKNzQIW24nTnusfnImAHNS5SUmU8I7I=;
	h=To:Subject:From:Date:From;
	b=HIa7ZHY4l9ZuZdsDFshER41fudSL4yjTIwLlWx1RRWrp91JMl0dp6JwzKmP//MLLO
	 5lZfIKbHU82ibj4IYOEQOAHIOsC0TCVp8uiSEnTWLqiY9Nz0nsB9lO3lOZV54HSNS7
	 E57R5oLEN2FGclhk8leJT4NX2GZogg65y1NyRruP/FEB1au4DhY40YJx9L2deGDTMC
	 RJzQrPreXTDHGMhUuIqOFEslgd9HqVtC/WTDzM/JniBT94rou/I+yBauaAi9VxiCDv
	 8XsXqRB76qAgqgwNEoKxyvUKe1QX/26darhtMTGKRQv7m3uc50kc2h2m9OByFwYAvl
	 qR8uBN+q2SOVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8DECD6E75
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071867372.8834.9759619872590191713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15953258e0dc703f3ae6040075e44639c3a948a6c8a18b1c9e41d18f70db98e
Date: Sat, 06 Jun 2026 04:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780718673
