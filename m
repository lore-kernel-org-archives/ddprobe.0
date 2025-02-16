Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF7042070
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739749734; cv=none; b=NC7QlXWR6OeMHDAmKn8tuEla5QhgF57+7ZAX8VjtsRVTJwVXqcHSUxoGCVULiJHI6vaej8rp874Ceycs7Rhh33VxW+EjB2r+J3qGuluLfIRCLVNWYFylWlVbtup6E6pPR/AzmC+k9m2pMY0hTIaiNdds3KMYlp7QgdXjyMtzWV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739749734; c=relaxed/simple;
	bh=RYRG1jm4PJFOCqQq4NhO+TxbvDN4yufH2FYE8Carzys=;
	h=To:Subject:From:Message-Id:Date; b=YlsIzgO6KQPn5y6InRI3IGMVDGbWz/whD/SZN1r92zl8GCtTrUbmdVeJfa9GIjowlU602BOrpaIDdX3u8YZjTnrSAUU4xgdXl3EtJxxP5kz6TAP+ZjjNziy7bkPJk5QwK7dHO+FlOhlSmAuo50jz7uYDXey8mT6BjaJvlOrXGV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYYYsudT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYYYsudT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDC7C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739749733;
	bh=RYRG1jm4PJFOCqQq4NhO+TxbvDN4yufH2FYE8Carzys=;
	h=To:Subject:From:Date:From;
	b=VYYYsudT8t1rFbbexE/C8U7BeOfCBGCajXwgAU60qnmy7tJoxc+fXUNENqFvgxfcc
	 HKSqWJfUJXkdAciNpt/+7wBlC8ndhZmXlTM7hpXW4rxauLMS9dBPsN8yireoc8TkEo
	 D2tK2gZ5hd7Pc8XCzZtnQHBrksotbXugJP3SW8NlCADnZTOm6EtjDrDrc5BhLew/4Q
	 +8QYIoumTIYdD2Tn7dXTAibDbiLy4R5+4+L+dqNw4ygJ1Vkb8n21CT4J3XcnI5UVEn
	 eA5Yu9XsIvsijSGPhvefxrdGtxlwuDNpldl2wR1Ym+K02ZEWMi+yGH2dYevesv3pdj
	 hbCJkIkoQxcFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B487C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173974973360.18543.11612821954560681559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c44d2b8864aeac09b46681b8b81ca8b6f6c7298d56b1e6fa55ba9bb197452a44
Date: Sun, 16 Feb 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739749733
