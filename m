Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E11552E06D
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788556834; cv=none; b=lWuDA1GgaY0k06i5XPI8R2969hBT0BkJiJPS7mdEttze5r7zFvYHVdGwvRo8pmAIKYcCRr7hUlMLDXcgU5bkrQVie77osYHcXIOyu8j4aSevb5mGl3FkbNervu7JwkXGamY9kjlkmeJnhpD+8hazwRRpdPdDDf1HMQuLD3WuYeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788556834; c=relaxed/simple;
	bh=qfORX5nQjbOZxzCUpdnMozjebLD/ac/dRB7ZXC+Z46g=;
	h=To:Subject:From:Message-Id:Date; b=UNLo08gJUVlNueXUGq1JhZDufuCor3Nm16ZJVPLwjc3CtPIkWvxe8AGDYU3DV3RD5oh8N5wUzL3vJacPbGvwEVkqyMTk8o4she3O3f634eq+JAR9yobb0nKNglgZ+TL6OfG2HhkGTLhgnTUHQSsBALtla9seEzb0YbWkGEcPpk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSrATPKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSrATPKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D4DC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788556833;
	bh=qfORX5nQjbOZxzCUpdnMozjebLD/ac/dRB7ZXC+Z46g=;
	h=To:Subject:From:Date:From;
	b=eSrATPKJpdqAKMiEhfnlEYEdww4m2BI94131DnZcLfDeowX9i+AJSbzlA1lhxDVeb
	 0ogvEeHR/alueCYtudfYNa0auL4biPwU+TgQOq2AGlJa4H3IqGyOy719CgUJp/lyDs
	 Nqxa9xJLT+LbgJp/A7Deqer/AC1BL4JsfqOasJbMnBeALiuYsmrVPuN652kN2+m2RU
	 10SmRYHXToaB3N8E2ZO8vQdxxX3dfb4fLIirQKNUyprv5otuagiboKzHZQT6/3MGig
	 XyJXo/KGmLtPRLrh4gvLA2qyBwZsYlDV/2c25Gq1Wqo7kOooa/ZMEJuGcnqG3OGFVr
	 aae6UFbghJlhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D09C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855683374.6232.7714232426931076226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c302d530bf715e12e8c09e26d1e1833963289486768cae0f3203150f8e85b500
Date: Fri, 04 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788556833
