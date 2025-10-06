Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE74B661
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759792794; cv=none; b=RJ3jJ6M9YnuThirVq4SxnYa+5WR49A5kL3gknIq/e+lawlXqwEO/nbDf1bMAdLV8dJNTFEFhBm0OgI2BSPthB8238Ut/4tc4h6nXwnv/yGAdCdyB7etsrhk0wuTLbSJVstN6xa40Y3HZvL5YGC9++flGoFbHWd/XvHgxX9Kzt8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759792794; c=relaxed/simple;
	bh=+OfVHYYxH0iuocuvsQ4WTNiMnlivyyzIANyB42rjx7M=;
	h=To:Subject:From:Message-Id:Date; b=OQE3ZqlUZaNX8flL8oiErdGoPM3Otob9UBJHN1Xzlqto1D4yE5XqIAjEEERpezGhPASH8GIVxaaG09ZpBj5ncWW4Qi8m1QceMDTsBWMbCb+topayEO5LRkJB0rPVTl4uTsZOAhdRdHP8RUyRd+vFAvVMBql0r9KEQ9KLJpm1dDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyryhmP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyryhmP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A69C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759792793;
	bh=+OfVHYYxH0iuocuvsQ4WTNiMnlivyyzIANyB42rjx7M=;
	h=To:Subject:From:Date:From;
	b=kyryhmP2K5nwz5BbjeLshsk7OMbDAJtUK29mWzvg6cWhYXwKCJgAtmNbn/ovSv1i6
	 ma61QT9Do8dMn4FlAKes3sjRp62INWnr1q9Hprw9JAGIcIaWiKT2HBlYRcOeq7+8PC
	 uHr1yv7zUkUCtXFKC6atJerM2Td080EVRVt8GSJP9hF4x31GOd57hgAddK8lqVMyk4
	 5ga8n0NCs/jCmLLts+NAP0whfZJMMICMxlg24kBuwR952UImg2dXvWH0x053bFsY/n
	 +5fviiNSXx9WvV0EtS+VsNhZopR9MGqbZmyYT6dICuhzWsE4YwKRQWFk7DwJddJogV
	 E8JaUnw8wqHKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95607CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979279357.4899.16041575334202618964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87860b70bf66c0d18ad40b19bd72a94fdc155c477e08050ec3508f682c10f50c
Date: Mon, 06 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759792793
