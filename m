Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCCA23B63F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769438033; cv=none; b=VinJEMYCoFMSgLEGS6HRKWsOr9yOyb27hgltcwsj673EqmkPC7bbMmFQOlN6XZcl2DFI6INO67897br/EDiqdjLlDWvZvhMODxHUyFVb+Rb75hAslCbbe7VN6Vp+XT43lC4JLh1O1q2R9ertyPSL8VZROo4hUqZHZ1GcfV6Z+uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769438033; c=relaxed/simple;
	bh=aPjY9PmwT9l6ECVMt8/mHItN1rwoHT/fkKmNR10me1s=;
	h=To:Subject:From:Message-Id:Date; b=S15I6hfjKntAWjdgosC4o0jdur0BVhWVQy50YRoFm4dl9OcRGKGUvpzP7PeuMuFUmOZtxsO0Ld7a7CgasJR7fT25IorcUKtxs5lbGX5pjVHaYPA0vcGkaIA5ncMf+SkRlN+zPmINaYvnRHpDjFCTb5q6xoLMNMKRMpKEaOrEaw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qf+LDS8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qf+LDS8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE57C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769438033;
	bh=aPjY9PmwT9l6ECVMt8/mHItN1rwoHT/fkKmNR10me1s=;
	h=To:Subject:From:Date:From;
	b=qf+LDS8u4UMSm1ueTf7m22U+fFjx/3KN8vNP4dr+tCAh0qfzwMwsbgFgrDuTliWIP
	 Ao3gcGuXWBxA1u3nFRjpiybwSnwvDoVy1gBsQqmEqzvgJ2wmFx+SQybDqlTN3qXKd+
	 +CPFENCHtxZELyS4j1ORqFFkUQSut6q8Q1SZ1H+RAlurUMQdIIguIO+BTxWSzgy9eK
	 ThAeLa6TG2tBxVUSf5uefivOBy63oTm+Pa0GJx7U9Fe9hTwph4CJBtPU7EaYP22TWX
	 Zmb5OjmNNB4UGFYMVVX3U82HfMlQ+H0PqaeGH35xx9vSBk7nqtoErXrehBJE2Lf8hL
	 zcXgxHkSVG2lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAF6D13C20
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943803357.32180.15863170204624720538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c76b5629876fe11058b9cccf417be2d8c689084f3b5b06c25248882a93cddc
Date: Mon, 26 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769438033
