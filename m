Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654E838E12D
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786945234; cv=none; b=X7tCC3CgQer5pguxEoxSrzrJYkN/l7DP5Ig17fqnt9wuqPATQobV8v9vJl89joL/MhGKRDo7Qr4iQnXckN5ElrnKU3dIRbDhvWESGXbkzfmT1BKd2UqzSYsuBNHY2KdR81Id65my1lpSmUDzWZ0Z8c8+g9Y5ctikEz/lBYKJ4vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786945234; c=relaxed/simple;
	bh=PMWOGUrF+fm2b3WH5Zt5FVe776ekrHWF45/d/WwiS9M=;
	h=To:Subject:From:Message-Id:Date; b=Q/qN+QT38PkWB3bWUZYu03izRAcvJl/ohfCJUCQZl4x6lufOXVOEwT/qS1cg8G2ka5ZhWE70XcO7+9lEybzV7xSJMO/TEWHcx1mrW8Ea741z62kYu3SFFyF+D76TuN08VOAtganyrUPVy2KXeXnPoV0ecSpdmtbvp12nlDy+j0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvjUe6qR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvjUe6qR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA44EC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786945233;
	bh=PMWOGUrF+fm2b3WH5Zt5FVe776ekrHWF45/d/WwiS9M=;
	h=To:Subject:From:Date:From;
	b=cvjUe6qRNPSLaUKlFnkz7uQzgVx2DMm8mw1mzk4HXjCDRkEkPqI97MZbkLjq1A2nb
	 GoCVRsyIQfQspKbfcBPfA7o5n+KOWD7g+i6DJbfTMNNFDAopVKHiipgFUhkeFcjeWu
	 t0hzwIC/RHZXGCBlE6k1AWF0ptzFaazzy4kqw4lLDuKgb7R8cKF0CrzmHaEaPkGUv0
	 lhqL5UpVBcKsoYOeWUjVOZMkx1XYeDK/DXitEVQdfQb5U4d7d0GLbXtEW1bWIAWqiQ
	 Bxkb7rYQpuL9IJJNUKqlyuwHP+g7qHzJEejEFDZLCI3uZcwHtdq0/T6HOKvVCgrb3H
	 QGWHc0UuPYXaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35FEC5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694523369.13144.3932028643312905324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8748c6f12fe98eb19527ba53e3afdd388a633dadf79ac170993235d01489aad9
Date: Mon, 17 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786945233
