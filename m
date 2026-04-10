Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2913B1A6816
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775788054; cv=none; b=ZnJu0jDsrTEA+ZbCItdl5YSJo5fH3/DytKKVZt0Z260zchBNkrcZUUvmoK40kKmP18uD0hmMX4SNFUw2S31FN6lhcVr9UhsH69OBnf7lOOw+F22WP70XJA9TUyhOf0cnEVmvdcGGyfAtCvmXRgyeI6Vib1lH4z6HfFL90ZKBQA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775788054; c=relaxed/simple;
	bh=N9KImFvAETrmnPUheb5Hr4rpm6UuFHel7PCDIBPrJMk=;
	h=To:Subject:From:Message-Id:Date; b=u5Y1hrsIeqhJKSGm4iUkzc908iZEqX7zDFOCQnIMaJaTaXVP9oQEOICXHJoUr2L6EIMSSq4RKOey4loaqhf9BzDGZw/UTjt7FwfktsknxN5/uiDynAQMT00dZBdfA/f61odv5giZHYnrCu/EnkJVgXD0+PiRjz7rT2ZmZS8aX2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFX7XILK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFX7XILK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC187C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775788053;
	bh=N9KImFvAETrmnPUheb5Hr4rpm6UuFHel7PCDIBPrJMk=;
	h=To:Subject:From:Date:From;
	b=MFX7XILKniHjTF6RAE8cXic9riw4J/Niu006ChzZxByhEGQc4qEwLuee1MLBnStZS
	 CcSUR0/eeBrAoZfNAWUHuBAkaxDWBu7l0Vcc/0qLRX9Al5h/dnKIQ3cW90VjeQQMOl
	 jh0wypn1GErf0f/uPqwc8kzaBeqIYDu5Ajn4+wifquMNmU+uvtJZZF3PrH0Xk/4VQe
	 NelVPEzq56kEW3FzSD9DDN5adkcIOIsS5SjmQpFbCDjGrJTbrBnKze9fT6TR2sWbV/
	 bmK0C0ZmQtsCbV/jbcPXA6S/vSk/McI6LmZbZVfYf54IS16PqbNhCJgrTTqXZC4a7O
	 klxrMb+qmMMTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A6EF36B97
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578805368.23161.5744611439540984171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96bc65dd25f002328b9f337dc956680aca716492fb4771035d1fda76d561f61f
Date: Fri, 10 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775788053
