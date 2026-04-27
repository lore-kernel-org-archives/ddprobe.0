Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBD01E4BE
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777255054; cv=none; b=JhASsjtEqDLjxq2VzD1oN1GPRFzbBrEDcwXSBCsw1zV5gvLqbig5TqNdl34+qsq9xihOt9fvnKscmT77MGjQd2M7FPMkrSz33/zzWZ9NwJ7XP2MhYGI3kKs6ScUR/13wha2KxNv+IdZ5oX0ycoojFwBrdE7pKHFiTHRyWQN0q+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777255054; c=relaxed/simple;
	bh=gn2OKJfWXJsBHmQhvaH89jk9pI3CYwe1Aa2j4G27SZM=;
	h=To:Subject:From:Message-Id:Date; b=SnKrEOm84JcgdyXka/d8dFmvmentxcSxdSSG0eWYarov0bnNDBpMuyvce+GlJ3HjLLCBMGzlcRZ/WAMriIHpuGsHDAmHmUsv/j3qQXODu2hsvIjDZ/WUvJL9SxoZVUrRxt5D+px3CpOLQiUPP+8xS+p1t7cJUza9BPYRygnyOEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3E+BN7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3E+BN7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FC1C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777255053;
	bh=gn2OKJfWXJsBHmQhvaH89jk9pI3CYwe1Aa2j4G27SZM=;
	h=To:Subject:From:Date:From;
	b=K3E+BN7VtCUKa3hrmE5LWQFWT2k4oMDU9qBQSYF88ENyXuicEvUKOZPHfStDpDwEx
	 cGcQJgvLyjBVYekdfkNK/eNUlxSzFYyheejx4PYV279js1j7+QV9nMF0VVRdvMYEJW
	 n3En/4hjegbLBOWmvOXIMZiyr0gfXLddwfMjrTrMlEi6VWCEPnlDU7RmVXvJrOY4PU
	 ejXqODyQdHcCde8KoA/FyGs9r6YknxBZ+fmShvcTLHvbUpFvD5zUHQLUoSWrTSQY6J
	 xpkE8ZGiEWbkRQnfKQj9CZX7yeEWez1OAonZxNw2XmhtpEoMBOWEWQKLUujrKFicMg
	 HW5BYhjdc/g2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EF8FF885D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725505368.13968.18170279668806577940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df116456725f5d85c71edd9872b13e24546c0622825029b2557909ef22647773
Date: Mon, 27 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777255053
