Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B07A37B03B
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331494; cv=none; b=B2J/+g6QFhB4FHvmX/HofIgIFTkF7s6XCkqwcD00twCDQJFX6RzXGDcl/CWubZ2neHLYdqlfUuE3AlkHeZzJGcCWlp71FGgm1BlughJp3d9uiJghsQEvBYf1r5z6f/QwQFVY4ng3mV4btH6FVO2FOMscvBMUT5TaAhAynSyd21c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331494; c=relaxed/simple;
	bh=OEWqHRNyALzUWOFGluVdtGK3o05rRXST8U/IbPlzo8A=;
	h=To:Subject:From:Message-Id:Date; b=E9qoLamUbE9rViey0+p9MP9ie7mK+Q3rGKNnQXohmKCWJIjQCdESKxcmCZNiNd2mkb2YKlknz8s3LJDCM9LCS7MftZVUA8LYui3d5W8+bUCTC1I8vr45AhUR0SZE2lYfE+Y6/pXAgHy4amJca1apSayaaMVSj8Es91gYAAqusQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiWI6ayG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiWI6ayG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EE8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773331493;
	bh=OEWqHRNyALzUWOFGluVdtGK3o05rRXST8U/IbPlzo8A=;
	h=To:Subject:From:Date:From;
	b=kiWI6ayGt0oG5/HbOnZxeIm88+iK6nGskiL8eudk6K0rLLxoLbYa9py09pRqYCgnc
	 Kv+w2uqWdyj5Qtzwn0eYXqGaAcrx2A0LtNiMDFTeSPu9WcPaKWFbu3KVUQJIUApEUn
	 9AZnKonf3Yqpp88GcTJtJxxCUdRZUbLsj1tvkY3FUNNNW/xIfxrrtDODf6oYC9nRvy
	 dup2Pi5K7cxK4S2EXdpPTTME1TMT+dRYAYaKcS93iqnNGeTAyPPOSJjh/C3peZjCd6
	 yFmslf7HKFczjonp4b2z7yO1j7DwURM8Jeju4q+4yv51WcwqZFG8ABHk2B521Vi/07
	 3uzVjWhaiiZtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9794211258BE
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333149361.24276.7383702575328826966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d0ed104b3bb923a594d9fe75a0209cad83eaa1ee34bf012b1b51e56034112a
Date: Thu, 12 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773331493
