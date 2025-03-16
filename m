Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A52FD531
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742107794; cv=none; b=YsIhaGqmgfqMsEuMtsTQaykSXx5DCiMAaAeCjgYYAXN7cH1A4PxvKxKXqKOWk9CrtHW06C/9bIOYmD+nEo+bQT4dUTZCj18zU6cuMyHTZFtDrzovxbbq4TFlBttfxaWdEwWinqy4eYrPBlWaCecF/qFz4RNCMlYQLTk2sbzQ3PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742107794; c=relaxed/simple;
	bh=KjQNgSbcvjQa4ZFEr8M3jDf1x/BMH3/YfM4rFUe6wlc=;
	h=To:Subject:From:Message-Id:Date; b=WRfvQv0S3OUVkgr8wKetovbFQtOAWpmdPrQlG/+aa6ymsjBZPKt7+lypEtiaL9mRxAuIidaBiBkq+NunKuJgoAfz4LFtIPhpAgjTDIcbfQNeSaLl5vtCpE6pnNmknwsGZOTTiw6s7IbRvqKmBrGGgh35+Ikrc/oiDNsdebcNkuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcuMICPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcuMICPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34F9C4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742107793;
	bh=KjQNgSbcvjQa4ZFEr8M3jDf1x/BMH3/YfM4rFUe6wlc=;
	h=To:Subject:From:Date:From;
	b=mcuMICPnrhD1W3a25Jm5rr+IByNvKqd/VZLOcjH2e/V7jDfoGvytzajXO5aDBHAka
	 fylLyR5ds+1aE64ug5jwV4VKP63ZykPYJBLA4zh3p5eAPkvHXNMxw28OsDFvI0xGfo
	 Tdn/ltftEqOWXKXzJuQvRxPlUXJ/RD+FMgyss4ouZfF94Mqyl4kvqlnc7UzPD4uTTE
	 DiI0oaHdIPk9cZz4if9fUNkmM/mQKHV13NJXP5Vq5HmnNpL/9dOsnvt77BY2oj58Ef
	 UMlN5q/y6Cv5ws936n2C2VAbxAStjv4G2TO+W4yVrzJ93jozUkRGwItVTbHiA7xWB+
	 +fAFqZjYtU2LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E04AC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174210779361.8348.17614480461694526981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653133ce24490e6bfa12534c578f02aa7d3c002d4bdbc487f0d27a2fd6783d68
Date: Sun, 16 Mar 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742107793
