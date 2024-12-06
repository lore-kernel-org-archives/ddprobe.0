Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EB26FBF
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733456754; cv=none; b=u2GBTp+d9lwzAoRD7EulYE0hZk3HKiiSh5+EpfNs01fP4sDBL8JEsqNKvwf74sOqQIqrSRmFwF/lhRbEXg/RIBE1GfaR6ymunt6F8nK7GyBCfAaEbbxVFz1eE9KdsESd28jUFBvz1SYlP39SqWKxF9C+7mptAE4pulbIUrN/CF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733456754; c=relaxed/simple;
	bh=i9qA9A4+KwvOWQuQiQJIgH+oyhNLklb9LyyyoPRdhJ8=;
	h=To:Subject:From:Message-Id:Date; b=IgtboQ2dO4rfWzEcTWIzFAbUGTvXO8M9aRnSi6bsf/nk99mQIwNONkEFN2aQB1w8MMsfqZPDrGxHCuzRij9UG8wmVBRX7Weqm1k4ek4Esx1MaZrvNEbh3tZzg1qArMPMCs8tGNFHvChKxMEtSnEqMs7OFeeg7Zz+dSEHTgYcyrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQCExplB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQCExplB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58C2C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733456753;
	bh=i9qA9A4+KwvOWQuQiQJIgH+oyhNLklb9LyyyoPRdhJ8=;
	h=To:Subject:From:Date:From;
	b=gQCExplBfUqHUpzv+VDu49zpJyLFwNikJdiv9YvZ4NC60KEAZ9uc2Mr+EHU0tylmt
	 V/MDUYf5MxizOBwq9mULhr2XOEGThah2HI9sssAX2jAIf2i3G5KxgVeis0gO9JLoHl
	 IffsJnG4ae4BSfEyISqcxD3J6AxfScyz5Nqkl0zN2dsg/Eap2xgYM/kL53WKYBXVnw
	 m8XWfYY2uEOkmK06xbmJCjxBXnujuJvpFpcRIOaBHzJyy8JGWSTmRUsBXFTHjFUSju
	 xPV3J5IHr6ipIIi3vEGNFtyYwI+5fQvv0UsTYa/w9TvMK8Sxf5/LbGbu4Giieceuwx
	 ivKyi9K4yLAag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E7CE7716F
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173345675359.4683.16294449942025640764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0989b5bb99b4ab776877d85ffdaac37c7c34ddd21152d914a51a0af4e92b29d
Date: Fri, 06 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733456753
