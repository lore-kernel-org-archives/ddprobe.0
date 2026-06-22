Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3E21624C0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782091594; cv=none; b=okMOPYbGik6U88SyLqxIM/LODz2Yop4+j1XPffG06Q28My4lw0w21QHWoI4XFAMSLWUSBU3zo/R3QHSTpAmGS4yM573dF6pxxXGqc7hKR6ZlmCcBUR1FlN/+UGM6iTdLs+zoUuS527nYb+ONeWo5VhoWEdS1cnAVdX0itsgbhGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782091594; c=relaxed/simple;
	bh=Arerdn+Y9fqt7ysyBrMscYgBRNTeiWyjD/tjY1kYdM8=;
	h=To:Subject:From:Message-Id:Date; b=j4GrL1CS/d/7lVO9/NdywaXX8LVitj0HiE+27idbenk3EeX5N70XYFJabaxSgVlCv5dBThPQ2ire1ZixlmVBhhPnSkhnXj42Sgbh8EKkc6NeCiLQnX/DeJhwbYBr8axyKSbFxfjzIIn21RN/8RcnZEskRhxYfhOlOg2dPIZSWSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnytZ/7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnytZ/7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3AAC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782091593;
	bh=Arerdn+Y9fqt7ysyBrMscYgBRNTeiWyjD/tjY1kYdM8=;
	h=To:Subject:From:Date:From;
	b=jnytZ/7zUWwxF3xoPeOpSv+dmUGllEa/quaD33m5NbRrJdDYWlm6fFsk8zXHGWTOj
	 qKz+VM8DlajcrlIvxDEG/xrfMA3I9GkFZfPeZkm0hlnZETtGaetBWb5GQPOx5UltoJ
	 IcLWxBfKUg78KZUrCcLSNv4fmOjoCx4GII0yJW8VkxIh+ZRmCmtO4AEYhhzIKn37S9
	 RIip88Q1NYDcaA2CAXgkqGAhoegvFx8rXdcJFtIasILo3daOxx5TBGwTxjBf4dr8/T
	 O2IJWN/BvzveS1w9yzNukzDfWbsvj6Usjv8IIRk3AAnRoMNTv6jILEE8u6uHRodVi3
	 rY3hVv6eItSYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08FACDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209159369.7430.12475801134980043389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8c13d942c720cac2968e8ed9791ebbe9f9d1b885124894a1c116a94046a699
Date: Mon, 22 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782091593
