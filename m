Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EFA35C6AA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789969834; cv=none; b=QXhz3eo8GpgbF8KyvQLTUy+uq5hQK27VVx0uO758EouoE6c+i3yaLAh38GMR57AW4h8ZzdiqyF+zweJRPxbeDh046EqgHrBWTTXzdTzkO16+RsDw5CyV3u6U1hasOljqdm03kQ4fGlSAISuSLp7VsTeAW5zhOJygEcFGPumJ7Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789969834; c=relaxed/simple;
	bh=fBBcAF1pzgwyQ/Vgy9J9DcFPnSnhiWLY1Wzwnb0H6yU=;
	h=To:Subject:From:Message-Id:Date; b=kWLQezc0bcmkPJRgnbg/Wn3Jn/5AwAbvIpvWDKmepH9f4mUwVgGnPWR/xyYTzlNliby9heLszUhfAXO/k52aLxwptrmelB50+j+XFv8hptc36EmeV7nKvnZMZG6sETkrSVEGHGyZ5Y62D9LYep22h+/NbBHKbHeL1xbJB/VLdfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptumk8H2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptumk8H2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF205C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789969833;
	bh=fBBcAF1pzgwyQ/Vgy9J9DcFPnSnhiWLY1Wzwnb0H6yU=;
	h=To:Subject:From:Date:From;
	b=ptumk8H2psKKUzHN+Y4pZhgH4ocmUnCwPmfwTd2aoB1tAR6vnmNMkFfhBDkgw1C3U
	 7QPNalcjMUMP3Syj5aGoXbYkeeDnujPXL1zdmSX7JCbrwd1epCFlaw48wEOaxpu/AW
	 iT32XKEsECT1aW0Ua0EGya2EEXaGl5m8C3FBraOaKYtt+avHb2UAeeMTc9cmKmzK77
	 OZK+8/iU7OL+83LApW7HZ8ukwwoT1PWBqPuLLXbQG3tDy0qDxcPCW+PbRRBIAdxtjt
	 p7MbEuPoJbwok74gGzyGiigy6JsRYWQXF4UeWya70chwwEEfmJjrjoSmuQytGRemxz
	 C3ineAJnXwWnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8B6C982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996983369.28215.1056245760727529633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13be1d1d644ace97afa0a859c34ea01d583605f5d7e8fb09a18c58c70d6b0306
Date: Mon, 21 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789969833
