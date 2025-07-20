Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202FA1DE3C0
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753006794; cv=none; b=Ie8+r3cUSOnrAY90BYzKp1E3o2Xexj/8IXdU6zul5v6LBjrUSqvQnQWD/3mVtIpYfD2/L0rLOVzMQmITiUvcSglJsGq75BwOtwtUqarb/zpBy+mhrvSO3wqyjNlX+en4pizZt1tDFdaSIOAf5syH4Ptcp/1kEBEIcZh3UxaurR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753006794; c=relaxed/simple;
	bh=4ulaZX8iYpI/sVAfLWcZm0BosEJFNjxphvJr+S3sSx4=;
	h=To:Subject:From:Message-Id:Date; b=ri57L0komKnDuvDd01sM8T2/XTYMUKUt5SRcOMK2xaQBf0a5critOtqCOJZJbWwY5pO/uSl/BsIkvb0hIbHWbBicHF61QXZI+fE+66yCy5CPTh+0gJC7YYDq3qNzpcTBc8tcF2LeMAwu2QaW1Afs0K/LCiHCVAVyYmt9R04yoV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WS+rxKWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WS+rxKWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A782CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753006793;
	bh=4ulaZX8iYpI/sVAfLWcZm0BosEJFNjxphvJr+S3sSx4=;
	h=To:Subject:From:Date:From;
	b=WS+rxKWQ70K8Cx2IFw3RIccszD1bbn/aecKH1kqnF9UzUvcZCJt344jOAQurI3jwk
	 KuCKnN8VDB0qOAiHbzA0tJAXmcCLVlX/26WEQlZziay7IS9+ERnIKotTM/prDi5GqO
	 qjBS1H1H9ESZkLIUMuhxxmMF/KJDBGsI8Xp9gwlc0Rf4oKSfUp4td36RYPvhpaDJ0m
	 OwK0Fq7EOnRePEJ38xwnatjmjM+y20yol3FCt4pMgwRYKStwBgex/g2ahquBclVcFD
	 EGk5JOegneKBup8/o2CMcxX7RWn1o89law+5p99xXts8wRF9MolQ0Eme7IfDDvDNd3
	 irGc8Yw52/juw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E8DC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300679357.22369.12445539988799774806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f6ea376a79b450529f3bd88bdf2ce12720a609976032703aa408e562f39e41
Date: Sun, 20 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753006793
