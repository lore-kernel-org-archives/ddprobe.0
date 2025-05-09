Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42201BA53
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746753594; cv=none; b=mj8EuNPtGbPbQJJiKfljKIaXL+oxW68V5Eg3LHuz9Thi1xJZ9kAlwV0ugXoYHQS6oZX0lZGnblShdnY8Nb1NkbMHSAWglhGI3FJbb8OFfT2Oqmj1Kbu/lbbRKhfGIlwEIUtweKRGmcQck6OsoRn0QB7MI7B3uCsF93Xv6zFWaaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746753594; c=relaxed/simple;
	bh=qko7V/orAZXNHSgwsXrQNfaAKYs1Mv5c29WJDP/j6zU=;
	h=To:Subject:From:Message-Id:Date; b=timy7/KtDxxMwyZAYmf5c/LQRzWcE+ojxTxtRfmWzNlESRyskI/c1/yan4Ou3Z+jg8Rq9cmVsIUyW8+wbWqnLW7dmUVDnTh1LupW2VpJk4sAFni04uKCBh1C/eMdqP9kodq6laMvb+xFEjY94Q8KoIFyGek1NXYaHlneYkLthyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JU8RyjXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JU8RyjXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE448C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746753593;
	bh=qko7V/orAZXNHSgwsXrQNfaAKYs1Mv5c29WJDP/j6zU=;
	h=To:Subject:From:Date:From;
	b=JU8RyjXowhJX+QHTFQtunE6+uj+gbRIsGXWnSGFDIveSI96bEFYeLyu269IQyG7bd
	 dAYQ259a84gYYub7zmvf3+04Maj5dr4fFCGtXXy8wShCftlBG0f/59NpGMaFW9D9l8
	 bm6CRx5cMxxiJwpzfq2f4sGmZv6QS+hvjQ464YHugCeMNT05MhSry89vnlO/fBYnnI
	 e+krugAXq0OhJXmM+2sZSAIoPXIhp7oLikkIRi+3NdrFsVZGG0g/9y5LQB27GZJybC
	 he/ZK+hc3Xl7Ir7VEHo+Kq66BCJYyxXtlK9IZZWQMnWB0Ik90L37p0izSp85wLKRUK
	 TeyA3plnz+irw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981FDC3ABBE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675359358.25594.9198929259100975939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72149964b12fbfedc8c7bcc8f12581a6896617742c723acfc8b8f3fb3da656c
Date: Fri, 09 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746753593
