Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198EA2D978A
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761418194; cv=none; b=OfiTX2tGnTk+pWRWsPn0h004S/V3VYAg/A6pCVcla6l4Myga6B1Avr33bxcbrx1NfxCgmO5XPNdafJ6LhNuK9dK7Sdx4PS3Mo9XyLrlYzVKn8xCu9GI6dRrIrUEHaeQWQBQyI10Xq+wrORE4MPZ0YJh8fB5SeYsUKL1DJUk4GzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761418194; c=relaxed/simple;
	bh=LzeYktqGzaqo/qzociu9qINiscld0GakU0etWJyYSpo=;
	h=To:Subject:From:Message-Id:Date; b=rhGRi3AKy3RUZdJzMvxbGmlNq4GiNjVza2QYCRIWrt0qDAotKbqHVZAOesgbjFs361mXpAuYekaEV6EPbv/fkelf4x4aIYqnRf250GBdI0fG/YIrQP3FUlkFP7xQ0ttwEiLdMdMyeHYcJAv+/G2GlWf4fGiYsINwwJ4+kgelhtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTcRS2dF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTcRS2dF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7612C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761418193;
	bh=LzeYktqGzaqo/qzociu9qINiscld0GakU0etWJyYSpo=;
	h=To:Subject:From:Date:From;
	b=kTcRS2dFvOY23nVp20tgCtqC9MRDQyFRbyuYEfYmLn1p6tGWjLXabKvQRj0k9A7rz
	 IdtNL3yBX4fghw4Hfc8kS89hYHNsu4qG2WsbbNkJNbT+gXX044tq0Pni0xB4905r2x
	 +GFaJ1m6mLiz8iz9/qDLmuhRBe9ViB6/AAh3Kjgs8QWBRsSLBZhP/KPpZ+bHIxpRXv
	 AvPq+p9JvTXSy41a3qJOOFU+Tpu07s73BxYf2jDUohW1ZOkHJepCO0nv7SiEawY0DY
	 4AhYY9VSQuLvMLG125J3kneshYuaL/VEKF8+9e89cgNBCzKqy7vea4wUo7CxO23aiB
	 bbTuEdq+uEbsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B2CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141819359.30990.17756539766657823165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b38f669665abe6baf637025f2266c7a0092a14504812557572c8a4b905b0e9
Date: Sat, 25 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761418193
