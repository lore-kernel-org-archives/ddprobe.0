Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1BE1C3BF9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736799354; cv=none; b=ulYzMi/4anh9JCaZwJfxY4rQnFbX2de10tMze5qJpHPORXzw8ZTwErPpqrwS+Lk+SydBAkkJ+h2Ln4kyA4KgwY2mHCdZsgebfz7Q9W4uzPW+v+kE9HYiVhGa8CPN2hwfFsPJZo+/uwbDHP8fadkeAVJxwJEs6cgQ+y9mcossc+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736799354; c=relaxed/simple;
	bh=kOs2FLFSu9EB0NzUA01y53EZge/S4QruRKoXcwnRObc=;
	h=To:Subject:From:Message-Id:Date; b=gvoGZ/9fdrrp47Uv4Ucb8Wh/CoJN0TxWjEcs/wJnsKzZKtMzbq/tF7ayMAyQJ+Nlh4l0PnkWN+27zNORk4XE402mS6EuIhq3uquryQhpbPN+2/ss/pLi7w7OJwN73cFsXHKS62zY6WfghI1nveIsRNgjEDaKKbLMigPqmMHQqKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkllw3gp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkllw3gp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2153C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736799353;
	bh=kOs2FLFSu9EB0NzUA01y53EZge/S4QruRKoXcwnRObc=;
	h=To:Subject:From:Date:From;
	b=dkllw3gpKoMFE6WC5yQ54y0FssBGVg+oXtpe0kw/Qxy/W6N1iQGPFYo3fFgUJCRjb
	 Sd9xFXJ1+VyN73W1PzBu/dQ5nnCX/zXbxoaI3ukXC1Km4cjGVp7AVOj+rlttF5ZNCN
	 15A0WPh6bEuyskRuB5/3s3iFYmYeIZQiR6x8hF++n0W1UIg12NUfqPfs1ZgO9qm0dB
	 76SgaAYBJSP+VuROEVdGPZtOXcBIYnTykuSzWTv80gVWolBplPRB4xNFR8sfLlOIX4
	 gCYFJDR+RoE/NampwmN49/r8dCcxA2l6Kskbzti0Zcjj7Nf9BitsGnFwz5LCwM/u9M
	 SKqIgKUlh7c1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69EDC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679935367.31516.750383248768341662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94cfe600a348b6c13c8089f7afacafa1a98723f54b167c750db3404202bb748d
Date: Mon, 13 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736799353
