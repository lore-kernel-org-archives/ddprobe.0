Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444C826E70E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781912194; cv=none; b=UY72bMcscQO4jTPsIgWilFcR/JPOViarSoUgK7hRUQ04h46jD4aHp4EZFnVUkz0SY/b3zoB7i9V3MEJ4sscU+0XvdZHnbuDkT2okUT/RBqHwyYjq5v8WbFut5U62g6WT3ewJqtGdHJ3UkPHe36h07ygAVWAIUd4pgJ/X4q0ZCuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781912194; c=relaxed/simple;
	bh=cfBqi0fEk6u/+Q4/ne8/EbjsD3oc0fz/tTKC5hgfh8s=;
	h=To:Subject:From:Message-Id:Date; b=YaDO2ry3b740LQpe1Mp1YRhzMMFmy9M4R3Sde5r3vB0YGp87eDiAyjAiojUKxbLfDTNMr5iIxXmU8/23ujnoa5dRJGzYubE0IAu6e4omQ+raPuObok3ahYbeW7yOWS7RHFFK1io3zVUFToy/Fc0FtlPCJiq4knQytDTj/iVuIe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQYk38VJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQYk38VJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2698C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781912193;
	bh=cfBqi0fEk6u/+Q4/ne8/EbjsD3oc0fz/tTKC5hgfh8s=;
	h=To:Subject:From:Date:From;
	b=bQYk38VJ4GEdwXUgP5oYHmrX1fM0AjWHgQXsPtveRNViKAMN/uhvpl3XZhkwC9FQg
	 XATetg2Jm39lW7qx8FeK+qfEgm5thb2DbWsE/GeMO5v9LQ7W+xx6hL4RozH8h42c7Q
	 CnjM53aopTylJV9eLwnxhrOUw9L9xDEKpY+var0qBK7CiKU+7OALuJ8SyXKxusmM9b
	 KfVxzVKLXd98yGN+mon+nv7nZhkC8KNWjJYexKO8t9uio3KtQjkL0f+7sFWVova8kU
	 YvPNpXabLZ55RwnhoByuqQwfCgvG7oGOjMlz3MrxPEh/Oez6+fvgesO2ggFc/IEvb7
	 UXdUByN8DSVVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7771CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191219372.21591.9252628790168412946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724191ff69410649d5e8abb2fc231b8e105fe862ec30258b35500e1f775624ff
Date: Fri, 19 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781912193
