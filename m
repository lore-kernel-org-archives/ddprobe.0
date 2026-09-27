Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3F73BED46
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790542234; cv=none; b=QFUYSUfXZqlgqXu3YX8BSCWGOMvxiRdAH6VWwhAsTIerp4FvMGL7L0VxO9ZnHe9FZD74IHK0WwUqiepd+UuxpS+gGsxSRQ3sk0rylRqN9RX+SCDcre6Eiu+Y42riX+aq2IBuvT3mPLNoqNKLeNIM8wSlA3/7Imnxm39lfmRF3OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790542234; c=relaxed/simple;
	bh=Qw89UXys8QLc0Tq+xyf4A7wDrtPoWprQ53RSjgyzxUE=;
	h=To:Subject:From:Message-Id:Date; b=F9IerHC1NrXLa3q+9vzTJ7TtvGPtm6rQCu0++u1wRWKNO2AKmsusOOEBI6HLzHn9Yy/nxW95zEDyZNKxRYAXsN+OCw4VupbQob4o0zd/g/YcfgqaCZi/mtlZpjTl/8Yj2ch92pMg0SARjVcj21n0RAoF+YiwbF7dpUYxCfmygiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XszoZBEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XszoZBEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD417C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790542233;
	bh=Qw89UXys8QLc0Tq+xyf4A7wDrtPoWprQ53RSjgyzxUE=;
	h=To:Subject:From:Date:From;
	b=XszoZBEzvWHF9qBTokACOHlMk3zbNTMyZep0PXQLqvB8ea8WyvdL2E3fPYI//ud6h
	 gHyNS8bj2ErO+mbRBIb5e2nPq5k7JtQAioTQ7kTynHqDQmuR7t7cHFWkKjyGYNNiwf
	 PBEa/oiFyZa7cgmjeff/vUjoVOdUvHNIrbkbLfZJ10BGLoerNp1ECExcbbT9ctffeO
	 bkPZS672EXsIluDhry1QuFQeP1ZlNUpMDI/q8tT2mIslAMXpsQnuJJWES/Gt6edzmB
	 u+1JCmgsziFPVumBSmUHyWF8ZgvSLKpQjCnz3GJ5o8hMSaDYrm51E0NRQ5VYbGgr0/
	 n9tFYdB/fRMhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFB7C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054223369.20503.11270601767309647473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3119856960672451edf8637bd7aff7adc7a546cf0d684ec3eab7d06beefbe462
Date: Sun, 27 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790542233
