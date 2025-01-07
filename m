Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545D51F7097
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736279154; cv=none; b=sL7g0RW3M9wM9hVYjMdu/JX/MREwHmahfTmX0hN2eznVeSxRlYbBuzCGmuGoRvZ6jKwPRlOH7GdBHYTVV+j1ls+p4qf7XCQwvkwZwPO4e7QtBSV9LdXUiTAw9v+dbMTHn8m2vDiQM6LnwI86sPNGI4Auem3EBPTgbzujVo4bqII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736279154; c=relaxed/simple;
	bh=7+gfE6LkSVQ6cbIlsqaKEs0vwR3S/rbU4zYtiyRkFJ4=;
	h=To:Subject:From:Message-Id:Date; b=Me8BJ+Dv2HYfHwWDFbnKuT+jjuq4ybZmaEdhzG5edZjsIxbvSZbNCkX/rZg7l8ux/ZdSpV4Rxn2tB0GqgH0HN13O9BNJ1fTKT8Gzi5DksT+cAvo+tMVtc9c5wUE7T47edoKnDu7wMkIgccipvyxYcRLgHy7FxmGlL6XlC4j+/CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iI0IcXUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iI0IcXUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A405DC4CEE1
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736279153;
	bh=7+gfE6LkSVQ6cbIlsqaKEs0vwR3S/rbU4zYtiyRkFJ4=;
	h=To:Subject:From:Date:From;
	b=iI0IcXUkFdeKYGxl98FqW+jFqZ+mYVWVIoXOkfskKmc6SZHIg1CKfDyEYpmM/JODe
	 zwDIdBdh+uZVLJn5icGTMERPS+bNW4TOwHChH41G0sfUErzMqYqGE9zACSOImPcfnJ
	 AUGS5s3s/gFQ7bIFk0x8uCgFWwu2Zxmmza+Ii1Yj/UlI5YV51LE+9ksA5hSfPfCP+J
	 CmrxkkBmq018Mgi/87QyuGesOzpEMG4WU8aTfel2fhcZWnHnfDPIFsihVWnocmfM9X
	 oE2vpNzO+sB6CqFZlLXG0bODNoCRGvgl96kPdK/g3mjCsy1KRAzZfXfY/brnzxH/rC
	 UNgG8SegVgfgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923C4E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627915359.22754.16534372702269144281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41059da181a08eada91596d8330ff28ae7c8fe14866cc451338570810406dbe9
Date: Tue, 07 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736279153
