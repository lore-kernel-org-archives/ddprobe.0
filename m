Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523211E868
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741308534; cv=none; b=gjDo8RXFyo5upIFgMmsa1FbsnNS5Nv6Hn1IIRWDrIPTRHG9mRVp9oQQknX22UIAFeiVaIAmuksXH8KOlwH5DIVne0/nbRDB8HyOcw6unNA/rMNNIdA7CuBibifWwZuC0yMsT88rIm3fujg1KC9HgzOgh5pSak2WyPLNqeQasCTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741308534; c=relaxed/simple;
	bh=jgzuVkGGb0qKMyE7Q8H1s7oR4g3vBzDxca0wecR+wwE=;
	h=To:Subject:From:Message-Id:Date; b=i96/7fX13YDP0VpDKW2yQ4AX6kx+0MAN64fnRxTJaD5Hm+qaU7CnZvbeYNGsVpoImHGSYNROKFgy1W/lnI46GG9g64HFqUHF2YT+1rOPEgF81HaPw2LhF9VqtrWUlZYiF8WU02Gjnd5UM5wd70F6uDJwJi3sIm6R+HLminRB738=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGqzdL7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGqzdL7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC8BC4CEE5
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741308533;
	bh=jgzuVkGGb0qKMyE7Q8H1s7oR4g3vBzDxca0wecR+wwE=;
	h=To:Subject:From:Date:From;
	b=sGqzdL7rQrpS86WnzVwo8r2ZfOKuGg6bgdielhyPrTU+om+ZSzPofV1vzfqNMxia6
	 R+PfozpWKnuKNZ61AxD0ENAXwqUUBgOlqgIWKzifRinp/1y1v7271ygw9LI1O59D5W
	 vd1X2Ch+6Tm2PGOvSbd9yI6BS/NKbhqJaX4WCwIyIXQ03KlhgTxKQ2z9nDrlHV0ix0
	 ENs35XUYewaWI6XWiFAnf9AhOIoK7xxd25jHo53DbupBho9gJQ5Ha01ugVvYvT5ce0
	 dle//x5OoxJqwnm2QhEw5We/yodpJ13el6OvzdFHvvtKCPoJXAAizAAiAvkzgafqJ7
	 u8lr5hHl7hUMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C3CC282D1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174130853359.9653.9756315465219743329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28820fd71d1ab1e1653cd82bb29e23d37d4f5f2711e1751e41987f6e2b32e73d
Date: Fri, 07 Mar 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741308533
