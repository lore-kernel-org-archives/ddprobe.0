Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5075D1E535
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718943743; cv=none; b=nmwECicq82fAEq0txVzY2jC02rAWWmpsTjYH332MZUk1hD+3AQzpJOfAxFz1yOMlEMrh1Er7f0q2bqruJ0vNuEvc0A/9Fie/PxNEnRb8VQp1Sc3emfEx4quaZEYLas8xxdTpysmdRXekdqkgZeKJ3kSUKv0M904YH57iu6pxyP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718943743; c=relaxed/simple;
	bh=bgdqOCyCQOfXZh8FTxCPtZYoioXFiQxHa/oCrwNQnEg=;
	h=To:Subject:From:Message-Id:Date; b=UMiGyfZaeEOQ73MRwt3i2BEeQZjVrzB1Uvu5EZntqn2VzkmHORnGroYWaxSzaOD8tQOWD8A/GmJIijXUZnDo4m5lZwsuGYDR5bCc/uw4YrdL4Uf1qdCynI69q9Hclk5r867uWZLN70c5noKEVUum7vFhAsT67+ziqPCJNhJVkMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3laUGOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3laUGOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD523C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718943742;
	bh=bgdqOCyCQOfXZh8FTxCPtZYoioXFiQxHa/oCrwNQnEg=;
	h=To:Subject:From:Date:From;
	b=q3laUGOHD7YCQi3fEDoQJeKOVrUO+cblHq/Qh0rdO8aXbj7x4/sgUD2DHp0usllex
	 xti8efQS11WZpY+B+X+8DLbzFMGQAmeRxZ/7qd8lDA7Dp6ZOg9NbmaXQcqQH1gJ4v3
	 CcNH7gqn6vyZUYvlRwlIJeYXXtU42GCNoLzO+MbJdsrstzbwng9/UQq5Nng9eV2mOB
	 FXB1DdPa15OForC8dPuvvHG0HAqOt1GpgPWwFsctfJyzmrNa+1kRKx/q6LGXWNuZJ9
	 iUndSNU1IVDM9QAozaGJFvCjwG9cQ6NN7NaRkYDWq0MK2fqinSpUBsDYvKYSiXKY3y
	 OyAGVCmF0mrpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CA7C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894374279.17101.3351017334484507225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851aeec152192cb2301b50c1120799c8bcd57791ad2b0b49d6cd7a756c505455
Date: Fri, 21 Jun 2024 04:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718943742
