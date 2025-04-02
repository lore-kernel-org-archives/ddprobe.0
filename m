Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A610BA4A
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743604794; cv=none; b=DBD0GPBfTE0PQaiHsENqpCF0PG5gilX2PhgACZMpsSK9OMMOM9FUcUtCP+Tx+bchQSyM/bT2qaD3cJAOoQG5pm8bEroe8V8xntbu6S1yoVIY3FpljZOMbuvzZ+39MBmGO1IvloeyCNqjryyvA/01PysXMNJhJ02jFX1r9C0x+/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743604794; c=relaxed/simple;
	bh=puZrttoA7d8sW9Yln0FQET+G1rHpHKfVs4XtGHkUIWg=;
	h=To:Subject:From:Message-Id:Date; b=DcS6+mjrn2JgrABYgAZT1NrS81eKiU8BrC6MvTpelaVgElybW6Jm+rhjBQyC+JHw7zMSqm+N97iBG1c0s4UXB36H3Ujv+rIq8D/av23aNRofZNi/o7Tqrn6GXatUtYHh5k4htbW3WBHgB3xLCNNwawLDPVf8NTuwB2KceB6CBPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgROsC0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgROsC0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD4BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743604793;
	bh=puZrttoA7d8sW9Yln0FQET+G1rHpHKfVs4XtGHkUIWg=;
	h=To:Subject:From:Date:From;
	b=PgROsC0vd+ajQ30mye1vvf5clasObTLorZX7A3eCTlTXc8/ZVOeBtEh37AEww8Vna
	 7xBJr1ZTffq5UVMyQYbWcncMPoIaUo142qBFXvH6WTjRv68cKs+cbCMzAVzxbq4BJe
	 aQWJhYCxC0ucYlsw0UGUzZkalnnLzAiKhBLhQxEA6NblwwieJ+vG8rHKKC9mUQ+3pj
	 9ZLDmu34qAGkPRnHu5VtOzBfWDg52neVkQdoJyY8cqs/jBG7bIMtBvp0n0WFdM+Lum
	 pa3uKHMbNhaSlyjjCZkoJhGzdH6cHjrD4/iRhHd40aNm34OGiLaLoWmERmz32QfWmt
	 AADM1X5anH/ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971B1C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174360479360.6694.15919868925989856627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d693466ab2cee67aa375bb86ab8c0725e182227404daca9cc27a6e8b9e80728
Date: Wed, 02 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743604793
