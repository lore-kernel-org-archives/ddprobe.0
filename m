Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F378D2D3733
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761583194; cv=none; b=Vo03XQGlMVhGjzy/+Dd8o9ukENqWTDefYCpukRm5DmFp1svx+0b9K9cDad/MZHpEiEi0ms0qJrWWMdx7yldu6zB6grIFnEr77G1r6V5KM7aOX3Z4vPMILmtGzLUhnZds0oyYhFAohkkQbPDwRMZS5nbQS+rU9br185WRK7ehLDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761583194; c=relaxed/simple;
	bh=TZ/YldH2i7Bm9VjW/Cy53BAcfIhxJxtNH6J45p267Bw=;
	h=To:Subject:From:Message-Id:Date; b=o0ubWt/jmkUOKmt1hmSxLyUmafvZsxR6WpQgyLaFT7CmMR2ou4vjRZMXy5YjvX6SZ9dktQJrxSOuqeSGAw4vB47LeVyKYEFEF6SpckNPAmY+iUJWn1ovV+ZxfncSXaFjSz2JMFPrGSHyBsHCj/i2GWTfgbqADwSz2xHD0FjYWFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/SVkgya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/SVkgya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E2EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761583193;
	bh=TZ/YldH2i7Bm9VjW/Cy53BAcfIhxJxtNH6J45p267Bw=;
	h=To:Subject:From:Date:From;
	b=s/SVkgya5HKbBMNINljH6NSKjkWw9rGn5NYuBYEsIDZwpNMhOaslBTVrFBS3Nzusq
	 6+/2eG6XFGBaDq2ltZPp6J//LdDb6duPC6TCA4xysOHm3Ao4B274XPl/UP1CByJp2N
	 cNQQDV4ZlhH+8VYGncWjpupBghdCT49geWb40XYN3tOd1KwUpvUpMasnI7KZolp+fu
	 z0q50QXC4mjAdIcbiwM/sdygWSX/7/RDTTc7rC4ZFw2d7RWevaiEVXaAdwRmNZDc36
	 IIQ6WTeEFliqbQUjw07PH9enUgBFjDO3ggoHfgJ1DPHZW5ZXKOcn6BCLSLqo9/vBxJ
	 M3LBwiELVrnDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91418CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158319358.22488.12875353764525991136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b964d166b955e0099cb826fa61b4e75fa91cb7e0ea97be921427aea0ade00842
Date: Mon, 27 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761583193
