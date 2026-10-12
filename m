Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DEF3D5C07
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791802234; cv=none; b=m5eDZyCQb13vuq9Qyc+U6MvxmF1/uuQFemYVZpkwLEoQgh/Lk7zUKWyZrhtGa1v8LTV+/LVE6ZRDS08h4f6nUvWAHWhMgdrFs+gV5+Ghi+aTQ1+aSllxEkySxfK9w00qL5L/xSb/IL/h2eNJvCY/c3uB1q60GwwK6cdlFsSGS8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791802234; c=relaxed/simple;
	bh=hTt4C3JiNjz0ggkN6yuS9KnJbCRRYLzeeS454ZsZ3Qs=;
	h=To:Subject:From:Message-Id:Date; b=iB/FaD8NEYyVh1OgUqZS1mI0Lc/azCGmLisPMmKERqu2cwZqI8EMAxQAogNOpWND9SpF6Xx3RPn0w+1yEJ1weUWRpLWK0UBqDrZKblDQ0tlwBXDlxPYmianeSfoojsBvxTjnFIYmkN+FEN0B57oJQnJbLUF+9ax2vAzMWbTpwtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9Kn120o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9Kn120o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD621C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791802233;
	bh=hTt4C3JiNjz0ggkN6yuS9KnJbCRRYLzeeS454ZsZ3Qs=;
	h=To:Subject:From:Date:From;
	b=g9Kn120olFULrVb+i7grKvY4u62CrT5hO3e84ElSrpIdVGwYdyatoQBtyP/pJpU5V
	 PfWOQToUAhbXZAw4Muvz43I/VZLCmjEK0Lc+f0hNl5n84NMwenSnvivONOc/q4ZUmu
	 qqoHi/3yLCzNhYRowpuyoz/HXDGurXvt7qYQNIbfoFTexOKpTaKfkwaFJijRcRaVDf
	 gM0VkeFmFtcnsJo1VAuq0BxB6kTpXhVbWweLmi/7lgLRrYZ/FNC4DQrjLCqtUER4HY
	 n50/5ZVni7ID6grvNcUGs0VXMbmFtpf9Dib6jqRNVAMEki3/S2A/2jxhMkDw4A5CgL
	 v+o5HLVqegqNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A974ACA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180223368.28977.695509513417377114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b4815b3ec3db635919cfa88294b96dfef053de57fa371eb7e4efda5afd8aff
Date: Mon, 12 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791802233
