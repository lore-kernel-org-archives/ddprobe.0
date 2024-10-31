Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D06042AA5
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730384754; cv=none; b=ZGAceNjwlohA881Yb+aYN+IV2tpiHzArkddVShtIqd/d29Ifp3BSjR5PVFpATnpWQbdWBKVvvT4XDQ3vjtk/72fqN9H1XYmf7DwSAPjLu6XFlv1SAzDlBjx07RyExmJwthAXjgfJoqIHh0Wal95HjgEw2lPVXW5E6CT57Nl4otI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730384754; c=relaxed/simple;
	bh=ZnXW4mqlXepZSG8xjkZGMkPTywmi7ybUDreUCmsHwnc=;
	h=To:Subject:From:Message-Id:Date; b=JScY+Sh9VMl2nq0kXhIPghcw/tS46b89UXp5SY31Wsq9rlr7uWzBV0y08zebNU73iiTlcUWQtHExSvpDjagSdfqZRqV5FlKHVbxwT0gkZal+MpDZ7UhVNY7qdlaMr2Cd5eBug5N4cRqvqiiu3zbKgKGLn/Ozjy95RK24r73/2aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYQtFibm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYQtFibm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AFEC4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730384753;
	bh=ZnXW4mqlXepZSG8xjkZGMkPTywmi7ybUDreUCmsHwnc=;
	h=To:Subject:From:Date:From;
	b=qYQtFibmWGUj+m6qBZa3WAMmG9wXZ3nXzapBNSZoTeSRrRvkB1HELSmfmIkbQB7KD
	 pljF3+ei8qoAvYnBcsXWy+0YAwycHKxz93Bdq+JMXKQYx9b/A+YeLz7bmcO2wjCL/S
	 /BL84+NSePEPdVBIVVsSjbjtTVlTZ13rStj9t2ny7u/ibl6pDQ18e1yxcD48nxblLe
	 gETDfoEhB71njFONUwHe1h7b7dn+QTR7/n3qcigNZZaj6xhtH9aS+UTcPXNRG8j0tg
	 3hK93APMuny/lPaWf7rlotg+b5EONnGqzBPdJgrsFzgjxQQbAqS3KsNuKua4sqwl6l
	 Shf9NXg8UNB/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D84D767D7
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173038475360.17933.10285078403039884633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0004f6ad32723fd2ca16bd5442e33770ebead9b5708c456cee0ce5943219cf
Date: Thu, 31 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730384753
