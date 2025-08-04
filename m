Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBBF22259E
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754299194; cv=none; b=smqiStGdChOluWFijj38iueOp9esvtL1cIvj1F3oBwxT3G3iQjOir8ksWJDMZNPGIdcZTF/kZpxeBYJPzn8u7SZAGAEzeHl8rLxtGq8w8ig2IiZQLjhaXKG3KOrHRTjf6eDtQ1u+AUteDe48QkMAvGoqwAxWxB6Qd4n3m5VWNlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754299194; c=relaxed/simple;
	bh=v4UBjhw54y4gs8DxEQdlgAoIU8cr8bRAAj9n9cG55rY=;
	h=To:Subject:From:Message-Id:Date; b=W6Jvrpumu/PS4DWPRxBzBHMVoVxIYD7bk/UNrA6ozb1V1WEDfTD9y4dPllhPArhULENKNJYMi/qwDncKWdFCqdj4c4s1jOAKVly2j1bw8Ho1ZLPnR2Lz3AydksNXHVrkp+kq6+nkj6WQlDU1tLWDKcWMysOY5EIcp3BpHy7ZAoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtxaFoqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtxaFoqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F33EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754299193;
	bh=v4UBjhw54y4gs8DxEQdlgAoIU8cr8bRAAj9n9cG55rY=;
	h=To:Subject:From:Date:From;
	b=rtxaFoqnnYdxPTp3r0Wq2omX091ISmvEkXoS+P67PQHAVRy+RwRsjsRHOUjGWOu0v
	 KO1gznQORiveCjTyZ00+ifywELlOh7gdOsYzPPsOZVQQC2eCCVTXWEl8yfeoAMJBKg
	 acdY33+aLXD0fr8Qo/0mZqwuQ5/XM5MTM7MMv1m8qZ7r0unz3h5yJ6gYmVjcfX/Cub
	 lN+2B4S+WOOKQf8Qkbho89XqjQ9wa6sAriPghHRC9kseS8WuRIgWDSGdi2c7+C0H38
	 XouiOr7h/7DlY5BEZsl5Ak0FsSU7sR2vmRMgltIiTrJk29BH0HPNbZ0nrdbUJx0+2D
	 z6OrhF2gyLdhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F7C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429919357.8756.8282293650618439089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1e269b75e431e84f3926ef919e2076a60e1bef4d290f71e2f7cac90f29ce66
Date: Mon, 04 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754299193
