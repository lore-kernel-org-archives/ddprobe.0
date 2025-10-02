Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6EC255F28
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759444194; cv=none; b=dS6CvqKb5qVP15a5GxuiqZwUurtVCmZ2O+tXteUavIDYUJW6/iAcR5PlqI6ryt7nwnRdqLvcSNimfAmhv6xsbfp00CM2DSZyQnkdGrE1Yhki1madgMR0FHDW+tJkpW6VKix7z7E2bIwgUrCDseRcY/4XQ4i9oTCh8vVPK5CvVFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759444194; c=relaxed/simple;
	bh=WvTxJ+0Sj2lbycufOdhHTwMjhwsuZSJ5Sva2ZALbmQk=;
	h=To:Subject:From:Message-Id:Date; b=ehdEWYogmy4YYliRCOAo9o6tfynQ3CkwiBFUI24tiGvcQquWzEH8Fd5l5n4yr2RIBGNGKuGPMunZe1aTc6fwEK/YLQextDpIZSjK4adCNDNEgDuxuSLntD/V7BsaLcWdjv8YRukW8Ua6KSRXuVjD4YQmpBMNfNUzlxWydqQPV/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+w6yEdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+w6yEdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37AAC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759444193;
	bh=WvTxJ+0Sj2lbycufOdhHTwMjhwsuZSJ5Sva2ZALbmQk=;
	h=To:Subject:From:Date:From;
	b=O+w6yEdOPnpGuUJZyvl60ZEKWxtPuzhFlBPUn9WKxiM4Td2y2Do0J3YJ078/uXcaR
	 7NLTcylpdtrDmAA8XBVPfsKepEPoLWi8pHaja3qy4OJTzZVblbqZWZQOQD6hPfi+7y
	 aeE1wo8xod96vlVwVE4gOB8RaIyKGTUBb+sEZazwjddAOCwgzOtN3f3LGcdBHAZ6bZ
	 qzPG67IiqdbU6PvSC9jIgFNLeViWyATgk1MAp92ZORfd8pHTIACXLvyrC72JvAFW0/
	 0DOz4t9drHAQT4QTv5opCiKZwp/Vh9//BRnkbXiDR4eL+6ibz8Xp2g5GeCTyX/vsBI
	 S21mObBqNhtNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A30CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944419358.1149.2253357663229713022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a300d158f6e835257261fd300eba0c97cd0f034ec65a72fbf070b731687bceed
Date: Thu, 02 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759444193
