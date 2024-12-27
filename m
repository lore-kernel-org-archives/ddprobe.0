Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A35AD21
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735280754; cv=none; b=bBPfO5qmK+6kPPI1hDzCx3SL15Y1BGdAR62w0yS4B59ZjRFhn5z+JdETbMm0aJNmpMjB8XJVaCEx91ODVm0DTlMBGrP8FnJ8qF3WY9LrevvR6dqo9tB16eYURhFvk3H0UrCMi0aS/SG/sQUpL8vfL2/wanw3PoZppdsiB76BXcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735280754; c=relaxed/simple;
	bh=gIPD0p4XLPajSloZQFhpNSjeAY2PdRRZI5NccwsEadM=;
	h=To:Subject:From:Message-Id:Date; b=WsUHvHb78cdn1i+qyLuBBUo+srlFkiUKs6wSlDTgarCOy520Zb7TNLE16JbBhhlP6WzDP4sUGrvS+YXNAhVfrO9VorQtAVFme+0T285eZG2jLKUe9gWUvJc7shtuQENJyVAqtzAh3fDxcDpWXAnLc4UKSq/UPHwS/Gf4GW2A/Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kheEOttR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kheEOttR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9FAC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735280753;
	bh=gIPD0p4XLPajSloZQFhpNSjeAY2PdRRZI5NccwsEadM=;
	h=To:Subject:From:Date:From;
	b=kheEOttRgyCDioWB/chCu40O5Bc7ZNUNwvnJoyHgK6a9Yo2zDyNMYGOCyVhqa3LnI
	 A4CcW4lcvoRevuGh/44c7In08Kge5MTCi1cVc/UUVxGycqjJQkocYcjiDJSBsPSZgn
	 uhzdrygOfIZJHqUvSYYDCRFXeFQkxMdUPLRqXMaJLKcPDXIcUyNbhntvRRtNUJvrQ9
	 c9VqG8nOdySRDzTZaUXmoJy34i8yjHENk2CHp0uC7zRSoqGNgytoFDZ8B7VKau8ias
	 ra/2kA6NaVkPsVOQUdXkD4xikCtVSbgxtl42rOPBdFGX1u45ml8BjfQ1fL7hlhuyN+
	 rteaGOeQsKCog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DCDE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173528075361.11813.5999422386072194513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18fe089111333892c52d39b646f1e800d7b8f62cda0364c2287326b18eca03cf
Date: Fri, 27 Dec 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735280753
