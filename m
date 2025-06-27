Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD04218E96
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751009994; cv=none; b=MziTd/v9KBNZlXpKs9nv6FjxreWfkogO+gfLslBBfthtbZ4lmCqlCJowSLSmR/aQObaY3t4tS7w3CwMq0xZ/rIlIgO754RWQ4BK8E+rNDm1qVX9mzmnSdFwlWalLYQk0JQZbM1cjh88ui0rZ0SeiP6nq6p4lRNaeZ4aWZV8rYM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751009994; c=relaxed/simple;
	bh=Ff8waWXmtaQIoy0fIcNGBnZWSfhLcwrUZ8iPjEt2Gdk=;
	h=To:Subject:From:Message-Id:Date; b=an+kIrqkYwTLC+UjkInhwc3cEgAVmX8v0Y9OUAQlZc8MlnG0SB8Pq7d9Eh1BJi4n0C+wGf+OxBQ2JcCSpzMDaIuXgo/A9v7JOb80/L1kpWbmjlbwZ2Y8AuwZ7htWC1+Z+SM19EgSStpeINS0m8XbgWmHFfOhwP2pygjnjXuDNyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loNHbe5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loNHbe5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABED9C4CEF2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751009993;
	bh=Ff8waWXmtaQIoy0fIcNGBnZWSfhLcwrUZ8iPjEt2Gdk=;
	h=To:Subject:From:Date:From;
	b=loNHbe5aHDOadB3yMg5CBbg8eI6BVCOBqrVDmteddKhBxMatXcKvYdDJVsoyDHyK0
	 EO1mUoj6xKWEEMrVTRaSy0BsleTt6ilujNiHpnUVNCI/N+X1XVMwfmUZ7e1ZUzmSMI
	 ROiWBze0nmzpknmjz+hcmPHHQ1nuSco9rds3iNNxSgsfY9rJ+N3G3XEFJUjrO1W+Q/
	 mPtMa/PqxCiuJ/kdSBsiBosu3PlzkVzZMPlTRdf1huI4KLdEG+U63vc0TGFVEjsUaD
	 YHr9bIC3gUmr29+Wo5tG8ap/2eYuesdkI+3uPUGR7vowBx5y7rb49Ly5/shdu4dip3
	 ltOfEW9Z7lIaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97855C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100999361.16638.12642264248716735599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c825a4c863b753e4bd887426b3adde362811bed1f37b83d757a6f1d6738c2b
Date: Fri, 27 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751009993
