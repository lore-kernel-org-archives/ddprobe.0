Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C58B366814
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780368876; cv=none; b=gdFr92VfyAvn1zZiJOZKadI1t6W4mrf+xLwGDgSgpK5+Xa3dJy3HUBcMgKfSXBivlxEkPPbToQ2cyHlcCJr29zVHaoQSJR1NC2oP87/jcLGx8YNn1sja4uB7S4zKWh90Y4ncg+jVQjcWYUtekOWYUIO/aVoJF0LLc6nuZkiWZHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780368876; c=relaxed/simple;
	bh=F9gN+9+tS6DEDxrTZM+5vPQhkdEJRR6i0DfwG6da/Es=;
	h=To:Subject:From:Message-Id:Date; b=GJJL+Gt3pXUBVMymZX6v69a0zgNfHfsO1KsScSLJtdIgtP1z3WpNr0BQ/p8uNqSC9O3ecMVPdEZX0U344T1hMv+OBjVhxgO0jWAajqM/DHFGu3t3fQmrd+fUzU3jYddkG/STGq855LYoT4YRcuTFtbvGQBrRK3cCoPEdEoRMWDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIp2rcC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIp2rcC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DEFC2BCC6
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780368873;
	bh=F9gN+9+tS6DEDxrTZM+5vPQhkdEJRR6i0DfwG6da/Es=;
	h=To:Subject:From:Date:From;
	b=pIp2rcC6s1Jn7ODUTT25t3O0NyGGIWOIC2GjGdYmfCz/MWixjgaTWwgBz9fiIVktQ
	 BkDFLeOxEw5GoX0TSMxKTn2myZCfwMAMCvLb2ESnPKzoni1dGxpGhVtioLLB71SWYd
	 HwVHkHyWE5sdTkh5Dbs9K8cJ6yq1I/hFEU5Nz4J96HQCrWzzAoOjObdsrQQFTQ7rhK
	 ItgWjgYh3M9s6UgBTXCxydFuekj28+wHywIlU0pRW7xU/myO9h/6U0FcN069ZWGKzh
	 kkEIkMd4IgU2llfr9fKrA8KyPzXQEIoOgdx/m2ZKJtIPKlBWcdeVIZHjiF14A6H2aV
	 DC5Kr0Pq3zZrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8412CD6E56
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036887368.14871.15685290375896992375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0805618826a50fab945e53d19b8e05473f8b9e59dd582e165f59e38add169073
Date: Tue, 02 Jun 2026 02:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780368873
