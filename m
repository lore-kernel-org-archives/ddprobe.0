Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5C7F9F5
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 02:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721097323; cv=none; b=Zj0nZVJ8s5OxSPhnfQLFzc+WFGJbkl3hqJnsuDF1JrgrOQifaredCqpo2+JxuPhhhmmCz5Ue48m8buGJuQDQqLJXuKO2+zdDaD2fnEZ/klEqm33UP4InUzHjXcF8y/SavKrroEaV0orRJ6TR9t5IokjJxNA+tEu6U75BUe9dZ2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721097323; c=relaxed/simple;
	bh=ONZ2N8l4DNTA62bvIfNPnxhUID70vsjqqyEK6/8nfxw=;
	h=To:Subject:From:Message-Id:Date; b=DSSU8Y3kL9RFphmoCYvAQosPTv/dmJG1Fw7HtIV8oeJ5wjLe//+E9FXrPKwFzjssFxKl3ll+yRczWdnbe4RI8MP6f8mx0m8swGd+0ltTZIL2XXmCIlMgnT5iwpeB8nSrskKYMUyw2bQ0XwGi24FQvib5VWzQxaNxH+/+i7WY2/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hyzczna9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hyzczna9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FF2C32782
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 02:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721097322;
	bh=ONZ2N8l4DNTA62bvIfNPnxhUID70vsjqqyEK6/8nfxw=;
	h=To:Subject:From:Date:From;
	b=Hyzczna9czGJXzsEtpogSpC+0soPktdwoS9V+t743eqN/9vXkoZNuUDz7UEKrTmWz
	 wwjUzkzhSx9Zfy9Iuc7aZk7oS3FBGIrGddUGYgcJPVr+6ZywBghdzE4iswSy1ohG7o
	 6sZaxl/jQRN9kKhVrvnphkG6qQeBYyVYirov8fL+bALZL+er45/6PZLBUBL05MBNti
	 MRfOfBkDXdtLS3ZpkwxliSiFOyV/Es/ZV35R9ppbl6Py5S6YwuZFTiqXDLxpAN6yVd
	 MB25g6D+pf1d1kvC5G6QIM9UE7O7iBSAqmWWeqMAWcSo3mnWRMhSIxWWwRY+IyriaT
	 ZFBy0hWJqgvew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD11C3DA4B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 02:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172109732276.9683.10571709125173791365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b7c83183ed83aa9d04bbda78be8e92a4e002d7484eec6c187c5e42a2d8108ae
Date: Tue, 16 Jul 2024 02:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721097322
