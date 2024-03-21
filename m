Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D777783CD8
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711028296; cv=none; b=WVSQTq9rnKO5LtcpOU3loX+fjuIvSups7K8GKelSViik7Gd/S59AbwMnDwifX4NfQrJ0HP/3DhlyP3Z1tvfDHJaI09ZO7cCJd72qdvjitBp8PWOR0u68aop2oN4LZn5nzzJMA/AU+hQ8ULuXwGXV1P3Oh+V94uMXJziT3/7+FIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711028296; c=relaxed/simple;
	bh=BlKBjRpiHwIFLz+q+NpdCaStBgEtXsIIfcILf9f3+k8=;
	h=To:Subject:From:Message-Id:Date; b=g/hBnM2qCVmKpDfTYzAVqT482nC5f6TtivH3SWLznL1sLtV00g18iHmd617NtUxsAr5smw9trtoKENP9aTzs+0tMepRWK+uLc83MFIGlVbaBF/8CYUurJgrZMyMzXAzfR7bTHBkjkRo1neBI/1h4bbc9Gym317dqgi8vixe2HqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XduahZsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XduahZsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74664C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711028296;
	bh=BlKBjRpiHwIFLz+q+NpdCaStBgEtXsIIfcILf9f3+k8=;
	h=To:Subject:From:Date:From;
	b=XduahZswcBxKUGFM8Zy3fz9NzlhRjPQDTEPA0lq8mRMx74Z8ncszz8pmlH4rAfSl8
	 BUdGIZY1yYapeHGGkYSnXNrxj+aRdCOVtw5dxz3qpk4KGvr4v+KHcQYEBALX807kYD
	 UH/Xd7YWiGJrS8LCtX6jQWhb3JbsU7NCn/R+mY5ZDlOVlTdLsaqGOlPpBhbQNeMd+9
	 X16eyYRANCd8PdUQvrReuU+Z7f6j0VY1oAWJdl/PEyVVldg+Wa29Jzy23erfO3aUFN
	 cH+keURLgkB82gZ2HT9nza8lkfbT4pQDVUhopDX63M79iunG0iZbreJwiCxGqCGhBF
	 6Aa+H7rVEYXig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6051CC54E58
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171102829638.356.2981813877138669711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09645741ccaf2f5d3fa1bb2e47e8ffc14e3c509f506a53ecadecea6c8e81034
Date: Thu, 21 Mar 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711028296
