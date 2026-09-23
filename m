Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A96E45DF58
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790150434; cv=none; b=lCPDki844lsL3QH+/StgqUGXPcuyL0e72Yoiz8qfhn10zi2gKNZONS3jmk9M8XDhU2lcQ0kQjjVDjiWf1afCKbY/ZIoTKpxIqSuXyJHfQ4cA5xRUDm4qc6TuxsooOtj8ilf+GTUvxHJ5hTzCkY3AIdLTYH7FxXitXosyBS0quwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790150434; c=relaxed/simple;
	bh=dG63GkF4OlOdw/d4gZgY/sR4CVaA42vaTm8wJNrcGFA=;
	h=To:Subject:From:Message-Id:Date; b=T1Mq0Op9taGJyEQwOUqjvjxFT2RZ7kX20mFOF03JNQbDpAAEzYVfVAWIB1oqdavZ9hNjCK4DksvyeoMDJOu+FAvEaUXGnTO+J3Oo000FsKVxZ9iK4VLlrMtGxFFfgHo6qfzSgCbOabJWFEN4eraMONu9CV+YITs2X9nsTWOpq/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2XNv7cT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2XNv7cT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F80C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790150433;
	bh=dG63GkF4OlOdw/d4gZgY/sR4CVaA42vaTm8wJNrcGFA=;
	h=To:Subject:From:Date:From;
	b=R2XNv7cTSoQhZXp12lEebEIW3pGzogpd3anHobKDYfQdkngGfcD29MunTLqSJH1lw
	 jKbirnWxQH3J/uuI59WNbSQD4FIgrT7ZcjURuUoE9Cyk91j3TZJojTV+fodPFX0J3l
	 N4zPVYProgIg+8JbJUayRWfCYsCmT0j0Jys4w4Pfz0UQMwCdRDObdqr3/1lhCQGi6a
	 Gx2j4+2FKBSdE2a+2YMaTY0ERXSKIWngd3ocvJ5jTxcQiwyFTOQ7q4Q0WYCEsku3Ib
	 OYnJTjYFrIy3mjwSzsgPDaBMJ4c+343V+XGEHTXK9WY1Rx7+E9O8EHdHLV70ctkF9+
	 4xvjg/oOU5XFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC786C982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015043375.4204.7579942304967136999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825e5190f89f3f159275d1774bd790e62a61f52ed72cb48eb3e2b75b700780da
Date: Wed, 23 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790150433
