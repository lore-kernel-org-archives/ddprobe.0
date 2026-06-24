Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EF42F7F09
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782324454; cv=none; b=nW0a+SYTIOmM6p/QmQumGny0rVs832LvNvpyz9XFtD6yuBwUAKBvxEbuSCuJGIEXq/1xAOfIKN/7E4QAZVaUCLHkyfBN/EDQZbN6OLkUqKXo65zu0rP5Ltje7lz19j4SCH8zG1EiySk43d5LY/vNYDxMSqBFUbJu1j2EEptW+Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782324454; c=relaxed/simple;
	bh=uKAg7M2aneju6Laj9Bwdhlh+9ZvMYH2dk9qWxnOfN64=;
	h=To:Subject:From:Message-Id:Date; b=m5fterhliHv9bX22yQSMBknxbLiAvaeWJOpOTn0awMSatcnVXH+7n40rhUbYYxWL1CyUiR+dldzWeiAHEnXQTONc/Uk3QPx2flSDkBDWrU7S7bqCTDlMPr2f8fBUfKgDULYr7aBH7iKurPqp6h1QFa3RFkgPznArmRk2hb0WaZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhQSu6XM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhQSu6XM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C77C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782324453;
	bh=uKAg7M2aneju6Laj9Bwdhlh+9ZvMYH2dk9qWxnOfN64=;
	h=To:Subject:From:Date:From;
	b=WhQSu6XMoHRd+VxOrE2pwjUyT+Q5GiwtnD5kYSZs5EDUIxrKllYsm5rvj9sIhcrqj
	 Pt9KdwTLC5HFLjhvnCMZ3Q5y2a8WvSFtgLAQgQd9sUm/G3EOBRZqO9GsKtpJg1bwlg
	 ocM0cEqmJV56iL7grP9qsRqSnIUPuSYVaJOZ8HUYajLmCYS9to9Lmdp0u9f+yrEgNg
	 y4260YhYh5gN0ADQwbYPBL+eTtWxNQvWTPuPfY2cxJDUuiPMbzbW4M8agxBEN/UBhi
	 GBb3Az2wgSU0hP7zMusmddMwS1bWcrrUGGjI9fIJRDpHqe6E+N02QV8xfveI+i8KlX
	 rlLvjRPayjTJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED46CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232445370.17239.3085264771399022496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8add5d1d5a69228afc0e77dd7034aa812849ef225cf6d126c2fee9b75797024
Date: Wed, 24 Jun 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782324453
