Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7788C139CFF
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717488923; cv=none; b=H1Ewxug4Sl3UNHGSyPz+o+aXiEaZWOmdtWIGYerDxb4XQ+594Z/NGiyw2s6hEpmLU8erE4mCrzvyaJghOZOOexTIPp3STdjTT0frZNsiKFsFhtZ3SzYjtdHzp7drxEORtBGkFniRG7Uvik3qiU7kAl59eSFbfscZak5L7SW9x3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717488923; c=relaxed/simple;
	bh=ifUowIH4cHPh8/xuhmV4G2HqeiVXfHLWRM7Rdlax5dU=;
	h=To:Subject:From:Message-Id:Date; b=txBPa+/WVhBMTjEw34MTOmMk43/03BTWlsOA7wvnKfMufTDa8P0RH+KEfpB3yU2pQExsoCOx7im1kIfgwkr8pmKwJzRlerarXiCOTgzzeJeXogbEBpuikYvPdC9gsCME8wPUVLl+1pACAEQem3HRmxA4XtKs7y+GtnqljASTMIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJJQ2SMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJJQ2SMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB615C32782
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717488922;
	bh=ifUowIH4cHPh8/xuhmV4G2HqeiVXfHLWRM7Rdlax5dU=;
	h=To:Subject:From:Date:From;
	b=QJJQ2SMpI/PkSaEb0+zRg2pn+El2rc03c9jdKCv81TjI+M/ymSPZMwrxG2mweZqSk
	 G4p1KUWbpqzhbIKpaTtm+NkuHatu3MuT5l6EKEPEwRyb/mNGpsZtBbNWj+w50AEqNK
	 TjXkntYCjgQsyLNJP/q/yHnVmoetf3jDuK+KaNXQx69FzS8A0L0vm5x1eEyXajR3NN
	 mQHiKXjzwtEkiu/gmmWJ60dMmMlb+nVaMVfBIkTRFh8Qi/LVuvxtKVgCAWMmFXTlw4
	 f80QclVQ2YaPiwZv/xoLiVgc/aWbLpoVjV32jlN4/0fGOU0zPqiGcKgj0y9pJ2+o7W
	 jFvTjqcMpgczA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4C4C27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171748892281.13188.14967431126183093717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86beaeab86383ad807d0fd5183a0baddce74211923ee95b9d06026e68e975951
Date: Tue, 04 Jun 2024 08:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717488922
