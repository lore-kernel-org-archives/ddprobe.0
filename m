Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2630F342505
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768910634; cv=none; b=Q6bOqBauxxsj39c7BckVCGKfO78sDgG5m3ZEfJbfFzTfn9RH97VN1+lzAF7YxSyjGZ6hu+hIaaKweB8bc+1Ogb6jFSVloRhE02p389NGMLnrhllcxPvdoYOzYxorsCttI7JMvb5/pm77+p5QRaIffEg1uIK4Mghr+dvqJkQsCTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768910634; c=relaxed/simple;
	bh=bN1JMhvNaS7qFy1nMtNwtaJcoJbtV+77WJzT3pqRZeY=;
	h=To:Subject:From:Message-Id:Date; b=aEklkSWMwJh+Ev5IKXONMA041l5O8VP2nww9wmHOae3a4QPiATJmTWk1PG94TrgmUlB6+qegFN5hmyX02wMcOxhFMOXmqsA26U0VrYlcxj9bU6itP7tqh7cUHSVw+GFuyNj4Jcxg0el9IxFLzM4d9g9bASafx24lrQqVRUGJioc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7Y0bPz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7Y0bPz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FF0C19425
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768910633;
	bh=bN1JMhvNaS7qFy1nMtNwtaJcoJbtV+77WJzT3pqRZeY=;
	h=To:Subject:From:Date:From;
	b=f7Y0bPz99U5oGLood31t1V/6dNk65jfcO0gGA9/a2V+3YYU4cTZ+jX8JHQJTeVozi
	 aY+d9lYkMXQ08aLHxmG8GnnH36sydpMZIGcuHTKua1075WGjmlIzbnPlj7I59dQHmF
	 Pfn88cQkkRl/zpi5FxMxdN16aAcDx2PEXvsTJiQ68ndqUXTWmAmO2Xf9yUgbbQBe5x
	 T/J1rV4LZn/jbYtKvcHCNNVzl9X22IcAAuNQuLLvDvp6uWRAf7FYPyJQO5qsXFy4/S
	 YZAX6HIrPpUOXXvbtMPIp9roiNiCvExZocgV1XXm/LSlUG5wrapE+vD53DumJIR5WD
	 mqynq/sqmLViw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9711ED2ED12
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891063360.14568.13355871816285292657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1db43a2a526fdfb2d8da11677af830c935f3c0b32963e11596669a224e2b9fd
Date: Tue, 20 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768910633
