Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3AC33A029
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772838294; cv=none; b=A55iKI2goDdOJyFOEAz6IdI0AEjQ39H1HN3GGMubnk+xQ3cz8tNIQZFPJ8M0IUizycLjyODcU2QBlIhDx4MIZp/wuKR/5WPMR6G6fMLOJoD6PqhrBw05zzF6FDi5inCzq+Tg7QF/sMN6Cedm2PXx5545tGOdBtB3GW3jVDNH7nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772838294; c=relaxed/simple;
	bh=jZdL5rpZo3oio9sIIK8w5vsVYAXFa/DK3MYaRr6t7sk=;
	h=To:Subject:From:Message-Id:Date; b=A9m0yKw9mAH7Su1uRLd2/+iUOqyrgGy4yQq6RJeBVhztUNQ5oLmIQvjHPhtTnPDcO3Qf7EJ7XiEE+da2v3unuNFZlSXjyBTIzpcOOA5Pef91fr8TteJlJ+x01yyu00OSt8Ekiv99wq3O11WblJNquEgEtNaymVorC9R8Zr2gDuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdmE1YIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdmE1YIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB295C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772838293;
	bh=jZdL5rpZo3oio9sIIK8w5vsVYAXFa/DK3MYaRr6t7sk=;
	h=To:Subject:From:Date:From;
	b=RdmE1YIbXeDzVMnHuoc+zcCh7FwXM63ETgP1lYid41fCKteFE7kIIisdlNEq6bG9z
	 aBW8rik0fzrpVyB33z10hlV+sTiPKDJVbiREIEj099xe72rZJJA4hgsmdjokI1RBjY
	 6M7iuIGqLBd6AukOeU6kTuxs+7QpPFyB+w/8IiO54Gt5P6SMNKRBBYr3I6aYYzuAiP
	 Z2heuuvS30R+xGMlXzaGfxEZoSui9AThmserIGaJAYTOXrh8oiktIyg8wo1/5zGSqn
	 1BtkvswZbyi7DMpkV11C8b9iojIbTkTptgam48DtYl6pT3W3lmkNpmHK5OkooMLiCs
	 z7fYHLXuObz1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987E6FCB602
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283829358.28376.13475011156701446628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086a3f7e87b212dd116123fa63f6af2242d44d0326c8a819cb0fac60f9b84d16
Date: Fri, 06 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772838293
