Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384CF223DFB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745383194; cv=none; b=mp1CiguWSGcFeFO20proRoZz86NcMhmKrhzDMcxmDlb2woWDrp6FzSJ8j/vM7dFWQ/BjcysUkGUvLx6eMCajjmyYI/TnS1B3nzABhB2FD1Nl5eHCT04viyq7bwt1scfQQrCcWUd0QywiazoWipuYzdhlci5Mj+jQXM8VqovKRDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745383194; c=relaxed/simple;
	bh=vucJ+Mi4hueVCTpRag2i5RxYvh3x6Up/c9X9sc21JRY=;
	h=To:Subject:From:Message-Id:Date; b=fvD7eOqtG53W280g2BVu24eUs8WKAM6JHLC29zFh6uxpkmU8xOqoyei98uOna9rKDTqYVqB36n6HObLT2480+LoCo0AgXthudjxMERtMg4TWDhCMDClZiQYrfGioO6pWcEqTkIc9atDnK/ilA8htVpCUd4K2MXUigvRkpeYDu8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGC1xsyh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGC1xsyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBD3C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745383193;
	bh=vucJ+Mi4hueVCTpRag2i5RxYvh3x6Up/c9X9sc21JRY=;
	h=To:Subject:From:Date:From;
	b=tGC1xsyhAx9Af+mnoOkByfJZk/Yx/e2F605o6arknpi6ZdmB4YxAWJ2x6DGT41OTR
	 dfkPGwZMybSploQ7LfxloWSzySMS0SEWXfNEIn2HSnZezhyKEfU3Fxlmoy6fZROeZZ
	 Fvkd7nt33IGCzm1OgWlx6gpYAaKFDWHrdI7ugp60qdZFYRzVPFhpRKn5rKBoZydGn1
	 G0ZDe3FLJSmQ56/k3TPOxg+Jy5NUsrg/jOC6tHTnn2PtKBC549GzWHG/bcgtwiHRH3
	 CEDV7WasFO6d3S8fddXsxCMmtOj8sgCodJnKpVqTun6I031KHvdcFFqOPutWgG5zcR
	 nmmJJfeqPYNHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3ADC369D5
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538319357.26437.8516517768437654941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cdc928c91385eb07eaf8370a76598b46f66325b5c2cffeb4f03252b7510ed7b
Date: Wed, 23 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745383193
