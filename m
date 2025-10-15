Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211F6315D3F
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760515194; cv=none; b=FXWbJ8BAaGOOGLjTP1WbjuCBtZJ+1oggkUO94ovhfPaeHdx769Lf1TXDZ4GwfitwSqej6+CEsaoSrE7jpoQHGX28vmvznGh+BbE0XmCo/Ty3Rw3YDqX4DYPgukUb1OjFn4GYKDav3ppcdd/krU/C6ushZ1bRpefBh6GO9H93Ngw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760515194; c=relaxed/simple;
	bh=R0zB2h7rPxiDEeFuar8ixenWqLZEbRJ3ghspmFVNWrk=;
	h=To:Subject:From:Message-Id:Date; b=iLx6xwB1o29wwb+mTqd0hl+NtjOMrUQmw/Wlk0W5urVhqkmU2TvTnVC0fj5QPtTp/TA1ZGGR2mu5D9D03Qdmec1bNSPZd2WYjH0PJq9qMNq+NVQ5fc/1Tx4rh+cGWqFwa3Lg+EQm2GPHIObaoBRqAXU/hKzdXPYIAmFs+NaUiX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezg2sXug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezg2sXug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5D5C4CEF9
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760515193;
	bh=R0zB2h7rPxiDEeFuar8ixenWqLZEbRJ3ghspmFVNWrk=;
	h=To:Subject:From:Date:From;
	b=ezg2sXugahGwpveyRwVlIHOc8O0tZ1+gUF2n5BYbqfL0vpbtbPgtVPR6BnF9AA41J
	 i6Jq4H8Krwn3++5yFHDAcr2J/UZYTM4mwnlsvIQgL+EXdOFaeELV8JQgxErfoKrGqr
	 9aH62wfpRIAWfKCgw2B9V8smRikTccmnno4K/l3BbUd11oGFPqa0VeNGmyGeTfKiQC
	 Z28ANz+DMh4ZlX7q6WRN8FwHrYwDey4HRF0n7+SMEfxo/B9nMQfJPSCLKLyR3xGBsr
	 DOeVnb8+wDLC+gkHGw6FcDkfmwRSRR7jDhWnNpw6T/nATc80I3eP212QFm8MtpHsqN
	 LNzmDE1iTvzpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914EDCCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051519358.11516.15385981227300135270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87df669ee9d8aa167af1db558ead6136b234a04eb1de9bd33c6b4d3dd53e601
Date: Wed, 15 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760515193
