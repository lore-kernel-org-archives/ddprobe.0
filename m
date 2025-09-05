Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A5A28000D
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757114994; cv=none; b=BGkLdy+v0/uDQUVr1Q2cGD0T/pPoh27U0+v80UkRt2j5tQJOAFWjzemvD1YmZk8a3n6KDJrxBiUZOX84bseuqhMi0jcP2Pj4VpxmuMg5UE8ETwezdxoKm8XVn4lXcgmZahmEWpDFs5VbWvW/iW/ytAb2rH1B7DsLz1yEF5dRGX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757114994; c=relaxed/simple;
	bh=Vz0t+JOC+g7EY9PcU2xGkBlabJE6f6guaaOr7okEO8Q=;
	h=To:Subject:From:Message-Id:Date; b=S+9gKcEPxVg96CqD7pvzvOk6D/XeeoPGGhTCXIFjLlT0oAUjOpANacdyfoV9wrWoeaksEog7oY5hluNbGnPDYjWzuFGH+P6Vwp6YxRTitPgz3k3NE4JCnl9qpL32N90pfkbZ6JVXN5SfwLdbfjH/AO0TpgWELPMpirgm+OX6tZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nT+aqsN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nT+aqsN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D76C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757114993;
	bh=Vz0t+JOC+g7EY9PcU2xGkBlabJE6f6guaaOr7okEO8Q=;
	h=To:Subject:From:Date:From;
	b=nT+aqsN/35dTGfxSfXADuBk8s0gV5ajoMYg+aOpEBQEwlHgfZecFxvElVDGPMxIpm
	 Ui5RvreGuc0DG2plF6jIap2Uv0MRM12jqiKVe7FgT3ZfJhFWdjKXqnBoiZXu2Zux1r
	 7dvpufjOmG3m1RhnoEv0j3n+cxoXzjougehNHp2+spqliGceiI6rl5uv7sJjQVisYr
	 V0P1QPNtifLJOJkVH58fIqAS0c78KXoxZaEBo4wDvuqesZSOw11QjObAw8NM+vGo2u
	 qs7tEkKpIjrj8qVjhXiITWgOA5QkkxAYb1s/7Jbitgo4l0cUBgFj4yIA//mhEW8vi+
	 IlL3tzC429DIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91968CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711499358.1168.12039909821131016985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec0bf5f76968136bf1c9d51397c2f09376131d100f47f523911df8781fae322
Date: Fri, 05 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757114993
