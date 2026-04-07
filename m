Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1884E3563DD
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775561134; cv=none; b=tNilZGVh8h0wAvS1xvQQaieBXBfR6ViOP2+pWGIHoRYiqd1APjulml8g/OfyDD2Zg+T/7NjKlbDLfnnFBdp3mOJo4lYgvmS1lLxnXn8xzyJtBouwXbtXkZHGm0lrZyTO7W99EhV0dPxIMm8olBtYczeSAP5kE/Qei+J1stYxg6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775561134; c=relaxed/simple;
	bh=Us8kNoNyetAtAH0TFv/7s9xumeISnBjLRCq3+I6TmhM=;
	h=To:Subject:From:Message-Id:Date; b=AiLqqxqmph2VXn/2ChUQDsVBrooX4AY/EAVtNMNjxVIq3DAiMaJv6JD3WtsfhUDwWaqtABEG5Ra1eTdh7DA2IjGwnD7UzOc5y7Wl1A9vqNu/PGZ6Cbu7SioneOFXXCtHKO1KP+GjlcjcBIYwRZO553QumjyEw1FfktEUKkEMLJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeK+ly4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeK+ly4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7547C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775561133;
	bh=Us8kNoNyetAtAH0TFv/7s9xumeISnBjLRCq3+I6TmhM=;
	h=To:Subject:From:Date:From;
	b=QeK+ly4q/Dn9mp0kmluudVqmuSzeNxmi3ATBPLCnifS7TZ801RqbJIxPDSZQsb0oW
	 gRG0y6KcUu1Uw7tKzqUseFh87Z25efZEPdviahH3Vv/UKw1ddTbj9P/bqjIJayTLAr
	 pkD4FaCb0u5logAt8tp6fCYfLvnrNgcpVsiQlhMKiMPFO41r1Zg7seXg4WBRbchATL
	 1X+y0mezNqfL1Xci3eqzhjLWTY09wtL7DWjZerrlwO2fJChrZ9jUirzeJYjbMwchut
	 dJtvGKl6GMnOtB2S6LX9ghaE+2Kgsdf69QQHabJcRUxUvz3vEDmvOR6LT9cdCdEEAD
	 cAO+zF2SvytLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C0BFEEF24
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556113368.8972.2478845138258564908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8207d5ed21d8415077c608138ac50a05db0c498b14f60c96e1f8cadadd9fa8
Date: Tue, 07 Apr 2026 11:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775561133
