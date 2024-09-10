Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244B0140E5F
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725932754; cv=none; b=ozzcBxrlOX+HVT0CpQ008P15m3bcFccsCalx826/uMteemwnhut/dbWQMw3o930ZIQYfmqT/nfJwUQCxYZFrdfP0FdmUdwn5Rrpac+zqtDcdnNVlNzX6p4lLd/s+OYT6YvFtFcPfajvP8hErzVFFyFqKtntqfFLdfWD+1wydPso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725932754; c=relaxed/simple;
	bh=KJYTx/xnBD6l6GHTYhXR06UobN3LtdNCQnDJixMcIwk=;
	h=To:Subject:From:Message-Id:Date; b=gTJHDMVR8Ma8cm3JKY1At57vIyg99596F0cSUJ4jn02pstxqoLm5v1MnFzsurP4uD4tb6FHhqxWUmGzJ7M0mDnZg0ebhv5XRY/Tw0cKWSV7GUx2eDpTjmfd42eIu9BuXQUZTyC8RFRwWPZBpAWaJFaD3r/fWUn+IbsvDyM9gRE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xa0L2UKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xa0L2UKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19C3C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725932753;
	bh=KJYTx/xnBD6l6GHTYhXR06UobN3LtdNCQnDJixMcIwk=;
	h=To:Subject:From:Date:From;
	b=Xa0L2UKrJTi1OkAYRzJqwR9su3vqB6OFQbTqpAUj8WIbnMBUjtdKEhEbG78G0xyg6
	 MnL3M+Lk4lXSnWIaqHEDnCwNOiB/pwav3yvm9Zlouz7ZFFPe6IlfeYZA/x4F8k9F5K
	 7586BTLC2sib1J+AMCeHP+bwwAKI3SzeyDOyJZJ9A3Z8HS5XIRGeIR/3XQljPeXoqQ
	 m22wIHOfHoIl9ZjTdL9UBnKhS6JBfqO57yW1Cy7VBbAD/j3KXbo+DDZIT14ji6dfcj
	 mXKM/t0t1LSWlWshx1Pf5zmZiqwKhtXNC6DD+OGKblpTCfIlVT7EwHipeF4f7zyeK7
	 htXu1Uz4ln6wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1706EDE994
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172593275365.16236.6067663143348925472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae66a426e0907818c8e3b62a3f77c3efccb90f403657809b6abf1708f717bb8
Date: Tue, 10 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725932753
