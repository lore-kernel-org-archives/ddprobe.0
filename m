Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB38381AE3
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791233434; cv=none; b=b7Aciut9HFLADKtleh32xgXmsdoniZyKyCNDPgTiYsmAtA6UKL4Io4qdpya5DLUMUr0FVmI5Zu6sLj2J/1nX6j5w+CxWujD8wzZIoILjffsvRAAJAcr7WqVxCzEEQeFr93CkusLh7ZS5UrzJsuQ9uwZq6q+WoAX9SaMHBo9Gz3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791233434; c=relaxed/simple;
	bh=rrVdOjUpBHeFUFtJDf0+JKuKukHHUVzLt9dvAFdHfeY=;
	h=To:Subject:From:Message-Id:Date; b=ekWm+b2lhHz4EE+kQQ09GKLziwOngbT3jQs6oP5yKvAnoBE0+WTrRDJJY6vIwzpLuFbn9GN0ZnpFK1QgwrK8MU0b07dnaSLxayYXJWFmC9P9lh1aMXa3uzeqkd70BdOBGUedm1VSVfjz1h1p2Zl/+HHacr0QI7AgnuvfnkrpUQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0aWrrac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0aWrrac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB5DC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791233433;
	bh=rrVdOjUpBHeFUFtJDf0+JKuKukHHUVzLt9dvAFdHfeY=;
	h=To:Subject:From:Date:From;
	b=i0aWrracQjft5o4No1iO8R/t4sRTPeLrJJKzWa0qyreVMajZGFP7r3vxEG8lCWvf8
	 Zdan/mzDZoWrNSToIxt5MwtH4wrLA5H17lpdEh4WBm7YnSUGoVzXm03IBqcp/QIlg5
	 /9f9/MTwqJ65L4LTon+5jpmTMR6eaHNvactOBqPWzrQhlFGd77PKrRYsbBfolqkRJQ
	 DKHd7/2rry6NoE8XT5dgTZvFEsi1pHrv5SjLalVhe+EPHwAi3DVSvQ1drHP7zUOUrj
	 FEVyv1sgwYgMmKDuYM++mllXpt20Vbb8pNGzvrk2k0I5ntpYtvViHQZR0ldLnQCqJ+
	 JVIXOTmt2ueEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1A7CA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123343368.29651.3206048109282679800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e6ffb38fc5c38fc6d352421b492b29d332ad995fa3bf3fa659cf6f6c7d845b
Date: Mon, 05 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791233433
