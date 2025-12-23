Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159E91A2C0B
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766534034; cv=none; b=BqnSjflE+rRa6ysZCwdYuRzR350Ckqo9RdKq/2EJhEkNhxZzGiHUcHRbgguP7Cmw7XjqJRWGweQygS81voodwUL+A1BdM5tNlWxCnExK8fj9rSS1tSbvsUtI8igMray5McBmJ8P+bi1ZqjlyYiUqac6cHOGtz0VlBRtHRAUCpQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766534034; c=relaxed/simple;
	bh=9VXqAurroSfA89O9HHbqUot5CACO9QROeTW0GzlYhGU=;
	h=To:Subject:From:Message-Id:Date; b=XaqXhZHM7prdZq+KjGTb/BtnHEXpue0USGC4+HX4UTYEwklw2QKBlLIKz2hSCehINHWcU01AiRRKmzfT2QNvyGOCnAhLNgAHx73uEJjxoe//o9SIJshn7uX3eD45rmBKTFzFxqRLe3Twn9c6WW/LLgm/hb6VwzObhI5QWIqgzpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFy0GEa+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFy0GEa+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D626C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766534033;
	bh=9VXqAurroSfA89O9HHbqUot5CACO9QROeTW0GzlYhGU=;
	h=To:Subject:From:Date:From;
	b=TFy0GEa+QJU+KBbxMK8JyJJ4Fro4OvumLdTM+MCG14cgs5d36X04vZnYm+0Qqpy5m
	 +bhgvh8HVGya5swhUFaw5iXblKHYQQo552WQlidw78sdiV7mnzzTTVofWqmDlBobXJ
	 I4AZMNA6VDGCxxQZ96/+ju0tdZt7Fu7b9WMDD/U5DR0jJ43RFhnSmIcTrQ9tnSxU9Q
	 KmaI25qVGfVzNOPOA9uB5ThYTJ28/GxW+fjD9NkeWLnzW+Q+CA01HT/6SeL/xAWbtY
	 e2L4bE7PGYzxk4jxeLBntiZrFQGsV3lJoUrgWYjfMqqbZTonnahhiJ1WfSyfbY6qgb
	 crB4VtbMduldA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52EE6FE51
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653403357.12090.7740856431717803947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d32af68a0ad2695e057f716c8d769111a850196951ec40e7008c199e2606db3
Date: Tue, 23 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766534033
