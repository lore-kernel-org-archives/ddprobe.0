Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB111B86D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725033954; cv=none; b=LiS4W56vEAhcgv4qV80skv8y4g63ow7OkrXhlk5jK405PbzOzkw6G/44Xai8cQDRAiF7GHp7YFr/Bq0vS4sV/yozIE2CIfnUKMwkMV31dpK9xTD0TOvDu2j5kHpH9sTIgi6iDM8vR+1Z+pJinAKVI5wHQ6+VedL06WpPZCXDpF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725033954; c=relaxed/simple;
	bh=9b0L3NsIDub4Mtepz/qBCfsvdCSGG3ZKSmT4ue0ifMc=;
	h=To:Subject:From:Message-Id:Date; b=lU1o3F19iIZZb/H1s17VT7OohADunLwNyGyZx/nnhskqOKPeCbGzGheegXZbSAu5OftJJAHzMRd+A3PCvGHRmh3gR8xOJ8Xx0RJ3l9Vn6cKzmUhEPwrlPcNOQ52RwSNiKTvdzCp9+/7VipylwTt++2JIbgwonzmyq8/w5rqA/UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+VIEbNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+VIEbNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2578C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725033953;
	bh=9b0L3NsIDub4Mtepz/qBCfsvdCSGG3ZKSmT4ue0ifMc=;
	h=To:Subject:From:Date:From;
	b=C+VIEbNGVWirH2ne+vlRxAyu8thmfYkCBpm9JxF0csYwyBBkDZONma6WMYcGy4Sr8
	 371sE9kvsui4KKnPNQ0xPRm74QUlSpP+tzYKodq10jrM2F97NMjakNXfs4EAfWeNct
	 gyGAb+rhe0C3QyTkO1PB1VdWH5Y0KOrSRF6Lbe7FAXqAt04l34BtK7YjZzJxfLn6n9
	 nP/ZQ3MAMez4CQNxqvbdLy3Xk26GG3MVbMAyNpulj8IQtq5/mcR3Yj+n7Cn285e3jT
	 P2Lx6JNMK4AS7ATyqUazMrN/Vwoi0M9kTpEeX5G0KwAHZ20eYRUfdEVfBA1cD5GA8y
	 AlIMidnH0hDNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E4ACA1008
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172503395359.2175.1985258438811777581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c629aef90c386d5886227af0cdc6cf579b3849a5add124a0bb4f2be3c3d5fd53
Date: Fri, 30 Aug 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725033953
