Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8041C5D57
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755466194; cv=none; b=YdCcGMgb8y5xbCJPYMyEaEpEyFJSNNe/xowyY/g/gEaRZaFemyhlGwLy5mSOdG5TgRZg0UDI21KdleM8mr2mK6Y3UsEzNV8BN4giyAomC/DOMvqKMNJ8M3lo2ZBGzGgD77pAZ8AtbbiSm30FiR+HNdALLM7Et61mgptJgKr87e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755466194; c=relaxed/simple;
	bh=OUJN+o2dEzhTyhgd8lr79Vcp5q0MJxrqD2m9E1MRttc=;
	h=To:Subject:From:Message-Id:Date; b=D7+oUnr+JCZOrLZ+m61ob8QfBkjiXZVL0qAeGAB3g/5dvBUBsiwcBNwwkE4TGzQr72aZ4J2gwsyVIHVBsgnNAfq13cgedSy7evwjEL3jYkzvqmqPLnWWhM6VAgKGvyrPXYIQv+FGw/dbLF3WTHpENUw6KV180quwPpBTk/ZpvNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXoF5wsJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXoF5wsJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FECC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755466193;
	bh=OUJN+o2dEzhTyhgd8lr79Vcp5q0MJxrqD2m9E1MRttc=;
	h=To:Subject:From:Date:From;
	b=CXoF5wsJDYSabZYZ+1ygZIr7NaQNDfrQXKtljmNCfjvQcEOMqvf0Cu3GgSfRmwKGu
	 sZb35yymAj5tKYH5QeMZNuNOqaGsoAKIgkjlAzsfNACjqZpRIKZcdco5QWzO8+9bdg
	 C8I01XCPwFXuj1v3rZb0sx/EzTIGAmA6VDe1UQgx2E+zXKuB3T8fWAJBFqok62+aS/
	 CJzpKwlfwNeW1Zi9c+3xdFpmVr2MLjRp1g13WAgwrX2F6orAquAGNopETqHOC/7zTb
	 R19SAgyNw+RFoKTGgNE9lKGExEa9n94aMGtjrjM6wUS9bUHGwBdc61LKeJon95TUWF
	 Tgl5GDxzv3mrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918DDCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546619357.21680.8615601921266265317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f853ed85726ffc3c2b3aae15ab78a7c0036e59f928f18a26f63e57abe3f5eab
Date: Sun, 17 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755466193
