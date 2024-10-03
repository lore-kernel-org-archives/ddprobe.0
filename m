Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2326E149E1A
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727951154; cv=none; b=ZAH0omsRUidbUgLed0+I4OeVVdkoVIEqc9JPS7FfAqv8yT+cO7Qdi29ta6EblKyBA6MVaBYru8prlWl/dnjUzO4uG0mhi4f8clZG0hb9WQnbTOAtO1oLzxntScdY10gqz4J/RQ3EzX9VObiszYYOcuQNJLuZeyesNqQiEbSr7dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727951154; c=relaxed/simple;
	bh=pf8LvNpTyfrb7lJ42qnMXX6FKsAM8nl81+/KynnuidI=;
	h=To:Subject:From:Message-Id:Date; b=tKRPPYB6m8fK1zb9zM/53YWZtqEAeS6/Z6WCISB35yIwHp8LQHk4AccunarDlLbUcchuU0+QZa0Ks+KVJ4lapS7MXgfVJ4O4cel5eAKo6MSEH4m25kR763S/T/6KQuO1FwQX5F7oYwRPIcMDIxFMR/5rCnn7ik0LqvapWOsaAXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OV5HOQQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OV5HOQQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46C8C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727951153;
	bh=pf8LvNpTyfrb7lJ42qnMXX6FKsAM8nl81+/KynnuidI=;
	h=To:Subject:From:Date:From;
	b=OV5HOQQC5uRpRmSvMa7adYQyjQeXMjkTELLJsTF/74gU0fbajm04wM5b/1ItUo+6w
	 wlVWQQm3sgVEmmAEBEGm6+ACP9AZyP8nJ93YwAxmtPMNYwzAE7TUGamfcG4brHV4Xb
	 MzakGx2zTL0BV14OAEOcszpTAlgHlXRswgFUFeMiA8JA0dKU01L6jLVve7omisNpgN
	 oC3zYpWU5VQsGa+xfk1ZHaUWO8fryAxsyYaDiq+f/B3K2mzeJngjbICiawmBnAIJSp
	 5gz72K03cxkjPk2fdmHFVxmUE7PArmgsf021FeP5tFL1aupEItPPfiFXgsAP1u1FI6
	 LAYnFkRL7NRlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99351CF8573
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172795115361.29613.15136480777600355530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946521ec5307c9f95c7f4abbdca0181cac06c3d3bc221be69e187190c1b50a23
Date: Thu, 03 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727951153
