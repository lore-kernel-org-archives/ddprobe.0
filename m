Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A4E1DFD9A
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758896394; cv=none; b=qSsoBzqn0PrO6oU8GNYCME6rUtAiO/4lPax04GROwubXCofc8ml9qUQ6i9iFhdQ5sEBce0nkovH4M3SiIVmm9Ujrh98sbZJ6IxYIHPDfYokmbRx24erB5xgTFrFy+/bE0ciExtbZRC2oJtloIHRyF7GodICgn4/ohDrPb8g2byc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758896394; c=relaxed/simple;
	bh=aTu0xnaosnVPY7I3Hy+T3PqZ9Mkehhu/88Tmjp6eykE=;
	h=To:Subject:From:Message-Id:Date; b=nYacSz1YYU9SwASU+RJ26FPuiiVJju88hThsgQTKlBklTduCBjwTlQK4VWYmiZQIb+3KXsu0eT4jGMfdKd7YDvzUPvqZz5d2K6iWlRGjuDuBOQrzByh1LvqmWDQYkah0/H/1RmPK8Vo0Rbg9OPWGsjH2Wjt+MChUBlmzmWjSpC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8B7kyrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8B7kyrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C635CC116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758896393;
	bh=aTu0xnaosnVPY7I3Hy+T3PqZ9Mkehhu/88Tmjp6eykE=;
	h=To:Subject:From:Date:From;
	b=K8B7kyrsDyi/p7NngZ9pWovemdf2prcwBgXSdqycGDTBi4OWaonmaPj2ny1F5g2xn
	 I+080tjd2Bw2XkRl5a0C3Mu1Luwh7jmedD6adjFPJqBN/pJVAtPYSes4hNbktTuZJd
	 q7lyXYgwN3fjchxNOKcvDzovzmk7rHdnu0W5rnSIW505UMJSmF33JjmxZykLv76lmL
	 41LelQOvp6ywUJO1EtcEeyqCIZOxtLeyHlL1CHvAboKuRTB1kdNjJW3ZjVoHHxbnOL
	 E82qAqEFcDUm/przfmGz1DQoDn19a4GVh3owo+fyXKbZwJ8DDWpo3hT9x/E0davyWB
	 Pvez/FuNgiQcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE10CAC5BC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889639362.8637.12476471234795308222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9173ad8e6df10623adf31356e0bd952058158392b2a07ef538849b7adfd8ab9
Date: Fri, 26 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758896393
