Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D718221264
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769845434; cv=none; b=dnBnWT59k1S/kwDCLQ2ZIVGxGTrpgV2/QyfRtkacRH/NU5mCxJ4OsdktP4g/v3I6bIAn1RbrJnlyCGOKNSeH9okAVTwgU66247Vm0iK1PHP/kAK8KIeRhbFZtOh+OETeLh5ocic1rto209WNJ/kvrVPskziABAcjrgGAiG1n2/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769845434; c=relaxed/simple;
	bh=kCXQ4BKehwWjo5cMz/8GZiec9a/nOwM6Oh9bWnwlpw4=;
	h=To:Subject:From:Message-Id:Date; b=GXdeiip84TiM203KjKKBhPK8U27ugxZNU2lXhKd5Ing4HGJTEc9ZZIQRDQK2A6dVPzTr5ySK94e8ZlqAc1Jf8uSbnHqNGR6PvklT2nazeIaQu4aRmDD73vhxnSrp1Z65Lm7wtKLNG7k7JAZg7cslNnfUqopd9Sfloqxxkg01UDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oy4mjJPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oy4mjJPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99FAC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769845433;
	bh=kCXQ4BKehwWjo5cMz/8GZiec9a/nOwM6Oh9bWnwlpw4=;
	h=To:Subject:From:Date:From;
	b=Oy4mjJPA9yQroSFRnnLytUYYTDxwJCyWmr4qUSD+SVZ0dWFAcEEcVnrtkOsWEhDjw
	 oitZMUpcqJzj39a1yAWo4GLdCfPeW87KBlQ/oL0BBekJzkDqg92CJ8beAb1lDbMQLd
	 JchsJOCCsvrKH7JFE6h92zmZpWyPLylfvboFQSd+8kRBL7IKsxoqEkgN0kfTD7IrqC
	 70+i+SavTrYmovpzqnO9Z7OdKQUKq/oyQniByTt7AMAmTb77TOQR4GYSyC2IVpQiDU
	 Gkp6tSG1b3FBKgAK+ZGxns460M6l/R4ZAIejjFvvgXEwW5cEiqIRLo65+737e5nCq/
	 4Pd9u+KRVzlfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956A3D79740
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984543357.16948.930252906558769310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 587e76b7d1b016cf2b78747bcd956595a4a72859f659fd2c7a1462edf7aece12
Date: Sat, 31 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769845433
