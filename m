Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255F53C482
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725716154; cv=none; b=PGYsCgxtsSWWif6uXSfwhTjPlFXcsXX84mN8AbfJ4jj7H4vS6uP/gwYf2YGkxaoC2vG1hy7QIbovfSBMNvoswvrZiTvJmX2WcZuUBdkJstFm1iwSBY8xF9m+VjdEG6JIj178smJBTkWqMJWi/tv1Z5UD2D4Zl+y8hSM6FkQufPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725716154; c=relaxed/simple;
	bh=OrPhN9XhpikuuMljHjc9k+UdoA1ImLfQBhXyxTr+liM=;
	h=To:Subject:From:Message-Id:Date; b=kFr7eLOtbh5of5GLOFInOML/BW8cy3eK0ZSGajkBpCptXkzWY0Q4pLWYt84QDvDO0dJLr0sGZsHJLtdGe656LdjE5j+LbdheAl3V2pmtXcnPme4QqRQ3X2aWDmwVyrcxJbkpOZKuQ13DoCiv49UP6GYGNxxZzMyyx34E52JfXMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdkx4mBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdkx4mBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DECC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725716153;
	bh=OrPhN9XhpikuuMljHjc9k+UdoA1ImLfQBhXyxTr+liM=;
	h=To:Subject:From:Date:From;
	b=kdkx4mBajDW6E39McIeqvKT7e1kBwTHh4rdrGEW2SjubWVWndnJtXfqvOTVKRphuL
	 Dth3TAr296A9MfGV2SxxxEo1xZu2Dzm6HafKYdN9GXbRN2yKzns4q22xDlPWU9tBZt
	 K8mO91l33/M18CTC6W1a4GgvajMOU9+dS8GaLvLJsuDXHGbjdh4RbRKlOKJ3APTfQQ
	 VNpa5toiR7rvK4CpW/crtP3KkeGfemNvaIsk2Y06yXUgnMWrHPswRkXBAoOdn+GjF4
	 ZYzD6qeR6CsKLF2dgb1SHInedID7I43aLsj72uwikkRNvITOetQq52toij+IaJ/ngr
	 6N3R+/OA0NV5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD7E6FE4C
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172571615358.3986.4918660283276161915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ff0096de87474ddfa27cda05b97709bf2522e5be761e649a28cdb0c6c664b3
Date: Sat, 07 Sep 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725716153
