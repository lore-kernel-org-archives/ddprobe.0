Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA272561A2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787793034; cv=none; b=lpRPxB7WOSZax81lSGotWpeEEpjn7mcttTvnYaxXtvMLBm89UelXMkMvuQqOiqTRzwjqDvlfmqgGj0JkCFidhlcK530QWztTp2MMyS5Cdl507HOxBWoMf3IDZ4v8rCIpnnelB7wKzN7QbP8hhJaOaiJ6RLt6TrzyHYMVR6zGxwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787793034; c=relaxed/simple;
	bh=aIxLhRT/H2NoHCMTlzM18rPwSJEhpyqehH/ZumqrOXc=;
	h=To:Subject:From:Message-Id:Date; b=Qm+BVPfTizWACoSPETlvMyubCi313fl69OwXvQwGYBtEO3SZ3qrcWp+NMTR9muRA6UeLd6C8hrZeKsCpSScf5RsypCyokQHigcjTGG3gAzoayMuKg4TlyO8b6vI2cGiD2KTW74qlEfqtMgxNGbr6PtGZXy7MVqB8j87f24PyYCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdJzLFWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdJzLFWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38D6C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787793033;
	bh=aIxLhRT/H2NoHCMTlzM18rPwSJEhpyqehH/ZumqrOXc=;
	h=To:Subject:From:Date:From;
	b=QdJzLFWGIk/REj51n/U8s57Ingxgi6W8I/MFBfmCfA6m00vbIJq7KpeNif3bCxB6f
	 5iFck7yBqUzWfMwGct3QaPLSphHCi8z3x69uFF0A6wm5Il7+TFqPyrHEKkgPQtsRry
	 N9DvToaDmeYadMwDpIuTa9c0NMifk6C9DKPXuiKqSMyrW3/effRxRvXP5alcVy2R3u
	 svTJKu5HNu/xWBfTwfzrLIw5uXMMVuEAmupViOgsYE+rmQ1se5VSo0AdBSaIxtmM2v
	 WYOxhCzOmRwr67wNvOQVl5eDjoCYv1D/WHyVomR6wBnSxJcszErlcPzyMC5Qsvvd2I
	 +zkBJXJFRGkdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD254C61DBE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779303368.18785.1205330170731135992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84faa5d982a867799603bc45df5e51faef3cb545bed22dc701ed18898f9c91a
Date: Thu, 27 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787793033
