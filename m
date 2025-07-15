Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EB42737E1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752623394; cv=none; b=VCWriQRD6Sg1hJ1J+FSi72/JTdmkHqgeR9/DKyvuub7cJC2TbhmvNo8jsiEPglCJgK5lLyI9p+aFYvjjHc5TRXYnzlimz+crE6NW6LlCF/vLt4QnudyYNdnuIARwo4fNQspAZI056WvZi17OHBppbPaLPcYx2d/ZJ4Vk+QpUkVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752623394; c=relaxed/simple;
	bh=dFwsv3VORxPGYkDDIIKyTTHD5KuUNmus8J3QcYYBY10=;
	h=To:Subject:From:Message-Id:Date; b=r6A6YxufP2Dk1wDUBXlwHITvNNLavVXzhX701EbBjU3Cy0VrGvVRNKLfRNDN6j6qs8cjXoYY1Mv4O+dtCwMvAIxzi7NnrIxiGnkUvgAa5yGGqr2NVVJub4mvRbqBL4aRJZ8XMMp9ZUwHdCkXk20k4OXycLbB8+jYN1b+qcIHOz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uomMeTpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uomMeTpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3520C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752623393;
	bh=dFwsv3VORxPGYkDDIIKyTTHD5KuUNmus8J3QcYYBY10=;
	h=To:Subject:From:Date:From;
	b=uomMeTpQ6jhGhS1ycuLQ6AACDWFZ9ppct2U55rGCZDgur6nTM7HArKaKKLngo6Zkr
	 mNwnOq24bGXqH7MkyC1rNO9VU06UxkmezxchfbVOsGaInrmxPcuolRVXQcu/ap+HqW
	 vSt9UeA6xZWWJCSaiG/9UW7GQQ2Qc+1u2xyoApU2mDGDzQF4ssXdpkx4jShsJ6U/BT
	 goUzKV7BNcfPdWn7Ja2lSxx1qG+9uHF0PfFQUx7jd2m/qeTq9DyxMsxvkqRQFsz1Ve
	 3tCgWRYgMrv+NGLBJO+cRTD+/57mE8d0KskRTQO2te4YX0OAYW7WSF4Fzt8G7el7yw
	 1lr6mpWK+M4QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9442EC83F27
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262339358.3995.6531633733615640832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71917db5b149dc58edc3fddf9f769ea53621cd652825731ede75a70e0d60498e
Date: Tue, 15 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752623393
