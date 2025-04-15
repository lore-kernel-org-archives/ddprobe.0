Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555D6145FE0
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744730994; cv=none; b=n8WMW9/DBOh9oKo6GsSyaNXKwfWypnJVNMmSuenKJTcws2/qmQmfhxM7QOpEsPe580COb7TF1vF0vpg43y3FLTNJlxssUB+XWGedJJIHIAVd/JQN/20oeaMRY5Jxgcpo3eDFDt0nVri4jUcPNd5+BZQoeXQRa1H1OYd8TRzSq8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744730994; c=relaxed/simple;
	bh=f5u9peyi+M6yqdYGRqcft/3n6EPTxl10zFywNF4ykAQ=;
	h=To:Subject:From:Message-Id:Date; b=q55d2kBMJ7pn3p4wVVDllPWZBlzCEzhkJ/lvNLY5bY0t937sxmpbycAvvO+n9cEn9HFlUcTRJlWC3qZm9V3jAU/gj2T8086NhSh+3BQFgnHSqzBLebqyXLqSEIZG8aqBBowkz7JlOxA2aqT+O9NhH4EBfqNAFbj+ordyleG5MHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQIXsZKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQIXsZKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FC6C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744730993;
	bh=f5u9peyi+M6yqdYGRqcft/3n6EPTxl10zFywNF4ykAQ=;
	h=To:Subject:From:Date:From;
	b=cQIXsZKY/qtQslVvkbetXdmZ42agmu5IjiMak8r80CKY+tgXB9P+VLMQnPYdfKKdw
	 6Xp+/h1YNgew85gNPB3G3yUiIcIJQK34MQ7Nf4C3otRg28IoVW9JMMFLKbYysmCJfZ
	 IrKvpZm8ti+G62XLJcwjR6/F7v4mv0Fnx8uSm66jlSiMB5sdx3ynUUAjTa6ZpG9Kpu
	 YwpHgUsLNkRHySfB+wANlnc4u6JUxdOlUIQWn27c1f7dpwrf9o86nOUWq0tIY20z9D
	 vkc3Y7JBgFVqeQb7UsRwqXoIywJxxD1acJocm01+zV7U2PgwMsr/9R/wDEZPc60tzg
	 n5qH+Euat+RaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EBEC369BA
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473099372.27745.4910159867326696379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad00f8f9d6cf6e5889b2080152cf835b5cba6f4a2366781126ecb531c42b8a7a
Date: Tue, 15 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744730993
