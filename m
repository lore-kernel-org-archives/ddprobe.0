Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85EAE1DE3D6
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754945394; cv=none; b=LPacBEkhS6IvwxPWZhCJA1j3Hd4TA/k2FFT4nSp3X683FfKXF9SY6FJopniVVmhJNofP3clKRjwEhy+jQUX9SJfpho69D+dqhNn8NTpkCOmKQ0ko+PnGvaWdJ5TObJeYVUhpYMHcbhzYJSUVEcN7H6pq75iRBFxsa3jr9N1HtRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754945394; c=relaxed/simple;
	bh=TSreZf9gvRsoG8+Ju9NNHkjvoVWOL/M7+ZuHxyI+Bh4=;
	h=To:Subject:From:Message-Id:Date; b=URFqt2E5eqlaOYNTO2Q3gWuFUyQjcU+T4TV4y+NA0U7Bh13S/JEXxPgQiBR5gyYXGFBiesHnNPUHYtqWyOTfpel7ue/GbcyM468CHMqHKUcPHnBB9palIajkSxc6GqJPLxaa/IrCJO5HSIoqb+yxSGuvIX4nxjMtD3NDrV5G7sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMY+91O6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMY+91O6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B2BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754945393;
	bh=TSreZf9gvRsoG8+Ju9NNHkjvoVWOL/M7+ZuHxyI+Bh4=;
	h=To:Subject:From:Date:From;
	b=hMY+91O6rArfpNjOLWslOhysOM6KGsdJIrF4ldTJG6at/dQAHSoQQ9UOpf7+QbIE9
	 a+VOxSXgtLY7vFwpST+FNVce7tWC8Hlva4NmPh+XpNSP/ZvwqbRIaJ9IDFwV5rp/z9
	 QYAFqO5ZxwA2YaToxz/LTbYhGxt2Nm+RfleRi0FLXgLT1PT5uUZHvmcglUnCHayoOJ
	 iDQtOjVQPv/DFFoSyw51Q7NPdm79AWyBW8isQbao+P8TwvH8r/lwAwyoHOqridSvQt
	 Av3kZCaHGdQNlKZJqYi7tWqYxNXzd982MHSGeBDrRQVoXDaHNhq3AhvOgXomWLcoG5
	 nFGAFIKj3vkSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7EFCA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494539357.11081.6564357432039073239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc3d7decdf5d47e6bbcca5578c4ad3d9d14668501296d5b73c770364f3f59d0
Date: Mon, 11 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754945393
