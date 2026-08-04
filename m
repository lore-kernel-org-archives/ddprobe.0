Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89221D9A5F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785853836; cv=none; b=FTXoMNnhvtFcIBaI2UfQl5ef6eVEqZXU9EnhWG+2A54PJrPA9DqAZ2RbNnWuxVEnUMKk7xJW/AZRVhUWp5qQS2CRs5vsUkCyfIyGnXCl7jCuZo7qg85zGj9y/1bzDpCijUgYGshBtp5cTUnqd8s3MxlqyNxvmuBqswSPNuki8jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785853836; c=relaxed/simple;
	bh=Dt+BKgeJ5eXegbcRps8nnIS3IAcBFfQQoJ8RziU9EEk=;
	h=To:Subject:From:Message-Id:Date; b=BfvXW7s6pDqnUnP6RB3LtzroifbeMQmGbo3Y55ZhVPcaR8BK05vFaOf06Ug5kvgHReBVFCGK1iOE/vmRwjK/q4RlbdDGFqmGJVg8mwwGrbAMJljXgvfTdL/ciJJNU5K0PeoaAYQqj/QZCl8Gnp8cD5XSRBjxYW5oVFs0TwDN9mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WD0TZoZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WD0TZoZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEFD5C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785853833;
	bh=Dt+BKgeJ5eXegbcRps8nnIS3IAcBFfQQoJ8RziU9EEk=;
	h=To:Subject:From:Date:From;
	b=WD0TZoZTqj0zi0U5qnfWCX5yKKdHtcTM1SS9TD45icGnWA+T/mUssgGU9/3jalZXR
	 KRnW6JY/prD5xmxqi3wheYvocKKXc52U7t0YtEUEcAaOnWb2RmA80k20dHS199wjw4
	 tMpoBuWS/OevugsyH5hSzdG9TmDDnFR5cGpZ1RB0N2LgCtX3zzDJE3oRN99YE91Xhh
	 D+6JSu34cDsIOjdkjBKn8+ZUZmwSdt75Cw46zaRTPBneYtPzH+dnXKGXcIcTUJURkK
	 GgNgGia+PfrR2z9SBCwX6gyg3cL2urzsN8RWdiJT5RhWH4IE6edj2YCqdjTLbBeI68
	 8g+SW+kRrFSuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F34C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585383372.19216.16786919305999690506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2d622c5e5192232180fcc2ea2675c561fdee5d0cf250764833dacaf69239af
Date: Tue, 04 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785853833
