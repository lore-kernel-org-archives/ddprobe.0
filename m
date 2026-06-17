Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A92E380FC0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781727394; cv=none; b=MWz+gvOv7ByS1+peHkvaE8IbinSlnZvT00cffdZhpFsfSa8gGupVI9w+6I1fgjWlzn+AGJHSKMSgCUERzn4+lf6hXHSQm3CyfM9havTNubUkKTjbQzEl4wHqmiT6xsVqpnvLUW4oUTp9rVTgU+PEC7xk3ApVW6F/8a9A8S8ZkaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781727394; c=relaxed/simple;
	bh=Gv6cm6fbh8r9TuHB8MMpcilkw5OR/UaX/JHhJG8fZzc=;
	h=To:Subject:From:Message-Id:Date; b=IadLw9P7JOTUOuQiz2JCIws7jAREwqgrjdldhhsYV92cyDN50tUXES850J9HbaE1TNsDoFiHU4YK9IzsYYJQQfW7SYJtwW+wZlWwa8zQFk3dB0GBDSoFT45q2fMZLj3vsyXCCGMqcS4Ai9WL57UQRJLVyHndijXZoN0D9rnunDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5eYNR9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5eYNR9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1E0C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781727393;
	bh=Gv6cm6fbh8r9TuHB8MMpcilkw5OR/UaX/JHhJG8fZzc=;
	h=To:Subject:From:Date:From;
	b=q5eYNR9V0s+pjEZhRV5ciIf359ASUfU+VjRrLNxzDT1Viyd3/OY/0lfXbo5k3+gZ3
	 Xs1y0xVxZ34AzxF/X5yn9Ff6BCJ6ByzoOVLqnXGZKjdzKSEz3UvThfG/x9urWLzZwF
	 44dd8vOQVi8l2qJElP/dWMRuewBzSMRGLdlC9Xb2NicxEfeXsBbODrXfgt6ZklTjlr
	 yoR7Cb1JEV631DAMmsWoavhaheBwaClaZu5kGt8JFmeKu6jEd+yz18phASk8CT9vKJ
	 9ZcCyEJkt6ya58CGs5ncPC7Ctup8kaxlTgUssM/OMj32LkTFb/OlqPf5WEhTqqO6X8
	 YmJYIMW4A2zhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD638CD98F0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172739370.9249.7368575624141017520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30598e393abf94ca551c43b6af35f0f816618885e33ff157504444aa3d5fcf9a
Date: Wed, 17 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781727393
