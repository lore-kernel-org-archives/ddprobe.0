Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE0B2BB15
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743939594; cv=none; b=bBf268hfEpdENuM9gzbw88Smi/3pMAtjajJqeiGPCzA/4jSuLJ2p34KPn2h53WYrfTORn3K4WJHTvhZMFShhdvBFwrNjlCgaEa2LTZ5R+JOxARsX+5Qr2qdOo07iKGqZ9keYOv+CJVIuwGLg5oyfh3n+MgB0StkZO2oyw0V493M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743939594; c=relaxed/simple;
	bh=S6sKudAlKjSuj2f/Ae1Ysz3k0mnDcqlu4RrBQAGN7iQ=;
	h=To:Subject:From:Message-Id:Date; b=dfh4i8wwgI1ythNGdGRiEGuiMvo5zTcdytvrqLHj8UE/3XPrD3KsgS6+at4A6YOJ3db73dr4FzEZdzLEZpo17QwWVU8yuqmaQHR1SRsq5zoFXAHclknp3gqh797VFL04Im+QJDJmOxqoq55oayn6ozJFYK+QvCD1v/rsTSoQ0XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddVuSO4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddVuSO4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2787C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743939593;
	bh=S6sKudAlKjSuj2f/Ae1Ysz3k0mnDcqlu4RrBQAGN7iQ=;
	h=To:Subject:From:Date:From;
	b=ddVuSO4ZepAhTR1tjYII9emD6HCyQFoR1nCEwzQnJfS0iR6EC8KVl9OmU0dLfvSgW
	 qg1SXV7U7fRBN1/i/bk8u3pzM5Fx38HwQsZzVEvSsM3Vzp5fgp/ml2gWEd6moyDGYC
	 Rek6VLpMhmKMWFQ0Y4hPG9DWNPmy2w52yg0jRMJadEorWO68xr9IMdwK4ZqESAxj8I
	 R2FrUb6hOuavjwTSipmUFqK5Kx88beXVYp3zdP1F5Q+Bs9mhlWoapnFjDTFJ+RRJ/V
	 T0JfvM+UqXEabF25sqepFMMKjmYj06VQyVDMGtbRNT50GqHQVlLEH2kezYnC7e/+eA
	 xNU2ez+RR+rwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E2CC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174393959362.4987.9469338272771436448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6dd63cc9f2a70ff65726cc22fd6c98a13505864de0801a8ad4ccd4aea7eb06
Date: Sun, 06 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743939593
