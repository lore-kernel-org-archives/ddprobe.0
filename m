Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A951367
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781819194; cv=none; b=s1VdtecclOJszYocvaF8HFtMtS0L7tGTCsH0LrnwOM9sjCyB1DASdw4EeU/Sso8H9jV2DV8JH0CisEcE0ipoI4u8+7mB7sOfWtow2Qod8IRoW4dxUauLm79ZyT1hiuGpBJGqDsURKGCMZ4oQI+mu89RuXl821gjNM5urLoaQ8s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781819194; c=relaxed/simple;
	bh=aDAQhCnhKcAdsu2dgTk2oN2k/C/rMbyEjlASWXZp0jg=;
	h=To:Subject:From:Message-Id:Date; b=TdyR8wf3qxdDg82yRt63NaLBRduERKm85YeTViuSYJN9G4zarrISLxaeYbA10osincgbwfkHLUekJud2UTnP3hib3v0MWvruEMBK1F1TWBR7ExuQiWz1HyDuoNO5WloASYtDBOnt5eswh5voP4yrPV60nPfhsVR82lL9VH9QoH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJwrD0zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJwrD0zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF2AC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781819193;
	bh=aDAQhCnhKcAdsu2dgTk2oN2k/C/rMbyEjlASWXZp0jg=;
	h=To:Subject:From:Date:From;
	b=LJwrD0zqFDuWOw+wk7bk8nuG1c+9RRJ9C5GHs3xE3okdeJEZDqvxn/LDU0S7QqElX
	 oz3qDkVumyjhG+RlprI0Jme8MIH/bb1iRnQweGTyQRApZhC9UlXKnsUVIvP+ennk3k
	 gBwZnKT9liZf649gSv8PhRVAKqa4OHHqZBHdg2TZDLnMlralNGK5EeZbWhjO1et4Qf
	 oOj9Ot8fC7KuiKWzeJdctNTxUZvlxg+hZ3I3TVetkHshgkZMBFBSi0YkN3gwd+dVPn
	 lnXmCbcoiJES9jp4ccZEI1CXVUkxo7wXfmKNCEAQvAw6tFnjdn/pLuzu9I8jkgMjM6
	 1FykbNHXhZLgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AE9CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181919368.12074.9807491966861081606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a739fe736fa7f77afba46e7b262aed469950ead62a672e2ce275cf94658e36ba
Date: Thu, 18 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781819193
