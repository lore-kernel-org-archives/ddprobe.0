Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9382E719C
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779492754; cv=none; b=b2Idn9yzHcjVqwZe3f2K/A5s+DpR+0SBE+fSKZ+Vun77IIfwHcDd6Rro3SecBvyqF+QPZ+YgBsuQKL7toKaAB2zRlkKhebCvKPVaLc8V36QXyPhlufZ6lJif4A0hg9pD6AGD3iXDF+SP324HOKYIPVVrkWvG2kwJ4Np6gb8B8qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779492754; c=relaxed/simple;
	bh=D81scl49WITQIc3K9ViQUGniwbMlXlLWeEmFINIHoEg=;
	h=To:Subject:From:Message-Id:Date; b=hhNsj8EfZsGVO7DMzjWlQv3ZPXRGx9DXS7rCQhFqIZk6GItZ3hGA+TwKk8mOZDeEUrtNeaq3cxgx3yzyHeH+CMxV10XEBPcf8/w60jbNYzdl1UqW/t5/9BIhFXiyHTGDfqEI0h7DQAEhYIWtX12pqCOt16VsC1Iu8I81miqEYmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=leSkBjFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="leSkBjFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8666C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779492753;
	bh=D81scl49WITQIc3K9ViQUGniwbMlXlLWeEmFINIHoEg=;
	h=To:Subject:From:Date:From;
	b=leSkBjFb8PA4Fn3ZUvW9QV1Xj+unrYNXJNpGY5EJIeex+0k/Pch23WkqQeIEevzXg
	 1RzRh0X66He9Ekck8I5CyFxLxTRPbW9zurmrAjaUSxrLA4cDuxaJURguvTLy6V28+A
	 CZbDwAI18hTBQVwgnyDFQruVfDtuapm+sujz7O5vyWuuI5xJeT2pZvtvNML4Xxel65
	 3Mhl29ePRx4Po7u6zAR/uI8EYYWx16pz7MFffB8xpKXDQzhfP4Ltk6RtCJnsiP5ddy
	 GrqrkV6kDdtfNOR96BqZ8ZOvovSEMVNyZjkwcxevAyZ5xNpwJhnWe/JefPSSEx9dNZ
	 7CniF/mqNfWvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD56DCD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949275370.31950.13444543184889792032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8674f255cdec1eb6c4e0f964f0bfeb06e317b3b7ea4e0e51f697e2be419246a6
Date: Fri, 22 May 2026 23:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779492753
