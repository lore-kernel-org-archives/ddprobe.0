Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5200744CAEA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781624194; cv=none; b=pC3ZUVqb72+A4bYLd9bjrVeNUUGgwNxizISTFUBJ8MY03oJrQaSvF0vegIZfuM3ws9cFydJZFwsGVcFvuiMDrgYBpoXPSJHXeJUxwSAuKDJEStkxnQa8GTH+LpSKbAz9SwAojSxIb1RjHA+x1zeylPMfHuxsqHn14pcJa8Oun94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781624194; c=relaxed/simple;
	bh=KlqpWKhSS50R9H+r47sTg/IoEqf0k3tiz5FneeZc/ZQ=;
	h=To:Subject:From:Message-Id:Date; b=TMTDNISdxsIMstpp/ivZ0cFJPO3k7s+P0Vq2syyQSm9nZV/r/A+kr+21lOq5JX/D593kiJC0QQ1ohTsOwAPZ5W2b9eUIrSFDDAvrzCTGG3MEGYbv8zTt035TRoyHRUT7aOK26lsqZJq5F4vsU0tjmpQI9UZ5d34/uvRkTtXUIGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hww2ONO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hww2ONO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD885C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781624193;
	bh=KlqpWKhSS50R9H+r47sTg/IoEqf0k3tiz5FneeZc/ZQ=;
	h=To:Subject:From:Date:From;
	b=Hww2ONO91HnhC4BtVVzTUSkwf0W7KeYSBvKBfDJE5uSGsuGpgNqa/nD8tcx8TWDJu
	 +tzx7UI306ezV9s1xQjO8tcn42wiP3j3nExbR1sfZzenIj2H+wZmbr0cI4BioUWqs8
	 bDdlf0BdwPHvfTR+89Qn8VBpngx6sv1rXjz3fHBKZ1mHHW/ZLYO85oi1ph7Zz8+dbm
	 vx56nlsZEuGvilocahhEHiNIT7kFZb/MNIkGuKrA96SorbPVVoaLtpd7nRqABhpTTm
	 KwYoSyCAXbeH8vm/pJwWiAKgUVszReM/36uMGI1XgOYi3u7Numw+a44serZ1aHKFNZ
	 WnZw6bT0HHq4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7EFCD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162419370.13936.16973518930742615472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d589e78dfafeb95a76297dfba7629e8dd316f9ba8d932428d13167c65cb2532
Date: Tue, 16 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781624193
