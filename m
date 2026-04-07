Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE39336883
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775589934; cv=none; b=nc3+DYmR6dALmJfEmOFmEqumkiNbaok3dViKbWSYKs5FUyCDGAGvaIhxvYE2XJv4XyQfOT2tYnv2a+c6uiHL6+4/5KkONI2QmUGeiJVVHn8a1rqPheFbvluspeomyLwye4RtC6fxRftigAjsVf0LJLE8H8Hm1EJiYlKJotxZ7mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775589934; c=relaxed/simple;
	bh=ksHapOJMBgPVxC0okrte3yKXW//46t0i8BHSaxaZ0LQ=;
	h=To:Subject:From:Message-Id:Date; b=fstmFLDJ0iFchhx4mb07CkwNCWH4QhRa1/KxaslJTVypzoy3mAP3BXvtCAn53xY4KUfI1RTBoi6H0H3SFz4FyTyhOFlUicZi0WgBiFgDsH076bZcDFHr2QqgaVgbonKB9xE4Phv895POokqIZPnGXImIljfhiJQLZIm8LPJxhRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWmWrSJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWmWrSJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAC1C2BCAF
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775589933;
	bh=ksHapOJMBgPVxC0okrte3yKXW//46t0i8BHSaxaZ0LQ=;
	h=To:Subject:From:Date:From;
	b=BWmWrSJlJZFsc4JG+C0voRkT6J6sC2Dl20K67RDZW3JHQ33YO5pbZsodzMxECdukZ
	 P3RCXVO852EUtFVcPaIok2sbXGlcN5hN/BHMKvc/nDuauAOKnWanmElEyu8nDJfO2A
	 U/UWGjx0YyIDkii8yu/c4ECrcGsdJb7yCsNX7OrJB2oMPC/R5DfemIh/nQQwtd49H9
	 aSR9aSSoTybc9bYeQQqzOIUixM9lFemE7siIN6wBZEkJ6Z/LPXiO7VEbgjIv0RKrXx
	 I2cdqN+/tkpWz2SEhQScIl08rudRQC2wBleJUj3dnmgod1zdRyrCnjk5/cptsaRgVs
	 UvKzKaHEZ8XPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB989FF5136
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558993369.822.5862932822243695482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc8069c428e1c4c08e158a17500729661a07926596189c487a987512cff3e1d
Date: Tue, 07 Apr 2026 19:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775589933
