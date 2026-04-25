Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5DD1D61BC
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777103854; cv=none; b=YkItXgKV8S5Pp8dobLRiZwR7fodgUuUFKtIficyEti/OW1bh9I8gythUpIcrXhkR7cx719pLboZVPiFaVh7I3UgwTsNKSHxrOweKamaXDghqtO5WVuChX/m04uUucsSPgLU3ZFZ5Qeqnr/yHVw1UNByy/3DS3tOZovaPjw1M0JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777103854; c=relaxed/simple;
	bh=L7pwE4cJ6DJNZghTCKu64nb3rNUqTyWT9jQOKVbXj/s=;
	h=To:Subject:From:Message-Id:Date; b=PUWISBGd8yxmoAyIk9yaN2TzcbEcVKU75T4qjVRS/2qNk6f1ek0kX0grutu3nfbvGCGFNek0nlMsrs9oXQBRdoamMvYkO0ich/OaNTbC+FvChFU9O1ahPrL40x9/0r4jKErx5grWDUaBBAqNmDFA2pwmAf8gIJwF0WF6+u2R2HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnjPTwXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnjPTwXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A6DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777103853;
	bh=L7pwE4cJ6DJNZghTCKu64nb3rNUqTyWT9jQOKVbXj/s=;
	h=To:Subject:From:Date:From;
	b=OnjPTwXMiItHDqgNnKAclL816pgfaWAk7kSesRplke3xmQWT4Z+Ihfw6BIQEdjDGS
	 4q+XRVJHuJ11oyG8UwPgOA8oiwJQ3OIPkwElCqKI5Kb+GlFsNYjsUZD7CqqhAcaEZp
	 ZJqCwLvs/xgAj48pE1FpsLnVc+DbT/OI2MMEyVp+MHPtvZgD5cEFEKa1xPt9ewTH0Y
	 HN+1lCoW4zNwonU4LanYCiUDNgkmxzygebQrtYMBpmFzV0NMgFQ+EBMHddpl1lnlo1
	 ipsJwNLNV2CwUCxfXK0I4k1Qfavn1acwGANF10jBoFfTU6l2seX7vrsvarFgg0S4s/
	 AaPVf4mMAnGZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF94AFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710385368.1496.4239976076597553420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c78618e07d82cab8421ca5d5329a3889f3146b68bc927bdac7e157cd76dda33
Date: Sat, 25 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777103853
