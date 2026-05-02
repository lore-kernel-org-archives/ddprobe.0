Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5701F5EA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777694854; cv=none; b=AXzxoRSF6VPz5SkR5e/Eq2PfPcExCzTw+77+/Xj3YwhSmbjC4py8cwMLoNDWhFLCPoc1DsxqtpXFgkTp8MMPb0T0emD1ba2Rn2a4QvxKO010iiB01+vmvWDvH5J5fOUgUjxdjwinvO3QBIPF01FBViIRalJ9nmUSDozp+Xvw58U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777694854; c=relaxed/simple;
	bh=D3tSOnXxd8hxL+zEDXiE2Oww+7a4DBGXWClm/t7Jx5A=;
	h=To:Subject:From:Message-Id:Date; b=AvEqiOX5Oguv1GZuTnhHpPJHW1JJ15cyMNlKIlWIYQdMHXYO2UmpWT/HfLS+ARHpsyxRPhrSjokXXyxd8lieWIUh5OMUFMsOAH+fFkXPq5K+uk0CKuytruleph2U5MoNBZOUc6Ls3n91cnP9xQEWs4BzNABVHViXNk9DeaLAJ08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=la+yPqW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="la+yPqW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67A5C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777694853;
	bh=D3tSOnXxd8hxL+zEDXiE2Oww+7a4DBGXWClm/t7Jx5A=;
	h=To:Subject:From:Date:From;
	b=la+yPqW/FegzWPsZjjp46jSan806AhjQ1Zjy6SO5TNH69zN1/GpCxF6lmzxGSO1sM
	 I0q58cH6oN5u6LC7LnmRtJFh5sXD9KMVYaVUvkhv/BbIe+VT3G2uwvMWRvQyYtMar1
	 tBV4T08OHKEpJd5rHPaKzt219rhZ9hcb3mOLkQ8oZxCzQkMKzX3Xsym1Bd8FBrcm76
	 LpzrRYd93EWhwBAI9z0wDv83LmaLeB9wrOGf+txJjSziFoVvpsGXFQzI9RnaQg9oii
	 jyIUFttFB81w/AN4zShugAr0e4gBisMGhMqLeytXf4mZRNWq6ugJ6lxSqP45J6rI/8
	 oiNbAB7texv7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E33CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769485369.18155.5976745474962499142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd256c5f10a600095d6aa8a068db048a78c0546da0e1bc37086096048f0ef2c
Date: Sat, 02 May 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777694853
