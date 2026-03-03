Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16943285C8B
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772513694; cv=none; b=IIKCLyBjw2nifQWcJjDD5dXZnX2eRa3zLnP8/4G9O4NZjXBTkupYSghJTfqtPnIVJCl9EfeN438yZmxvP2zEFxqSA0Am9S1MK+dP5X3fCXVGlpoYJMTgSiLkTO0pFGbyLtRycWFErRXr64o1Ts7W4qnwBu8ALO6e4INpUS2irB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772513694; c=relaxed/simple;
	bh=+n/TQ+vPEn8J/4JSFhTPiDwAAAPlYbe0YkgEQTL7azE=;
	h=To:Subject:From:Message-Id:Date; b=nLvMB8U9oUvf6Q3WKXtKFVBoQIw8ClSxGAgPMJP6kjUT70CerK7v8JdhtfDZlONARKbKwS4gxHP5S9DlG4E0JQA7TjApLIIh5ivBzHonbvnSZENUHrPFkHPSBO7iLK/POujZb3dS4RY+vkKRw3GoOLUqkDNVqkVA8sL84mg5aiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tU7zKQPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tU7zKQPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCB5C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772513693;
	bh=+n/TQ+vPEn8J/4JSFhTPiDwAAAPlYbe0YkgEQTL7azE=;
	h=To:Subject:From:Date:From;
	b=tU7zKQPIH2DY6TmjbRkOt1EPCx+c2nvC82qjt4kgxTqFivL1/3KhXu096BiJbI0ef
	 oqPHqg8A0l5hBL4T9mGbq22zr29xQCHYNYG0Ult0PFwjM30ew7/8lErnpOWemmdp7J
	 Fnh/WO1jssHk7okTWx7KuUUss/iuwjZ/O8BvyZH49TAB3Bt8tklkh7jo0WHOEb4y6K
	 k57mP8JA8adCyIwbkhwXlECrN9nfs1bPs4xaeVygVbpxrPj9C0QD4UNJZx8T4nMVvT
	 LRHnBfhx+VMrZ3JsPwfUQ+8K8COd4twbO+1nq+lWrco9pIikI39ZLgIt3HaYhdbbaE
	 K8BWKObSvfwWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97577E67A67
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251369359.1917.5813926455009864814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87bb57317e70b4acc7117945b04e1c93d70412b2af6a0ff6b947bf2f8d4170f9
Date: Tue, 03 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772513693
