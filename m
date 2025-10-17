Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222783FCC
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760677794; cv=none; b=HOEsz1SIBoJ+wCHwDy/ORd2tUZvd7Qhc0Ebi4QfEHMg0BuOU+aOztLHZpPj7hZL7gHZ8bY29XQ7ysTJQYBPNbvSqrjd55jxukeK+0gNnt/2n1CrcgPEnpGz/YCWqqMx49Ml92c+JLqQwkG6c3a3Sen1tz2Eerh+Ogs3KBoDZnAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760677794; c=relaxed/simple;
	bh=gNROsKOPQSBLRm7ubEXZXE3Kq0DjqbUfyUKS44UMPy0=;
	h=To:Subject:From:Message-Id:Date; b=tupA1CwGwXDzrRRFsFFfUkrLCdI5BteW+H4lKmAmVlsK22exKp1GJBl7APRSRgKXd5IXsEWAFl1yit9dYSjzElBujeLTmY4DqFnzeRG65BF3fR1nJ7giJPRLJEcix16c3zmkLEaojPLsmXdH16mjppA7uAKr69EzpLmLiXg4+Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiaedlyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiaedlyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B2DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760677793;
	bh=gNROsKOPQSBLRm7ubEXZXE3Kq0DjqbUfyUKS44UMPy0=;
	h=To:Subject:From:Date:From;
	b=kiaedlyvvGrKmr1NAB7MxSnOz6N3qJrCBAX7mP1X1+ofO4lToOFvO7yx5ER7hJp1c
	 TJ5kQlwj9v8uXjXlTgcShOm9UBwf5i3RQmslNm4UvFWVkciYRSdMpM1UXRNOoJXGO/
	 otDXfYdJwdErPDWChgQZVy+YuPDwhbmGU/y2VwmEeR0rBQq5cZ5MO/9r/G1uH3VBRu
	 SYu4aCHnJYqi7g2lRTK8DhLb8Rj3hf1BD6sihGOyDWAxF5sONrH7igj0qu1ZqmRSbt
	 oJiJ/xXArsmdXulXnSucJUXA5pfEWkP+pNMsr5XFhP4HaTUe/8Z7eajOjqNMh8NUVs
	 lUKtEAM6n4FaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F742CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067779358.28103.15720219791498374645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7fb0eb0ef2dd2f5a7a0b110616aebe207d0606e8a73d95beb7bcc89e46fc6e
Date: Fri, 17 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760677793
