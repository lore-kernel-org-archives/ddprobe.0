Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2D3350D50
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769809434; cv=none; b=pFAbVaHbwl9rIcwYHwQ1gKuPTvHzVtOR304bXPnP5nG+HIOZuGqU3kHyXgbx6PLQ6X1A9IJ+GBG/3X4u2X1cXLAGCafhjfpbkW9/Q4RrEw81gNbxgx9aPIVpQEKz+xKEI87h3n6k9/F6bQtU1PZsy5SlXb/EsAdUItkFaMUVgRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769809434; c=relaxed/simple;
	bh=tUw/RTBBVsWWr0zR6PIAQPv+VXELaTY0Lq2Ygl4Q16M=;
	h=To:Subject:From:Message-Id:Date; b=reW8UCE4IMvxNJrZFOuKg6GNYmJ6rz6AdBnki66nSIZy2Y2aN9bZTgNlIPT5NgshpotnMFwuf8EeqHOOfbVmPwQGGnQvg2C5dLMJTKbH8LFgKfV1noXB7AHByfXVzzV5IsIVAtxI63kkSAzHKMykwCc7NKwTtOgG1zNFUb6jUwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e827I7ad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e827I7ad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FC0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769809433;
	bh=tUw/RTBBVsWWr0zR6PIAQPv+VXELaTY0Lq2Ygl4Q16M=;
	h=To:Subject:From:Date:From;
	b=e827I7adpaqk5mgTf5QGjlk2Yd/0omL1PQ4CPPibiLqtOQJVhohZvIrBU5sMFGG3P
	 xdJYJatnpdDVVOQaNRhFz5dmH8h//PMkMiDotoCnadpNk5OQt76DE9/Saez31Mk15J
	 mDGdYv+ylofu1ToXFWos5ObLZIKmIU/GNNZsz5gO+SaKMAP3gyl4aEJWGoZb+GU+3Y
	 06x8y1C8mq4cN1NyhC/Q8J9ocfJXd7+DCbItn9O+iRN03zJbe5RIrSNIopwEnd1Ram
	 WHyYlmUQ5qG8JMn6FICDvJ8nHUOgt0CNqKxKb1gFqpmVdLi1RlDOOZFyCQp+m2hnw0
	 h6FR8veLNbHyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F81E6BF10
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980943358.11521.5535313386374770041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd37dbf4de48c690b6e84871f130f57198783b2965e42a4bd617656a87cddb14
Date: Fri, 30 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769809433
