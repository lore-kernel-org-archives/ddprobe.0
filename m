Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D4F64AA4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778290654; cv=none; b=AKrWeHwTvkAEBHk9+VrpRppjRERkokbQ5uzXwdXE62ioDHqcO4nS8vO2orIpxf8Xo0ZzkD0EC65rywazult5IY09zCTQ6jMLCuZCyTsmwNnZ5/e/Z2b+jKNGXU0KUm08LjhsZJZpSVTsfp+ld+JjPsGJOZO+eATnsc/wKDX0t4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778290654; c=relaxed/simple;
	bh=/opZHmxd8I7u4eNpiZkJE5YvIsnc95TQj41D6mS5/0o=;
	h=To:Subject:From:Message-Id:Date; b=S9WueyLR3csR+9wAHwEndnUUD4Y0sSkuATTaGU9OdlNn/Of8+NYNqgMdRqLE8dW6N/wRsSaiuwvxBQ9YwAbALsFXoMLabTEDRGqWuAFDI4nTV0owgrFeXDt44me4atSs57een5tNCvQLG1On9d+k1EiERHwGimki6RRY0uAxXdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geFcybnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geFcybnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A87C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778290653;
	bh=/opZHmxd8I7u4eNpiZkJE5YvIsnc95TQj41D6mS5/0o=;
	h=To:Subject:From:Date:From;
	b=geFcybnOBcDQJJ9itI3nh0lzJnEgLQsx8/zojO9Ze8IDInNQjw8mycShDb6x0OtQ9
	 URStj1SV9NYFYGmpjHGbpqytjXOgZ4U/zaDUOdiWOMxmThXc0k/QTOnU2ox/Y92czb
	 +T+xVm6+jyfxo0OpTH1Gzy5AufztIwkYEg0yG4giQunX8yG86ejG4PXmdshy53TCnA
	 HFRiF/4eFH8hsEEkkBuIk6mpdCFTBkpaq+FTTVI0vFyDtCdMUuo5pkHbhhDKKfhmHa
	 fu7qTj+YWgQF0EgtAAbaEuZONdwk6u7hZcZPUlT9WLsh7+4yTIEqPxTs+NjEBJs9O0
	 lJzKSsaWqyEeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD69ECD37AC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829065368.12453.8317409708850958628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c73c8391375579db1578a935138153a5a06d5f330edd864ce850837de61af4
Date: Sat, 09 May 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778290653
