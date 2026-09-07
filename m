Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D67A2D12EC
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788822634; cv=none; b=blV9qP7L4cRli3lo8KkiC1cGONTKeLUSd+gXvmLXilkpMgC3ZaiNJxNtoUogy0EpE41e9FuWIAWXkp5tPBKXcdKe3WPHDbX0ZKAYKRfw6lC+4ikIOLNv47w6NEnEw/XzQDaF2VV/JWCKScuastGihYaXfKi40rQ/p6uHnLlkBc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788822634; c=relaxed/simple;
	bh=XX4JiPWQJk4GT7jdjs+lqSJI2UY0+TB3WYZlL48LMT8=;
	h=To:Subject:From:Message-Id:Date; b=oy0mt+WVHMzc/fhskTvRf832nLFFYF+QzpzhUi8fZ7BM6kc1d3GlEeo7DnUqDg/LeZqeDzYpRJnreLx0iAAQ7DcpNuR6INbkvn5y3tHHCUeuS3li8eJu7L5J/BAKIIpCVu54rdakU1B/B/nRWwzD5du7r/ZbXQMOGn6T5qyCfRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0f/H98R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0f/H98R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9A1C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788822633;
	bh=XX4JiPWQJk4GT7jdjs+lqSJI2UY0+TB3WYZlL48LMT8=;
	h=To:Subject:From:Date:From;
	b=n0f/H98RqD2FNt2zriWQWEn8HfjaU2jmrRKYnYNyU0pjbGgXEcaLa4kdJzgWDUWZd
	 drLC9L235WtE7xpLE0qotWdEzuZXLiu8sEH97ox4JJ8QtC0gVlarj4GwNTdeij0Kpw
	 LjYj//aYvwvLhSD/dMIei6SnJRsBlQPRJ8pdRv05yBoXB7ggkUc7uQ5fL4P59J2xOP
	 25vkbhwxKfYz0WVCAeofuurzl59aYm4nC0tU6PqhDypbSu5gS4//awWTWb35wHGoY+
	 P6cdC0mUYyRETQmk+0SZvYXrJ4tdbhHK4lmpF45TRenx7maZM7oRY7uQ8QOK6z63lE
	 FamQLQnb7swcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56B2C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882263371.27441.8235950367461494857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d193c90bbedd90b1fe73c4167a4e1cf2f942e9e2c09d27846a609ba93788e7b
Date: Mon, 07 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788822633
