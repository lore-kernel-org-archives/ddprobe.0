Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D80C245024
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744151394; cv=none; b=DMo+PiSVL3B8BTcTinVw4hjKROMTZ8iyw9asTM3VWw5ls32NgZZJKyxkwMfICU0qUuaoiPhYpfFYU6nMVDIG3LCmj6yrzA96ERZkuY85EFZJQlwOHNLzhk+6TLism572vlATQTZnmx0BPNThqOGLbtvGZJCjUIPy0qKI/mhvzMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744151394; c=relaxed/simple;
	bh=UGHX2nBZ1nODh4YR8OIuWekTx+gQlG8Nk8C7ZgId3dQ=;
	h=To:Subject:From:Message-Id:Date; b=Xm9evIQ4cQgDVlBV5WBCjhz2rghxs3BtM2ObLi9mzp+xTwP08vHeh/f7+Jv5IeUJBxxAz7KNYoc/yE4kI+e4MBfPmjWeJ7sQnqkrM5QG3ocgqKQotH83lpAv8vaJlCqI0JapP3qNa1qF65Ho92Sf1YKB6KlMgp8sncc/23EzcZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbFru7Dy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbFru7Dy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99BEC4CEEC
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744151393;
	bh=UGHX2nBZ1nODh4YR8OIuWekTx+gQlG8Nk8C7ZgId3dQ=;
	h=To:Subject:From:Date:From;
	b=sbFru7DyeTNtNSiHOUr5BX+WTVFumbDIktOjCQkBqEZzcS3FIk7q2ld+w4xZrSuPy
	 Iq2I3Tgu/I28pqyTJRv/Cxmb4p1b7qfs9/K8sAEFGHbm6aOHIG/jrZcAnuIToRa6zw
	 rrjMp9bUWEopr0ER38lyQGC6mZvrBMC1/1pjC97vqrs8bzkS3pgXGZrm//+XqJ9ybn
	 g1s0JQ8vunScgRkY2KLZ8mvJt5C5XmOSKpPNeLFhskI0FEKCKpCTUCe3QCFSGd31vd
	 U4e7f1VgSoavG7eaLerpdtxRgl1MVmWdriNwtuztIwl376VCVbY3Uh26yAadCTlMTz
	 I1GP05wNPbMxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BF6C369A5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415139365.18330.6341421881099206750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8486916cd57358220d6ac768f329861c795b7abc2aefd5716a0d07feca43d2d0
Date: Tue, 08 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744151393
