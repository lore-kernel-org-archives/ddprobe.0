Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C7BC8C0
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716860663; cv=none; b=OKuJIrI+av/na46jTm5n1fK1+MHsxra/lHqYLtHH3AmqKWY86wxrTqD+xxtG80ritsYB/U9eQJCKjLoJNyqqwLkHWvDT7shrH+l/1csjV8tcIcIZ+RDjtx/1TF1Y9iswGRvjixFIrBNaIcmH+mQTjVHIM3cd2QOOdV0Nns7upvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716860663; c=relaxed/simple;
	bh=fNpeHb6cjIlzeKkFg3Tb5s8STtC7B8b/XE8JDUTdToA=;
	h=To:Subject:From:Message-Id:Date; b=CTb00JHARyyH1VG4O3DSEVyvSRrg2Joc81vmrJxiNFVioBOewFmN8UL3ZjgbGevg8cEQImGMfILQ09f8/sghvB8/uFJ6H4HkkQpseuBGsaWlhTkmn0r+2fkRl4SGYldXEbzCiiy6Nc904Ye4exKf4Y5iih9sZgFIxXk58DDIfIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FD9UM4e/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FD9UM4e/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0AB0C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716860662;
	bh=fNpeHb6cjIlzeKkFg3Tb5s8STtC7B8b/XE8JDUTdToA=;
	h=To:Subject:From:Date:From;
	b=FD9UM4e/WFMqnGgML1q3t9zR5DljnsNXw+iLeyj402FzdJyA08AUiTUqahboMMu8L
	 ZngEqkk+ww1l4zhAPha9hseryGMiVO7r+yZ41uiiAY6eZO3xwIQ46Q0vAXiLeUhCIC
	 d1ssFdnMLcSIS7RLVQ+cEV5KDf0kdmlKrIYVgU7oGIhctIg9UZdU5aOeX2mUBMoTGi
	 WTYXVnu1ok4AQWcpAwwTX/B+F33nNocGtnNLaYRrlN4daG0KAcI+R+SP+v6zAIIB6U
	 Yvb/JkKqxk0L2pv53ShX9Ex6UsQy9UdmubGFiZMg5rsxV4RKlhWjNjY3mqJWPALUJA
	 Cchot+xGAz9cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D16C25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686066278.489.10161284117122399787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8004053695c56226a9c0a1ca9f1eff3c432102e4513b9837af907a46f279d341
Date: Tue, 28 May 2024 01:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716860662
