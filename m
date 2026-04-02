Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CC135F619
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775112934; cv=none; b=hpO9pXTGix83rPe2vXjXoZUcCA7irUfHxTOowHSpZR8Xlu+TCF7Dfq3Tdoo32rUj9ZA1YWGY6xsTNLh5fSztaERDmzZr2omcJqPCYAqyc2689bx3K/u0nvPO2fG6vlXyw/1Izp82IlUm8XW+RbT/3z+JEYy2I+CDcBKYqk1ipJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775112934; c=relaxed/simple;
	bh=uitrgG2v67vQT1ACNv6zBAx9Qpg1yzY3YXbARKkZXe8=;
	h=To:Subject:From:Message-Id:Date; b=UfltD3O9qji8fVz61b6IEcIlQ93qyUJPjzvMobgO7e4ptM5wrGL5cRDu1bC4sPtDSrmUpcO9kwek5tlZvbOKMeMS6Rw4yoBjjg1Mj6ibDBoEiubo+AItDHu2EkrdDhH25T3OiRl3Ab/eaUjxTqD3Kh0tA3rR486wyjgJGjfPywY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBun7Vc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBun7Vc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33F5C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775112933;
	bh=uitrgG2v67vQT1ACNv6zBAx9Qpg1yzY3YXbARKkZXe8=;
	h=To:Subject:From:Date:From;
	b=cBun7Vc2NLb2bWwOrnjagL+ejBtkgpGeWYZCHxASxaKmDvD60zmMlKsxgUWmdqkTr
	 8l6EHAYm3J5Wz3/Tt0Sm8dVKuYmeiu2U1+00tfG8seD55FfvQa0IQDRMh6/Wceh/z1
	 klWHw2mXi4JAL/mTciidcloLvwr12WtgY8d+a1d4yGnwFjuF6Ec7KYKihiCI67pKE/
	 7FRZsUC8SHcKMTi9T/uhuqMHLekjwr8YzJuI3OWlCaCjI//jGyATKqtr4aJIYODx7n
	 7ru8H7YquqJUiqI5Ev8SSpI/M3NfAeUHtL7Yi4qcfAmuyatmpiv4fw3QENZ8i3UyFH
	 INARK7KRJqtiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F7CCC6B00
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511293371.25841.3082385230616500070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc06709f0ccea88366c6204802c34a6f402a8e2576c9e7619efacc823d0d1df8
Date: Thu, 02 Apr 2026 06:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775112933
