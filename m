Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385D2F9D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714510343; cv=none; b=dGUbRADZK6akP4qUGijImQXtG4Ucu39YzczZ0sPMBcTbjZlX24q7xAl6fj6Loc7SQgut1gEyH5FiTEn6+z/Rtg0BjRmzvHcf2O/DpWyYd+BK+wO6xwaqZCKfULPsx7X2XAJdH5NHF4GKwY7wvFC86WAW77hr/rmh7rm3qVoqZB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714510343; c=relaxed/simple;
	bh=/T8BiOi9mUl/oaGrt9fPDtMI3b+UNUiws5gGFcmRQ0Q=;
	h=To:Subject:From:Message-Id:Date; b=EsyO6lO5L6qFtB8KU59RlSeTWo7QjS8Y/pptvChzb8b6rB/qqynqx5umTeI8NHGTsTUY/du3ycJ0kVvKY66VgVvWda9xUgzRvvpkE1Yu2FIpqO5q9W2uv/iKnpd6lbwQ3B7ciEjgvCljhDk8K3hT3k6V12Srrb2V1lNgMAkjbEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWyTz1qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWyTz1qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDCDC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714510342;
	bh=/T8BiOi9mUl/oaGrt9fPDtMI3b+UNUiws5gGFcmRQ0Q=;
	h=To:Subject:From:Date:From;
	b=ZWyTz1qd1UV1h3A1uyzoCuPmcA4625wbNBborXvXfHtbFdqnaTwPXsIHZU/HmVQqR
	 EPjgEqmwAB7luyEJt1T2cNrIZ7R0OrzhT8cEy08sxEBPGlkIKAD2k2X4Y7wcHZ8b36
	 lj6BxXrfB45gA5ZMIPdYGMzpKT4JtGO5U8ZDYZ7VKbQC9rqoNgSqAIqV7wsk8sXqxq
	 rQySP9pEsM8V3quuKInBubztvb7EGWvTg7mGpZO80jxCL5oQdvwjTcCzufTDdsDzvl
	 EReQ4kVaFt9/aP9bT855J2tRQP7akDvrveeKN6I1By/vtobEoSUWT9WyBUpcGn4ECJ
	 7ewjAmIt2tdvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD16C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171451034276.12405.2137661843248874264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ee94d21b11fde6f8d309d7eccf939af61c51a2cbedfe66257b85e1abdfdf8a
Date: Tue, 30 Apr 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714510342
