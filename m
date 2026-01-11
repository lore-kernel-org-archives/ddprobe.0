Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DAC34889A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768154634; cv=none; b=r1hYW51dYj9FHqNVuruo7gWTcR8F4QOEc8ETyqyameFhIdFO4oI2h5ZckER2rELrJ32cgYrVhul5OUgrAOubiCbQDPRXBdTOI0QdGr3zKgtT7lIfKXLbl3h1+nEl9+nGbSNw9G3Si8sV4ub1NVWpaz0zeOf1sv6HcZU1s1TFMX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768154634; c=relaxed/simple;
	bh=L3Dlq8ra/YhIxv07sSwrMnolYt+sxvjDTWWJgdP1k24=;
	h=To:Subject:From:Message-Id:Date; b=J7vgX4u0cP4RqJyJK4l1szjxY+nrStpcEAdmZnwAQJFhB4Z5VuGs0BPWJhEJ3fZJds5TDrD9JugrR4n0tSdmcsOz9zklex605HY/X0PGoGCbMAVW+Bgoj8EKG2LlRva9rtwObrLkdCZ1phu5uOm2VXswTY/s4JjmyrpqgeZjWKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/e86/iy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/e86/iy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BEFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768154633;
	bh=L3Dlq8ra/YhIxv07sSwrMnolYt+sxvjDTWWJgdP1k24=;
	h=To:Subject:From:Date:From;
	b=u/e86/iyE9eKLT10EI6CbsAkE6RBZhOAq0qlL8InWpKpfq8Kn2EcqGv+LVEkHFQMG
	 xama7uAtCM3UL+FwB4SJIjMXCSgH0MKn99S8Rvy/gNkLh48sy0IIyZUhepTEaQIpHY
	 aclieHSndnaPpwT8F07bMkUgDJFWukyavv2hJBlw5LMauu5L3yKolwi6Yrr1CXR8uN
	 XAdS1j3r88cJdvC281PdY0QiEa+//nVOxNwiSnMm4UfbC1CPjoipzUalcrG3n17k9Q
	 xh/oVAQiD1LZC1jUdsyQLnzR92eU2z3O2y0l2qOGTZt7VAQPSOQH4TygskBDrql2BK
	 ShDey5YBBZLqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C19D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815463358.4722.8197842005696266433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833e924b3dc4d74ec318c1f7d113eea7975ea4a5f4ee235c95595be66e1d5d3c
Date: Sun, 11 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768154633
