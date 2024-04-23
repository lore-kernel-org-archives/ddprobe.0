Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663A529429
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 22:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713912623; cv=none; b=kDPAel6FvLBmzEujqqBLVmY95AtSdVOx/HY9HmRtlTyiCQZ1KdJusWIx0IvZg76wFarjD03ut4LTthhc0urx23Y0HfLwD+HA3dzFX8/acSZHUZxlItd4dcYfpjyp5SCMIieKzYcIboDYzwse6MJe9kHU8Wb+NVgzu0QhOQ+czUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713912623; c=relaxed/simple;
	bh=SdhaqYWxHTpxfIjgdeLeEuF/0UPxNZ8XpS157dz9YH0=;
	h=To:Subject:From:Message-Id:Date; b=X8J68kF3lg4SDOwfI96nHOqup0PU8dOfyiORYYLhNN+WI6LDaK9lKeNCYI3Ao2BeDMCMokm0Tr2r1EoMPhPrh1oh38h2agMNhcK79hJYw51Tq7mlEV89uo8KVpX3pix123JTfzuOvlwCClbr7KzaIU9WqtjbA1Wp7BV/OB3tIdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6CFaRX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6CFaRX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5707C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 22:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713912622;
	bh=SdhaqYWxHTpxfIjgdeLeEuF/0UPxNZ8XpS157dz9YH0=;
	h=To:Subject:From:Date:From;
	b=s6CFaRX6nSGGuX72s0In/CIdxNY4Tck95xNd51KY2pNJSIKOJDOXLPB7+PsUofv/8
	 gb2HO1d07Shcbk7Gi5/BBOwcsINvBbbRbKhW42kobqwrLufG+9uY3p5SQymTD+RfU4
	 wZmoTepg3wxNABmaJ03iHVLycAkg1p7U+kFFTdb6kBQbd6YWW+K3airrV7UuK0nV8U
	 I5+vD2IvWvk2lj9kv2KBHPKDabp3PfQsVl61uxUZz26+DWdbYA7def9AO5gQ7Dih2P
	 GJjGYMhCNm2+IAfuDxRzlqO6S1eq2Tf02cjWxTuuUU+q7HgjGFfUalcJ7tDgoslBVT
	 xRrgcC7RvjReQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D259BC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 22:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171391262284.14489.11781249245312110951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e609588e7c5db8903da5e2beeb360131a8a1fbada32269a2bdddc4b124d55044
Date: Tue, 23 Apr 2024 22:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713912622
