Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4341D1624C6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766700834; cv=none; b=NC/6m1oOV+bxsy1tjQbWQPtmZk2mNVs9udDvVZAdy+QqeTG4IllPk4q1Eoc/dimtO71lLSDEGD3DTeiUJdhPO+Fysqgi+saQYftmSpo2OmBOhZq9Ddbt6zdjX8uQcMciyH/PvUaXtKQoLJoZyYka25Bf/CFakf+V1cMRHf7o3qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766700834; c=relaxed/simple;
	bh=9eDDR/VrZArjqwHuKPMVUQ5QTFIlogVExyGq8ZLSgDs=;
	h=To:Subject:From:Message-Id:Date; b=B+utkvjduVaHT4phhTx9ydjJH793pTcgEXLNeByhL6ADhpewJct3YBK1bI8V3JDfRwXrgT4UhI8IQldRjxC7bEyeprkKr+rC6wOIctBX2miBCceVYrZYS4EB9pa0OiwoU5Y3879yX9psGHBKMk+8upkUR5N3KMCkOaUxR8IWIw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cG+NXkfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cG+NXkfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACFFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766700833;
	bh=9eDDR/VrZArjqwHuKPMVUQ5QTFIlogVExyGq8ZLSgDs=;
	h=To:Subject:From:Date:From;
	b=cG+NXkfV3BuNxwdQF3I/PmgFX5XT63VMnSU5aOTfhnOcGfs+ez8n8it8tRgX0qhGc
	 cMDj6E1rEccwUydUR6pXrBvqSBWZWRrYzN/hA8Wu8mptwKW0/AYuwVvwfwLpqXWf/A
	 x+38N6eTUarQkGJQ6Op8BTySCslhYETFBSUuve0fLTDUlzN3qwdgJBcehwGSRkp003
	 0+XZuD9Y3JAoYiLvSHaf0HUABK5MOKybvalwYIH55uftOn8E+me70RL8VgQAZg96pK
	 uTJmU9iRh+yOyhbxH2ptmzxl3zeQ9+LXIK85/Jc7gCfdh0wmfNYXmWL93j39K3Xl/k
	 eNeT/JTqsCNyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E0AE7AD70
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670083358.32145.513759794453797402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc17a342dabe1a2b125d7c13fc6cc93759d79047f89af9542f8e49e0e79d932
Date: Thu, 25 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766700833
