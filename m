Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE72914D29B
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748234393; cv=none; b=lIQ2jpwydCoznynkoPuXGAVTazJXMa5vbPRBN8KxfTuxXlxTOCPmunu2ylizwHxcQZHFOpjLSrBQ4yOLeyIXBc1p1nCNLEIHUg6n+LM9eOaNT6Uy9rFADlNvQryLUX8NINUJSIwJit82d8mMwQwg/KsdOnSlrqeKuLb4V9kqo/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748234393; c=relaxed/simple;
	bh=AsK4YUIs9le0IeKH+4fbjzmNqJgAY+Uve1q9pTTrmvU=;
	h=To:Subject:From:Message-Id:Date; b=MeeLr/WWOO1QjgX7cM8RTPXYZIQ3p2HDkT75R939My1bw8zPFeNxaSeMNUZBKghjowhws6a4oZJB1m4q+fUkSUZ1iv4D32pYwcLzBE1cx+oFsxy23PBj2NjNhq8c6/H3npGRiDgptEc+4kVbuM0KzeDGqbWqqB1+krQK0i6V6OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIv2iVJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIv2iVJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4040C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748234393;
	bh=AsK4YUIs9le0IeKH+4fbjzmNqJgAY+Uve1q9pTTrmvU=;
	h=To:Subject:From:Date:From;
	b=BIv2iVJ8AzbzIgrdn+QpaNOqr+QDr/qkqxeHoQxaG9umE/zeGchhVDuNByS5mBFuB
	 K3UNVoQBew3Oc1O0WcKsWXyQG4cyckSAGcKchIg+UaluDYbUuHYjjs2KZ9TIcA6Ole
	 SXA6EayXpr5Mxsa3S0J8aQCAjAbMgj8/4yNMmugGy4bnSQL8wgdbuR5S8yFVzliRmy
	 MhSekY+H1ZjiRuX3CctRf8fdiaArWHkhJ9EIMV49YJXB1/pmdmbdpRJI07AxfhgVlH
	 toy8djV7xhu29SyTz6GKXHLYCzCFqN/EgqdAZ4DM50LyrIafXupvwdcq2ttn8ni2Po
	 K4BfqG7om0dXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A88C54FC6
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823439357.28615.6164867294363535205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71cac6f3d65264a7d7c4278d07a604d1d782472618040d79a02d2ce8fe2e707
Date: Mon, 26 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748234393
