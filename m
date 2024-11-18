Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BBA147C71
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731972354; cv=none; b=pSos7fpn+1ofS5Zq6hzBnbgrBV/YrcN7Q097c6pVC+d30SC6Ke2WH+9d04WBroXg8qqOnhq34K9IJoGV2s6ZD7BMxgMsrOKPTeNEa5larntb5x1dQdysxchZl/F6yKU7u0X/xRK4LXpE3SU3utni9ZM9HLp8qsCkrG//Bw5JviM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731972354; c=relaxed/simple;
	bh=1MstQZM2DWSfcAmXpNN/kFNyGRCAsQWKrAAt4PA/Ywk=;
	h=To:Subject:From:Message-Id:Date; b=TJbe7ltcy1Mlt/DSbM5eNbg685ica2k7aQycnGcyFVALKDbo4zb0JKFaG62P2hjMqb5Y22Ft2TiF6lTlj5DMbtNKp79FOQ2VFtycudSrfN+K17cziryrt75JlcmQHSglsBufBTgUrvwXT8HngZim1RHmSy9WDhrsnOxLIkxzXKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvJJEEOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvJJEEOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D90C4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731972353;
	bh=1MstQZM2DWSfcAmXpNN/kFNyGRCAsQWKrAAt4PA/Ywk=;
	h=To:Subject:From:Date:From;
	b=hvJJEEOuGJdVjfHLxHZFyu4bN+kqFJm6Um+wanUslk7r+GW8h7Eu0BM0PnS13n4BE
	 nsVI3e3rkp4jrTF0RM6jZV9XzGT/0IjGoAo2QvyB+npVSZSzsN8PfA8JZVkYmZRRMR
	 mZUgL118EBmCsLmq+vE83CT4oMx7JwlacWGSyhBDlM83e3sOzcJDCs2/ixEwNulXOs
	 5FXR7VxmCI0KPbU3OpX4nlZLh3VE43vtv5iV3wdTNhcgdAyXTT0fong3zFKngl8Q9K
	 mwhqUC5yeuhlgzUMmgWzzplFImIfyWRnuc13a1qa1gor4qEaZ9zkIT3L2T9dDVMnvI
	 crs3fc3znz0Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEDED60CFA
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173197235370.29086.3803207680614848313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1678d237e60f1ece3f73dfcd5ed64ace69be5dd404786a03b8e546bcfee7e12
Date: Mon, 18 Nov 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731972353
