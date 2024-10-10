Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B611CC15C
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728575754; cv=none; b=GgA8Wd8SXb83BCy12AZmYSKI9dHN8F6JJNxOF32wF3r1MGA7BG5+6Np9tfWzp1RUcByKc1wBYuVXEyCX3zVNa7uCKN4xReMjo4UDs+YSSCmg5/xTTIiwmzkZY1yXjzd0dTzt4XdHpK1yuvM/fxRUW8xqFPf0CBTEFRp4APfvpC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728575754; c=relaxed/simple;
	bh=VbEnxNAVOP/WjBaqSnexfPt3M7DpalWqb8N2oEgKjHA=;
	h=To:Subject:From:Message-Id:Date; b=VdaZJLH6sfUmF6YHXbVjQ93QCNaw03ClRVmQYVqlhZgGtlIO+wU6Yfr72e5tkw+9FRLPdnrODG35bhF7DMIIRYyojnLZ3e6ppZx5j1IsHucXMYdyC6GQuZKVsQpUVz+ufXEixgzrlJxIPBNzhD+5uY60HQ598Uqu7ZfUR0ZddpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7VC8MVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7VC8MVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7C2C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728575753;
	bh=VbEnxNAVOP/WjBaqSnexfPt3M7DpalWqb8N2oEgKjHA=;
	h=To:Subject:From:Date:From;
	b=M7VC8MVVGjk1RZOdiJsXm75VIGI4KjvOQpuGjBPQwUpStBmAkFnaOgG5Xgnsi/6Mq
	 PyreCr1JwB0UcCzwxGvDEqslRGBFDK7ahNKaHtINGlNi5oHq7k9kuBl2NE9caFdbsO
	 EwwuSkZA5DywPVOFQSZtxwjGnmm7ClcvViftz9p0YgR9A7+7F1f1cYU8XmSUWLHHNF
	 2YP4NyFpClKa1mphBeWBgLf1+UITbgGnB2Dn+w1EVaqPJEeNDLj+9vKSOKDXhNq8R2
	 7WSNLKOdOwUjB6pasdV3QZzGQmFfgKlwhwJrLuWveB0B/d8rvaW/zCqN6U8gaByp8Z
	 CF7R8mFf/It+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97092CF11FF
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172857575360.22783.12502644887767464000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f85945b25d1a85faaf5ce9bcf73806a6c5a94b27d6793005f6ccc60337baa1d
Date: Thu, 10 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728575753
