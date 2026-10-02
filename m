Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5071344239B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790975434; cv=none; b=H7yeWi0IUCYdkTGS980YmBMwAqykHideCXXQgovJ/q0EUtKOMqWvyywMmanMTs5ohn5TiwX5YbLTu+yrTbmeCppRPHNdwlLoqYKF16vhz2iCdVhXOEKJL50UE7P92zd5HbqKOLH3DrI2+53vaB5E/C8fn0P/TVKGiPyAxBZrOtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790975434; c=relaxed/simple;
	bh=AnPxOf/yq4Wj6Ts3gkRfmSzF+xCvBLRMzxzRCTJfC+4=;
	h=To:Subject:From:Message-Id:Date; b=MK1YAUsUxTFa3mwJpTIv+dkLth9Vzdnf/bae0M5Bn2X8p77QBAY1wgl0+0yMdB8ymYvQ3GQfCMMIOCP35q1BOF6pbLXSURGX8zACdDUrEfQkoRveUmM5fLaZCg/i4Wb15Q9uuK+dBuA7y+JEc5gPoYSbIYzLaXUL6QCSnZQiNzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8ifs7DF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8ifs7DF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3703C2BCF6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790975433;
	bh=AnPxOf/yq4Wj6Ts3gkRfmSzF+xCvBLRMzxzRCTJfC+4=;
	h=To:Subject:From:Date:From;
	b=V8ifs7DFMKS/uCroYO1m2lvRsimjmfpWbz5JoR9D3KCaJRXluvkXZ+rv1WT67PcoG
	 vUd493OZxAwYmtCNEkHEMb2xckcr8vzcUNW3PHJTVtNDXsAW3jhEElIwrqK73Iw0EU
	 fqw/IguKGgCddeymEXof3NGC+nwH751rVTADrTYt9oK2wQ4qHriyRLb/lHx9Qx5aHO
	 nSsc4n0+CmmwnUqY4EltmFWvMfAUBjgtaogJTV59VhFvYnMLD0am235tjvcPYVdU3W
	 fOfafwsxt4MqjtVST2TTVcbCavL4huBKKTfPrWqo33IDkD5bXTyjOogZVELQ6VddEB
	 CPTVU1Z7CQEPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D9ECA5FE4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097543368.4788.9812065874733564209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9ee02e09e17b48de642e2580bd097aa04136aadb217f15c6ceae32c4e13b10
Date: Fri, 02 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790975433
