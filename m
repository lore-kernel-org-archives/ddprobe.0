Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4897B320A0F
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761752994; cv=none; b=QOdM2ZgEdWLgJBCPWcHvgrfnnuDE4RJH/AbbvYeUxCVE6SXik6zFE57X9Ea4qqAOfGkZV/auQSQ0Q+aviAOJ07OPFIkZ43b+bmw0obS9n7Xb5dSS8uEOP5LV8Vzt1gM5fBEO/vVv0qbOtoeQ45/EsjwxASShSJXVGc8dhZ6x5ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761752994; c=relaxed/simple;
	bh=Et+ACxVvL9ytSyNopzLYG1MULRaTmms4NVSEdLlzV5c=;
	h=To:Subject:From:Message-Id:Date; b=DpOLuaMpsWK96URghWJCPgZDtKLlQa7WBmwlQ0iqsvFbsYU0c5P9pcqPZ42yWWnfzNtRPsqvQS/VtXaDtFqgV+BCeaGhmTwPZRQZm11BMVV4LfyKYyrXa4TeT+Y4PXxG4LVTLy0bA/N+uByTFXP5NF84OTGVmYj4dafY7uugHHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2F0QbeV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2F0QbeV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AE0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761752993;
	bh=Et+ACxVvL9ytSyNopzLYG1MULRaTmms4NVSEdLlzV5c=;
	h=To:Subject:From:Date:From;
	b=L2F0QbeVSgC6x4WoM8exweXxxVOlq5BYUgcVryu4V3kFoVIMBdLerstxENT63kE+0
	 h44AZCfsQOtuP+3Sn4V/SVaqq/gF7l/v2uxH9jxSOyInhaHYW1Ggvm0/zHRJrfFFf7
	 3UlurqDaJfL3e5NuUrvjA8qvxlZ6GEW0gGHFbLHCiginsTV/bES8dssmUbJLqQ9nxE
	 YKwSu1cMeuK+ooGWJpt2GyNSnqP6bRzuGnuMDq74cImqN/aRIOGtPSHMLYXYys9Ook
	 mbXuw/r0sUIBIYNwFfUEcJ5ACPju0ndst7QC1QwKPmOzXI/C3v/o8eOQ2QZ8gKxTTL
	 JGxVMVY32ufuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954A5CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175299357.12421.16160381025788865923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0efec38acacca44dac77491ff8994f55e7bddb9ec7430813c1de55f36e8f27
Date: Wed, 29 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761752993
