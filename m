Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C86354763
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780966474; cv=none; b=M0MdHSfhk+2eU5BHbDTnzEpETwPjlhPGIUCH7l4VSXudBVg/m1sx3JJvkrVFBxyM8WTew4G466qz4nlyAQf3c7vlaS5uIRMSYDVh2AfzkQJuoZG/zbcBOAAyYeErBPQghvZIO6THzz9/2q85NKGDxf+TOOVByXlmpx+uS6+bjZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780966474; c=relaxed/simple;
	bh=+FO9/qYbPOu5qhLTd/olhobVzmb+/0lNdED+SZ83YqE=;
	h=To:Subject:From:Message-Id:Date; b=OBvOCL1uU4SE9aviqKFBmU3TozeeF89312dbQsQUqwn1Ip810fpvg64iZ/Omk14f3BbXMJC2bTvV9SS9BKELeZ3v7YaS780QPf1PiqDX22WVBh3m8IZLUTyhsoYFK/NEY7KmBLZLV1Qt5YE1jZ5SzHuDmgJjQetvomHGJD+hFjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4HtYrGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4HtYrGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE4EC2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780966473;
	bh=+FO9/qYbPOu5qhLTd/olhobVzmb+/0lNdED+SZ83YqE=;
	h=To:Subject:From:Date:From;
	b=m4HtYrGJ15hW0/wcxXsmRMdBj5FFf3gqa+1JHqmoYnS2OV5nGIntb5EFNIIs9IgL3
	 QrZO1kM+WvWJ79qjCeMm4Cy9uqxOEA9ABrzPUR/ccZvX7LcEnRjstVVw+tp+M2L2zc
	 nMKq+TjeCyW0fR4Y94jNmhkZlCKi7EgBjJVJzeMunKmFr40SA0A+XJSE40DEr56fkB
	 rNEvXTwi8VN3f/LQZrLL4XMdCs1nLjNge6od4TnioZccGeId7Bw9nk7JfqUophy8Sy
	 DVw56dQ1RsoX+EcYfLDY2JsOAQBDugCma2MQLhOCoaUzoKJ6OAuQiwG8k9nNO1wFsi
	 DtpQVXYpHERZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF57ECD8C9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096647369.1008.4446861140948006311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db0a88be18cbaeba0dc984e62eca95a4acb1e75dfd681d4cbd543a6a24e1a25
Date: Tue, 09 Jun 2026 00:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780966473
