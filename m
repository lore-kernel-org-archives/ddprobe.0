Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDB812F585
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788663634; cv=none; b=S4NK/tIug5s71Dzn03DBVaxBIPecBjr4D4gNyDJlN9w6D1Ph2JMcPlZhGL0WTm1xncLgCIVYr3Iisf2/gKSwhgid0lbRHncdIeIptDhSiSh/CmyEU26LenYZMZmn+NPi4WJHo0Op715nbi5jv07I4O5HMj0X1qEG1DXars2lKkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788663634; c=relaxed/simple;
	bh=jBK1gnaVhXgZQbpv/6BGZLbolJWWY+BqIWjdnROaVpI=;
	h=To:Subject:From:Message-Id:Date; b=flLpd5lbPiyRNcIA86T7NzrFVmuTaFSKHE+yPayJm1bMOidF4By0PVovN2LTXWQ2zY0Xb8q8gRoSFtGRfxqMR3D3pGQDSmBgnJzP+zJDHazE+DLob2ODVYUkDtNShG7/8u5XYrNOk4bz69OiwHEHNE73P4em2UNM6DxMytpXodg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=paBAKSxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="paBAKSxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2950C2BCFA
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788663633;
	bh=jBK1gnaVhXgZQbpv/6BGZLbolJWWY+BqIWjdnROaVpI=;
	h=To:Subject:From:Date:From;
	b=paBAKSxis2nyA7UVPrX85/pPNMCcAfq3n0DC4BjUY2Wv66SQQopsfsnOMOqeB+Zsu
	 XlgIbj0ftQX0c3r58S53tnLO4oVJCc4jwQaYanREKkrVD7dI9G9HOraLT2rtx5w2GG
	 YFPz9367Fo3tmf7USdneeJrJfivpngH5vE9lpr86WGwK82UqHsIwpWFm+kye3jOR5H
	 PduTlVwdUHr4+90q+jbi0HPi1sl1UJH2FAvvrexZp+W+RfVhy85dIirvZ0Ne0jBTTo
	 5j9Qi4KXMxzk9qh5CWcDbAcqVqPFcMFCRXUbw3JwGc9RTbqVUpBnlswk3X5aCwWPKU
	 DQIkGVSwmOKyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD22C79F82
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866363368.28981.16918990360848225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba469902ad53327d47c9f22de2f992f9142f425109f480cc0935268009af0db
Date: Sun, 06 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788663633
