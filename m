Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6CB4F5E0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782033394; cv=none; b=h2kUEPO/7FT+yqXNuDIfyAkD2v52mY34DZ/fR5kgicUyJMPiiQcXgzur/A2QI+Cfdq/PKYtywyi3Mp/ERwNCDHXiXCSpxR4kBIAc35CrtVe0/W/0gMmWZfvM3O4xWHfY+T7Xu8EhiJSPi1s354JQvPsh3JBIe7W1PMww9V7hNWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782033394; c=relaxed/simple;
	bh=/YQ4MckZKNjGxzP05NbGtlqlKG+kfmIT/ASNLvQB0ho=;
	h=To:Subject:From:Message-Id:Date; b=MNRgx5tW9Jc5pAxfCgNdFLMgTGGHcvrWUDZ2pes9uZlYXUkOo+PRw51mU8iLTHIxZtBu0G3XPQSI+luchXTeHgVo4WiDA+pWbSvbkT7PyODGtQgwYblkw60tW2qM3go5llGI7P4msqPd8tPAe7OeJDGYgfVkfKYefyYJY/+c9u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHPpmMZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHPpmMZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AE2C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782033393;
	bh=/YQ4MckZKNjGxzP05NbGtlqlKG+kfmIT/ASNLvQB0ho=;
	h=To:Subject:From:Date:From;
	b=vHPpmMZ1aoV8zPrjYZy8psfkzbKWZ/kEGqm8ykAUJOKnhhrL0biZu+FLpx9x4JDM5
	 vmhmSaKCKLl4ZUxZA+nymT8MJUmmMlCR1qaId3FtpVdQjGHlcjP+Syyy8uFbE2R5J8
	 mMJJ9C1y5SFM98Ai1p32VKXSI4IVqITnYxFt4CUEhpH6Y/dlE7tryXNNY6ORPbunbr
	 iojzXqT5b2OGB0PnstNE6DLipdPMsIXU84bG2GIzuihkJGKmd16V0uUcPQIaxuf9E9
	 de5pEZOdu+gpleiTuOWvaoNCn+ir/WtcUBJMJ5zYWOJWNW2VmZcrMumlb5nFayb56g
	 rLm4+Rpq5csfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B04CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203339369.22229.12584471931101400940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d3cff388ead1c2206402cd332c8668f54fccc0d677edb8a44d1fcc9df75712
Date: Sun, 21 Jun 2026 09:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782033393
