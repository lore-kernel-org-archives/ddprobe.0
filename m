Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169E1405F7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767363834; cv=none; b=mQErnOgE3WMvar3WSG0vXjm2oIsRYanv6rTY72n+p7LBmuzeQPxMKvBb7UX1WdiTt0D2MTo9NV4iYZMqEW82m+B/1hvG6yebpRPfUc0ft6+whS6LURT4qsuAbI2BIwD7uQUpDd2CCGa+FB/EewqiWQO0PK2Yh0fZu0nDEsGadqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767363834; c=relaxed/simple;
	bh=ZOqXhqZVbUl8fifYQlS3CTsE9go4kRWAoYakTq1c7M4=;
	h=To:Subject:From:Message-Id:Date; b=QL70BaFd4/AIruGv2T5ZqLudTHJ4AvjpMasOX9+gJT3FyBuIrYAL3WvULL5Zo9LwSBogqP6dxHbQM/BOkRuxPE9KSMOSQ0a1Nf0OaKums8nCSH+kYAnxmhN7ZbXZugwGtW5YKPYcRJf+ECdqW4jlvrcXtV+oaFB0ZCOBu/0elNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7If1UMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7If1UMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED81C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767363833;
	bh=ZOqXhqZVbUl8fifYQlS3CTsE9go4kRWAoYakTq1c7M4=;
	h=To:Subject:From:Date:From;
	b=s7If1UMDBAiK5MpPM9SOnXt7o+0ZRfdTOCwWI3sxJT1i+GvnTf2d5/YfDyZm2FZzJ
	 4kyl7F22dxJwskbwVx8nj/EMz09gnlKe1tSayfp8KACFzzDmD3qHUf3/JG9LktJE+I
	 4CEjED6QJCgd8dag+SeLAMlUkIvY/5NgYAmKll86v2KtdECp9HbxNH+Z6gvDTbMgRh
	 8/+Jf7N3N9QlpHn9jXXu2IRILQzkshl3Isy8ir7EOwA0icv+88CEPbN3+Pze7eQH+3
	 qGSgupj48Qn7kxnNj4pPXrWHQrx1DiNt/qV7gVK97SQ6sxwz0dkL/pTdCGftzLcY9+
	 96gCWshvNiCEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B7FA374B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736383357.14488.10310887385058394064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28352400716dcbc23803ea0a3341dc7141951e0a3c6304b76e046e97f8e10a0
Date: Fri, 02 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767363833
