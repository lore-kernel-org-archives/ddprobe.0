Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E7A1F12F8
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753295394; cv=none; b=S/OejKjqL7RF//ier8YJ5yGeV3Pw32TDBY2Gmx52kPiYreB8ZwSb9TBYnJS9HxtPfKLDi8nRIAg5DFvpwIjUjcKY1xwPzMBPi4t6LK+8Vft8hLdLvREF3nsRNvDnRQ6cBe3hilhKokapWp+5TawBBzeIZToDvTYVVlvtIPYIPD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753295394; c=relaxed/simple;
	bh=nb9qQjZOU3nddi6JMzD3mlwLntrCR9Vwsy+6iMtOWCg=;
	h=To:Subject:From:Message-Id:Date; b=WloEpR9hDO0C/3jTxCEcc0RE5i8DCh5UQbrx2IXrxNtHb+9RleVx/mqRx9tWskXe2MDr2Fd02d4plvXU5RzlbbV1EOiFUw2YPdFpj+3oRGj0EH1Q+1i40Q4Jwpjr4hJjYSeG2ATOowrgdqn7iX7cnlooHve/R85kU+aLHzbFVV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTZSjIJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTZSjIJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F6AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753295393;
	bh=nb9qQjZOU3nddi6JMzD3mlwLntrCR9Vwsy+6iMtOWCg=;
	h=To:Subject:From:Date:From;
	b=GTZSjIJLfzsv8lW5Osxg/1jBEWJkDjT5TgbJPVWBGSJMCZr6FjqCYuRpjVz6CO9nv
	 AcjEXdqqUUYmWz2H7wY+zPahsdHl+vZpmEB+8I2uduTFGGeL6/3/LVbnP9qGYgsWsS
	 nOvQ5YRUjO3AIsaTW8sik2RR/0pvBXm0WB2sDpaGWzh4/HmeoBWcRGshs6mLIxSbzc
	 pZoilMhFe8EG94sMl2g3y6wVNtQiSD6Si6w6FmPLu+pzVWJCgMzOdk3puuXU5kDl9G
	 i0BDQ1CdzdZjM7En+Drm5GlsHRsDNlyxNs1uGvLm5J/4Pr8Bx791HvsYAgUXPwvxoG
	 LoY9hcboDnpIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953FDC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329539358.23137.11329115615059090921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf1e397af48e1f034ccd58c2688b56079a383cabe1372b66b37a13750be1a33
Date: Wed, 23 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753295393
