Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319E72D12F3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784008714; cv=none; b=txzWZz+4rjDkBISpk/k9NP76OKLQWbOaSitSBSu3GwbVxGMPjrkiGTbBNAJUe5PglvWGK//TIlGd7BUkUFNaVeN1stpUtgmS3UyfjWGAPEalPSnCoTuNvvYrDSiSibRPgIXLI2cA9mOpCT4xQVYHcjyqnuSCwuRD34trRwfVstU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784008714; c=relaxed/simple;
	bh=O31/t1gii3cs7cAtMIpgeI6rOvcq9kvIINFxfcjcqQ8=;
	h=To:Subject:From:Message-Id:Date; b=XrIrONgAbLH3pJYUF091rcvcYUIMQfUyEPVhGXHRScJfUgfmoBSQEANx5U9FpdPkhsvtnKaYrUt3Jkj+jEtg9Jc/w0oGJcgC441VKbPicrbwC/3Xh4cVNMe0zNf0bQ8nVEwywgzwYXfYO7TQXZeFHCmYvV5UAuucv3SsiMKwd1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StsBA4Cz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StsBA4Cz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1063C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784008713;
	bh=O31/t1gii3cs7cAtMIpgeI6rOvcq9kvIINFxfcjcqQ8=;
	h=To:Subject:From:Date:From;
	b=StsBA4CzuJYX2uIkfCx+Jup0RxMzRDb4zVLl5hlFLtpswE5g/oUst9BwdkohQUuci
	 QWtr4bhm5QYu9BonaGfsFWEPf4zDMa71UbyDI7au/jpO93Id8F65Y7v0n4P7V00WYw
	 HZbd+DFUt+ku+uxpVLv7oSLtp/lh9MJgUZZ9+cSD191YsbK8sMDenRnXajkEiGn7JV
	 AcOdYyIvOmGsq0vkusKc507Vz/Zx4XOJEf0Smqa6m0PQTV+hJkUCBIr5SDZ5gCpAdo
	 Rid54pUJwgbMJUTbJgcMUipjlozHc/I4zrxVw6zEveGTgeejkc4LuiHbXod67T6sA+
	 2nm0CPWKKPlxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF9AC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400871368.16234.11097716666287830192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d18b7bead8c5c45ba2a56a838bb97f59d332d44e7b6827397ee9f6b46ffb1e
Date: Tue, 14 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784008713
