Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0540341050
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776509853; cv=none; b=B7M6SmgXhc7O/W6OEBe91wmbHLhDMQ/Xy1ujDgWlXS71aRL6crOBK0ZHJ93YIAMVRLRWKyfAunolewNZ9SDgC+dwVuLsS2sEMlQffRz8mPOl4WUVQjypnD42UiOwmT8y636jE+sHl2N/WIZ8mGTbSF7AVyr4g4ze2rQS43Ir2+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776509853; c=relaxed/simple;
	bh=JfQn06BsGS38cQDW6ccsjNHZvFZ2U+9frLU75xvR/k4=;
	h=To:Subject:From:Message-Id:Date; b=GG+sgySy1+uuXDxGoq0NjHikKXdXxCivBMF8BmBMQ6vFVRpiaHMZqon+BkE4+FDK/UiGwNOXSr+Hzz5maItDSRr+RB4Ou+ZGAzcTsoyW2Ii5SCTaV6Xipq1IANWITabHHLNzmK/zW5dV7sZPKrrkYj72eh/RZsdt146mkZOMhLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+f7/3e/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+f7/3e/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7641C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776509853;
	bh=JfQn06BsGS38cQDW6ccsjNHZvFZ2U+9frLU75xvR/k4=;
	h=To:Subject:From:Date:From;
	b=k+f7/3e/w37ONNyXD6pERRZTxaBsQ4cKqsb8pensjhVqIbHEgoq9J+0u3oHsfEp+v
	 QTXyMvVZT8TOuXlT5NEFouozh82T1ZTDkYUOz9K7DsyAvej8YzczozLqiK0BHPfRiI
	 6FOzkNgOnuLtB07r9nTh2ZMlxDSepPuwFznUqrmlwyXf3J49Hs4KJTkwqnU3V1n98k
	 yH+P+v3fazlqhLG8OkXL4nzGOWrS4hHjmQ8yAmi0771z31sHGkF2Kku43e+8ZVJpTF
	 5//j6kW9zVKW1Pp1o3wMoL+wg718yaQURV9biYFoeQ8DHGxYkFREdAJzo9wKajBZzS
	 uh0S6C8rdQjhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA712F99C7C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650985368.28973.7405152172765996877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d42593efd8a88de592b4bd8ef1c48159e5d24e122f72ca69e57c2158c9e25a
Date: Sat, 18 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776509853
