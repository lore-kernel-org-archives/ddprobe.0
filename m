Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB5C23DE
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731819954; cv=none; b=gr9ZpHh6usdnjBcBh/h4UHYiBS5J0/yFeR7AY00+3+mV8G28H7UEg5S2IBxdd7WNnL+LNw9AbrGKAuRE4lMNFPBgBmbigFJRWy/aJ52NpieP+urwQLIc7Q1yvsRzGmXf0scNfFKmcF5FJx2440j7iHFcjJyfGT1GvvjWCgIhJV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731819954; c=relaxed/simple;
	bh=WXbGWCa18LPGHcazPETbyXvKzwf6bqDJpgWXwgf6JLo=;
	h=To:Subject:From:Message-Id:Date; b=GcYx1TtrFF1TEl8F4+MrEr7/oGTejFBqtuOFXEpgBmfLBza/HxbLTc6mgrjsNz9oxNGBWAItkerGlP77WGAPR7+WTctzKEPGstaAjd6NZacIflbzVFCGEFIm5Pr975j1oJUsww7at5uDgcy6zn2KCYTdTBPNP6Tz38QRPE3/6eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3caMGQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3caMGQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87FCC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731819953;
	bh=WXbGWCa18LPGHcazPETbyXvKzwf6bqDJpgWXwgf6JLo=;
	h=To:Subject:From:Date:From;
	b=J3caMGQDf1pmj3bgv8Uay++7u2GSuCqBxbYmAi0dHMOmuNIRftzMvchLvaX8LWgxf
	 CY81wolwP6IZauxD5qt7IucqSlaZWMXG6EHI0oyh1J5iBe+BhcrlwsKhkIGOSDKgOX
	 3iVy5BcQlYSuUMI3kR3K27vkzFzzmiFNh7Gk06ECkeqH87YL0uo/DfAi8KAWV32AW7
	 cPA0W66OVbr2o824DOHJm4P1nZaDaXh9wJGjkB/x2YNJ8Ax+J9JNnsZujGwGi5Yaz3
	 J6YV8tgsZ+Vw8ACpgLWt79UBcHhLO4YzeOTdHg/fspT2pleMCiiy0q89zvsAUrQ+ke
	 Hd3adM676iw7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E55D68BDD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173181995360.28638.13510372721545186594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd2fbf7f3405a69779b2f432799d3b4ba07ddfff5a96a45ae488b431d2aa91c9
Date: Sun, 17 Nov 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731819953
