Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FED516D9DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718961743; cv=none; b=O1imJdz4AA61gEzg+YLoMHZwzwNcI43IqpNJInYqOIts+56QER9HgEkwGEqoNE4ogwufVnV9ta86dqtAqHmnyHN7eYb/YQ2G6MRJb8V+MhhvjeeXs4nQEihQIga08NTeDfurU4Lvowaj3vdlXxOvhyxJUpXnmVkp6yfRP4QQJg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718961743; c=relaxed/simple;
	bh=iVTiesa6EiibXO8zmysmfm/F0Ny6ViogA6VaEC05Cks=;
	h=To:Subject:From:Message-Id:Date; b=QbtCIFzUp2l1ACjFlULl16cqQIClAzc9qLrEcLsyIe8v8GFbKX+VUMwmJWUcYI5ah2YY6JkcfbckFu8tl+jkY8hG1exzEVaVYIYMW/s5ahvCsu1kNKjlCfXHDniDKjxhDKlCn25DdQwBJRkKpkEmurq5rnDq0HDZdwE1wc1uMPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJ/NHOhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJ/NHOhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA129C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718961742;
	bh=iVTiesa6EiibXO8zmysmfm/F0Ny6ViogA6VaEC05Cks=;
	h=To:Subject:From:Date:From;
	b=IJ/NHOhRWUnKqJTmMhQcZZh2dMcr8xUGHDRs0oWIzkZ+nz5RUEGWxXocZCvsu3a/u
	 V9tr6sFj0IeHOF6EEz5i+74BrKlZNf22R82BLLx4Q/TJFx4lrr7ty1pZDVX8EZ0sti
	 1cGaN6RANEZtrWhygz6h7igsphXHti/OTkzlmAxHI9hErkpmcFc+tRMKvITlCTj74s
	 kmk38OztZ6FhHyVmKaDBGUT1/xCIXh6peoXwvss/yMIiYl99OdOS0S6InP3aI113Ia
	 DPrdcH7y3b2EZLTdjDSdHAnJnwtcYS9RWC8KI8rAXIPwzgDvByUfD+l3T3yGxiP6dy
	 2bwZ67LvC51zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA0CC2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896174275.23291.10851478339394918162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7381d9d1b89ecae284d0cc5aa24efe5dd85ad785ce4909216b84d4382cccdcd
Date: Fri, 21 Jun 2024 09:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718961742
