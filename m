Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE074A4F1F
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789596034; cv=none; b=NACTVo5sIo1sq6mWA9U6w+hLwRwoytWELZpdW65xD4Zswj7LqxUhtFwz+F9fib0tVjyD+LO4vvlwEdbDCdnQZJDv89gl3tQdlP97cmICY84GO6C3R/34keM9nWRmtc3enpCSu9N52B25d91kHROyQ0DDywqrr5tQxMvmRfsY3rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789596034; c=relaxed/simple;
	bh=vnvurl6BTKmOug8kq6vBzSt6h/sBPZztoxvb3bwcpP8=;
	h=To:Subject:From:Message-Id:Date; b=dyzu3Z7RRD/m2OfBy21mQmaJY/qYV6btxEOhc5DPL3wFnEd6TunVI+nTOQmGhtWSw7U/u3GBV9PbrwcYj8LlXyMjsg2+VGmFWqXnPBNlLH0ZQp27ioZW/92+4/k9mNHPDV9Ozq49dkeiUBQFJLk+LFcLMU+XDsCNhIB/qaqRsYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zw7ZI9GA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zw7ZI9GA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F64C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789596033;
	bh=vnvurl6BTKmOug8kq6vBzSt6h/sBPZztoxvb3bwcpP8=;
	h=To:Subject:From:Date:From;
	b=Zw7ZI9GAkFd6OT+H7OQqbIjTshiCqUbqIi+hEviL2UryVEJTrG43QWmmuHMe3Ma+F
	 QKAhCNakOJd9x6YqQq1k8xmTzcZemzNNgvEqWDn3wsniHHOYsp/tmH031OgamBliGS
	 3q+SiIoNK14kFhsJ2mXJi5cJw0FN9yMwDO6oOY9cRowTxc+U2CNy5baugUY+t64HYd
	 IxCreXvTRYutsu4bkEYi5RHCCVa2swMY52csfkC4J4eWpkLK5uV74Ck02hZe5ZBPzW
	 /MVddwJ6CLp/1W2YFwf+p2G9Tq+4v2AFYJLV46h9L8JvFff11WdkT6pdMSmOsiUUOB
	 PW9//Lv8Vhv/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDDAC982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959603370.878.9975668452067577904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723a4c169ac4a50b3bf6ed40f9a360c2efcc9d0081b9aef6b6c09f25b6bbe3ec
Date: Wed, 16 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789596033
