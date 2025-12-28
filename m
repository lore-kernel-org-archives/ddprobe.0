Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E62729992B
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766915034; cv=none; b=KkOxcBdHgbzZAHKKYsRCam3GgYJC3v6PtlzwEl3JsfpYuD2Jfug7o+Pf7fbFFEEGqQnGClwNmUkwqmysU0jFoahkCwRATvVAQopnqo2Zn85c45i14+CB2zLBcQlQc/kl4IA6qLfP9kt9So2VXE3qtT22hW7QUmu+6NYnJcPgD7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766915034; c=relaxed/simple;
	bh=Jqb9NVfZDHTAm/zD0ZCPlfo4nDNJat7spZMZp9LG6zU=;
	h=To:Subject:From:Message-Id:Date; b=O/0oetzGFlQNbWWghA1EeKqutuv0BLcrvkDGARM/M9DB8n3vnNkkhBvaKLbpJREWFzdJJUSqJ/r58Bi8NRxS+OMTs3MDCK4EC0lbSzy3Imqc/bDmn9eJT6I1/Zri0zCZMaEwzLkPF0wWCaRNkOWmawcJ5qhfPWxJ9IU1EOC4ZQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qygbW/XT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qygbW/XT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0346C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766915033;
	bh=Jqb9NVfZDHTAm/zD0ZCPlfo4nDNJat7spZMZp9LG6zU=;
	h=To:Subject:From:Date:From;
	b=qygbW/XTrPX95kHXPcYlDb6A6P+VWesQGCE85G3TRmAboK0IK/gm/fG7hE7V9E+7B
	 fkxXcOaJ3/L86+KHGdnl5hgcpLnrjRh4gQ4SFdHmRcflN3Qcfr25zob2UKZ4i9e+Ot
	 x3WW9coxc2M8kIKR8DzGQIb0TSaUv/Pns0iDcajAKhr5htpFUim81GwqxYcnx1Qrvh
	 u/sa5Prf5HfSD/es5hNf04solvaUuaBzOoMtb7F5ZMiKCazmjQBQMRmB/WkwuBILBE
	 akcW6joKu/a/OPcOCCUtgmLbacxoYpi5e6HjFeUSxuRN3H7Y3clZmx4QW6mS3/kP6H
	 z6ci1pVDK+Jmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C331E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691503359.13442.6575061927398772823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83a6b0e846ec1063294489ec1325ade0205d1ee7574ea32cb2d9e15715ab448
Date: Sun, 28 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766915033
