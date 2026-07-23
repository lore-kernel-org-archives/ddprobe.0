Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE042820A9
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784767174; cv=none; b=maJ0pQCtayoswCKI71ir3n35YOXLO1T3AqzSgcO7UCkeWTtLHyQ2gtxVz4V+obA1q5LgE8GUGnxBx0cGF05qT85y+SuzEPEzATV1RY8zgJ9nkJrGJBmzM0uU++62QOUPtDRw0Ya2O4cCQ4ldDGoHkW5uVuQJa5dSkNwVghvP288=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784767174; c=relaxed/simple;
	bh=xkbe77USnM8ihRgUdzr5dBuii/YdzkQS5p63ZXM2kbs=;
	h=To:Subject:From:Message-Id:Date; b=WdeV98fJzvMDBngMMmH8uumr8Y6J0shax/72hltq0TLek1KmZY0DKt4pR2ip1VpaOIh45Hv9w59PuOA/PEXnbT7wfEkZPDpWqGAkw0/3QgwSeR11DqVY05dBEGTU2ccjVKl0w0n2VQ/25nlO1e1B0KfPV0sJZ2cohO3+VhWncuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgMPX4C3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgMPX4C3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FAEC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784767173;
	bh=xkbe77USnM8ihRgUdzr5dBuii/YdzkQS5p63ZXM2kbs=;
	h=To:Subject:From:Date:From;
	b=PgMPX4C3wtdzU/gpzb+9id2jtey6QVRNw91jC8wmd+4Wba8R3quIrWq+bzzzzOI+/
	 lLO6wgxOKo6iUJxr/6xww/KV1/tf3coAYl2wXDOlNFqp8CSbPPiTLE4cOeL+o4aBDH
	 zrOZhqWICnxd/6qAbw8YHs2Z2HFE86qCjdDEC02XweFLWHT+ltpCjbZudthTvMIsL6
	 fA32KVcAxmXBVUxRAotcEP/o7qhTrflVpUCjOlZ3dGlgNzZjeNyv+/5u0mxsEBkHfh
	 dsq+ka1CTPHa0ggYY2vzPMIZfZB6Q1RJVEVOsUJmvwUim8NKLroxH1DpBZ6MNxL4JO
	 2dN4meVenwv/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB16CC44536
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476717368.20614.11109207410103710469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f52804f91c63603a360cb519d52951c4e3de028c2f2ab5c2d098e0c83b40ab7
Date: Thu, 23 Jul 2026 00:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784767173
