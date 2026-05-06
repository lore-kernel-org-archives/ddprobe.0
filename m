Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B98F1391
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778040454; cv=none; b=bcQTK/39eFu349e6EDj8GDtTCPA0cqvH8bcjmupRIHaEjAI5P4gsYOxXQtHekdDMSghzh/cMFbx2dZZb8de6oiNPzaBV12gur4Ie+eQ2TJgG7rYeHsQPhlmBY2qQ3S3OxggbP3bvVqaPzBCG8q5fDVbXySPIdapG7AgQEJkqnRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778040454; c=relaxed/simple;
	bh=bU39sayz+FXqsoPzljijC3ObdT9xurfpvkEBeXPimz4=;
	h=To:Subject:From:Message-Id:Date; b=hQa96fNs0QBhHr0Vv8DoszULVyn1DiADTY7dgG31I5VE1s40Tn28F4o/vJBJJ9Lv0ebXa3v35tkXF6qVz9CCR/qhJedgQIHbR20f2/geI6qnN1Ww+KMNud7iILx4rTRuXVyTqrAFOk0zbkbxQWbFTNZ1TSJzefRQMxehuc9xmUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/PVEc+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/PVEc+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B95C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778040453;
	bh=bU39sayz+FXqsoPzljijC3ObdT9xurfpvkEBeXPimz4=;
	h=To:Subject:From:Date:From;
	b=X/PVEc+HmdsZhAAAZuD7E+YN4myysYs8guDB/T44uKQWWx7+9QjRftWok4FlQDK12
	 U5Tk3WpyXZbhO51OI4nFYCAzhOzqJQ6iNxlndh4jZMZ+ugpLXVH1IN3iF39rgVGTfh
	 0/HdIL9ERf+E9lzZC9AFQzsO3OHARzZm5/ERAnR1PxfBM/EW6AQJawqpr47KFT6uFr
	 +uNnZZn1pfSDHOT/NB1y5HQPz43ZkcguDUyq1NXc2mcYfXg9kWn0XP/tmiFMTPDdJz
	 XcHZJFtdx78QnqHy8PBj2l0oTnznoRkDy51jFkbNcg8Kd2UFvDYwAqvpAGokFcOFeb
	 30YeR8XfLvWHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5C6CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804045369.29257.13436887664734800347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55c45c48f283ab715116cca94962aaba73946370fc9c2ab5a5fb5ef010cc89c
Date: Wed, 06 May 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778040453
