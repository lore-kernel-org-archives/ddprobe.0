Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D2D1C0DF1
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711889297; cv=none; b=uo/ZXTNrxCQKkFb3o7V0JR2IXzUQ773nzJLYeo2GNzYjS8M4P+P4zjHvXrp9s8hEBKkAXwJmHHAZ2u7WvacK0pm8SRdvW7jEG4kLu4goMksBAr9p++cxybxTsKigJrCWADgZawjnNx4hal+EetrwKFBfPASBAOQVbEWnmAPzACs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711889297; c=relaxed/simple;
	bh=kvxqh+PrKGYBgR+9ip9s4o8Kuj92iFFy6qh4TyQ//8Q=;
	h=To:Subject:From:Message-Id:Date; b=sBg/R5V5DVIAVYelHFmsCyuJiwSkz1tW7+apMCaWhTJ0HCWR4uGwVtIF8ddH8izeR9QYSTp+kTOg/5Or7k9rsLFfCjXulVJ7PBfQJl0t2L4KK6T7Z1LhaaIH3gr9wIJg4/rrO+tUI72NsoSptp27mxwmo7vPhoXhxAzpD9dlVS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVdhwKW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVdhwKW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA88C433F1
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711889296;
	bh=kvxqh+PrKGYBgR+9ip9s4o8Kuj92iFFy6qh4TyQ//8Q=;
	h=To:Subject:From:Date:From;
	b=oVdhwKW7pX7TVL9UyrpqqiNcxq3d5PvD9ZPdp10BdJoUl7oZ86Ctl6wpRM03UN+FF
	 ao0304kDHMbxxcTs2zZs0os8zrW0GTcLgrgepqDFUo8xA9YWnQh8Ab5C7nPnZJ3QJT
	 Z6Y4WMaiqo3ciKQMwI8oFX4wD57vrPA/In4pL3C1Qap/9B++dKxMnY0PH9F9r3bRSI
	 63c1O0d1kRfoLaOxrkqXqsFFhJKFDWRlpHGfKYis8ApVe8szyv5LVrl45Y+KvnB396
	 bdlifsbNh0YxnKwG4Kf4LV2irdsfzd8lJYkr2EGHKtapJxUJvL1hgk9zBR28nwb7No
	 htTwC4WXnQ1mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D251CD1284
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171188929641.27311.8723550847128801774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12464a542795499fa64ef396180f17d7e4301a4b9d18811b86741aaaf805486a
Date: Sun, 31 Mar 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711889296
