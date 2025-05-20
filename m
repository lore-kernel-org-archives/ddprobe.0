Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C0A19EEBF
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747753794; cv=none; b=mF6/eUojcl3EIBhlPS9FYvDFuGejiXS9hQlODLLu8OjiMCpbHgFIGBaEtNJ6L2vMwRM6c8XGx6+Z7N9oTtMqTdzG8Y9uaBsJfprmfIn2rPlN1XWww6uY0L6U/lHSopA33ClYPHgn3Qt21bTaTe3Uvsw5f95Ssmy9x4BxN8zDDHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747753794; c=relaxed/simple;
	bh=2XQRoUv7pQUBQiCyqKYSybcb/08+rndZhkbTA64YLaU=;
	h=To:Subject:From:Message-Id:Date; b=d75mwRjY7y+yKqkkx0HRuDazuNwjS0caU9uU7CYtdq1Vbszw0tlA69QLCAKw4YbWSkM26CKqrm+5gLjRoycG0sDw6U+NviLiOzgQOd/pp3wo6pFfe4oNONMAGHWfy1JJfnBjgZVtchEeuBcaemrDKWB6TQpsGeyOXHNC+Jg0Fek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4vhF4rq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4vhF4rq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02F4C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747753793;
	bh=2XQRoUv7pQUBQiCyqKYSybcb/08+rndZhkbTA64YLaU=;
	h=To:Subject:From:Date:From;
	b=K4vhF4rquQl/DIvrSKHq5T0+7cEdobHrneFZD+f/06LjmAkwuxevZKuFBK2HGHTFV
	 jKr6Qy+WA+/ep54KCg1Zd+ddWB5oHUv9/PBJTcqi8YNXjcQRcLsIIZRE9eLW+aG5dk
	 +YP9OGjaLlDpOQqqgBDS4oxyX2wkLByyrl/MGdq3h2ThU2O0gQsxiTyxEKOegSmAUb
	 GCXM0YNpWyUpVCupSiomG3cK5VFPQAemanuyT65LtKh6bDIQx4Mw7+2LT3umManePu
	 QBQX5VxgD4Jdm4o9N2Qyfe7StAleFinwTmH3BL6L/PS7JZ2tv4KF0a7IwlI4gsyaiT
	 aU90ZtcQdbP2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A5C54E65
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775379358.24768.17815135354745312609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c379bafcb66be2ab1f2f6908c8cac782712c09db813c27055e4140f1cabbf95f
Date: Tue, 20 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747753793
