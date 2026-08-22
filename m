Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FACF7E0FF
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787356834; cv=none; b=GeJ+jKS+1+ZarDvAUrBapmG/wS7mTeyApEBRp5jG3nsUXZK1c+Xoz3M4ysoB/4gwh8llqZ4za+8p4My94s9xXvljeAij5jWb0d9QyQRllfHg/PMdmpR4O6QgBrUvAyrJSul78e2LtjiU+r9awjKmmzcZ81PQnMZQkwrcHcArhBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787356834; c=relaxed/simple;
	bh=pWbinQxJGMh39gTWD+ltSMw/Jp+2G8N//eUpbw6IaV4=;
	h=To:Subject:From:Message-Id:Date; b=C8flYIF3CNZQHqtPIXz2zkqESXNdFq9t1MtEJ00e9wvIqwtrZgkEXaVP5daC8guMNuzYtxwlzn+TJM5DpKoSpKJBnlPkzqwhimm09KF6pTt2P51/uzpUf1z1xtnpWH4x6PnDxO1mtdOZWbBEn7bvz2Lw5C6ThjBmS3QDPideHK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPC7RO1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPC7RO1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8912C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787356833;
	bh=pWbinQxJGMh39gTWD+ltSMw/Jp+2G8N//eUpbw6IaV4=;
	h=To:Subject:From:Date:From;
	b=IPC7RO1+wco+4eNZFGra3kSLjYJbrgLjEEDV4hSc37B690v9sso36PBL05vowCaqV
	 1O5X07NpEOXybfuQu7xjkG5fr9Rv/YzKJ8hFAGfvDTRGhcwvKMmvbretklnduxwWgB
	 5oNMrFCcVxm0Sg8ftqkBniKA/m4lLDKBI850Nxxk2yj6lGHkEY5bsD4MNzVJmR16sJ
	 /IfZQs2j0kgeqMIjM1UZkMlMVrBHt1fmDVs2qUpZNoauQk99F/Fz+qDFulAmKooR9U
	 fFDUlHfrxozrWNR2bj3I3JQyvwVRYdx7GDg9udhgU4Jx8rAw7d+huApdldX59IXopY
	 4xTSceWhoNFJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DC8C5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735683371.29025.13065465659985117102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9c65fbdbb6412437b901439d109961a6fba7f45d269649f50ec2091d13b658
Date: Sat, 22 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787356833
