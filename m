Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373628821
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767002634; cv=none; b=M0ddknrQhhwZrtEaIAI24bpmHrexf6fkXSZlor+yCUF8jcRcNlg3slv+7uyrM5su95Wyqv5OinRrc57jUdvHCcZ5i0TrVFoLvIEnnMio8H8bdCVs9I3Aww3HDXf1NwcAGdEfDg6GTrfOUBdkCLx19T/Uk/rPPDvyT4plQFj0oIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767002634; c=relaxed/simple;
	bh=HqJHCmOBTVjzu8Yk+bWlCoBYMKBNSL04cw6F4X6pUK0=;
	h=To:Subject:From:Message-Id:Date; b=X3Vf1eSt64yqRwPywS2x9VQZSDs5TLqKNk4dnkG3e1+zfw5C7YOymrBsmJ232wqaS/ItBeE6k8WGHtRqc+PeOwGG5QRA6hvx6wA1I0MktJKmV20dKRgAAd9ebDSOUxekyyVreL0eK47ehVMkJQjfSD5d0Vm1uzSe3qfynPcMFIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FU7FOaUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FU7FOaUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD157C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767002633;
	bh=HqJHCmOBTVjzu8Yk+bWlCoBYMKBNSL04cw6F4X6pUK0=;
	h=To:Subject:From:Date:From;
	b=FU7FOaUtRu6bMmbXeiEqVCyYutq9KHERmB7qqbJjr5pYKE9BN/skuTPGyLVQyJzzC
	 Xt6qu6qetOV6OG1GxW+MHcpUpOPVxAD57DZYCqQakCZOMUhdfHm9JHOMQP039x7U2A
	 3uMjcAeQaygwF9VTjuP4SRbXniRueIEsFAx0eni+RYttNh+rWJu7d7AnHc3bHCoaqq
	 tLUQZVTduaOM93As0aflDwSABbKSq4/SgaUyQhlIshs8z6Km59Xb11YdnuBJPInnEA
	 pAQJ0RzGkhTQsqHIYwJez+/cFewYjYXuwBejbhoLHiVbnnE76kQVzwbS6N5CuD2779
	 nrrumH4C+XkrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A622DD3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700263366.9586.1855836875080479794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3bcc977ed27fbb854b3cb136b76e1ae426cf67631e3d5f13437bb80651ff416
Date: Mon, 29 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767002633
