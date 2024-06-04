Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665AC801
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717529183; cv=none; b=FybYzJH92xAhItjiP2P66QRohH1v4r/EzLG2c/456UvaOCDDoZtXnYeLzYhYXyKvs7Yr9iFvrhRU/KzqwP6/jq1QdMRR7vDA04cNb0hk+YIIz/ZUrVjFSRuXIq7i2j7sNCGqCwXZ5MoEgKy6pKff/PaHh7SrTWfR1zmICuTJgRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717529183; c=relaxed/simple;
	bh=BGJiaMwngeI27djkz3Jw0ggNjaFm8FOdaPmtMMPs8c0=;
	h=To:Subject:From:Message-Id:Date; b=stgtovYvKH50/vWawx3waMnZL1YsG871Zow1SbhV8pbbJSgVu5iBkWvztAQZGGyHrTEiKNX72Tn70BoQ+SkI6lL7fDVi/NVaOWpVSnIZrZBXN40OGQrz9Hr6e0N0KWWQZkubqWaz1XYew6qYHDrXAfAlDDDz0ImUr7VnIflYOmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWDIPFEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWDIPFEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D05C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717529182;
	bh=BGJiaMwngeI27djkz3Jw0ggNjaFm8FOdaPmtMMPs8c0=;
	h=To:Subject:From:Date:From;
	b=JWDIPFEK8Z8rk1SAPRfoV8adi82l0Ev4pWokp1GduXqcMgdJ63gaJDfuNMSWcnjOA
	 yt/D0TkxC6c2eqflWXkGdLMVEdYIok5FbOvqrzT/SBgKJlQSUP8zcRSqbH0WEbLso1
	 fxTPql0+KI4R4fbnuWx6K7NafRI8/jshMkyX75NBvuhZmJiq5BLNk+HgYlMC9dR6pw
	 4VzdXYNd8XxMfrb9tD7Jh7PU5hxRlIjR+a4h4r445RC2KIBSpxL6ZTJF7BLkFPq68p
	 5b2eubqubHgFXiB89oWq2uIhOggTfLu/N9l4FLVhxfCToKzls8uMgWsW32nmO/ATYv
	 mZGAwpe58lxUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D26DAC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752918285.10853.1112437818205531335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f41922e2df4553d82877f2f56c4b57b0143027a5b00258544effcb2555ff149
Date: Tue, 04 Jun 2024 19:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717529182
