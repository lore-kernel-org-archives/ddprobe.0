Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3076A60B8A
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748195994; cv=none; b=GC0kJWqcrBKG/rSwHc6uhkNerXJMMHFNYRU4Cogkj+RcTTdshTOoW8XPPr8cQjgtx7hPet1IoVwCfh9ZI1sEkF9EEO+hVTpTxCARzSkJnSqPG7r/vlZz11E4QbZZpI2OYJ7TJyM80teKV8fRq7EV2JCk1lMC93byt4AgYLo4ccg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748195994; c=relaxed/simple;
	bh=Ilasi6GIogRgXV2hf+2lsrpksw9zncs3+2r/sSt+0do=;
	h=To:Subject:From:Message-Id:Date; b=bMe2px47CaeSQBsljurcJ8VMciqNfbv9CepIma4L1ih4K7atMEluuk8DeYHqUi+bNRzJo/n5F02aa9cFVjam4gGcCoeVAwE+GEi8zd7oMvRIckV3UgzxzcZ/YXlOLh6VzW+CWDlqddfiJIJsjA+kr4S6J/49DYq3eWgO5q8XxuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gc8OQ5UG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gc8OQ5UG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E81C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748195993;
	bh=Ilasi6GIogRgXV2hf+2lsrpksw9zncs3+2r/sSt+0do=;
	h=To:Subject:From:Date:From;
	b=gc8OQ5UG5YQgJhgNjGO+UHFvpI0O5IDcr9TdvjdHgigmBv4XIjLRT4h5TJtTYQdAN
	 WcJMxN6jGBxg2JpF0TF05+uFf+Bb/hwuqePCmk+90wR2Xyo+6h/NH7vRenG2cwNdnX
	 7H7ntE18Ooa4+kDIxVkz5Up2P2wqFe+weOL30U95NLVdUvGjeHlPK29yjUgtvlMlBw
	 6CKl7tN+onxas+IZ41UGvlKUIJD240d4Wq/2AbbDCAMDeU2el7mvE0VhcyN+BiVcOz
	 XsEZY9MT+0EyAbb5MFHqc6E+1pNhBLUh0ubtbt5nawgbNxsdbUwMg6JooSG0ZyvW2u
	 aX0gf1fkiJ5hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B32C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819599359.11643.205484483141708526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8270e275c4d8650a0c1264d62ffa6b0e33e5730179f05e9d4f53f22fb3733c2f
Date: Sun, 25 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748195993
