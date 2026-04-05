Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96DF381AEF
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775418933; cv=none; b=QB/7IQslrpRgSiJoHkWCcv42xEoTI0EeC50oy0qJMzi4XCa7C5DNiGdy67B9TrFDmx1qCD50NapspPmpiJTmME4NUiYyPxdIqXOXWGZtC0foLNnXKhJj5sYQzHuk3zm+AFhnZYWiLzkzEpj0aAGFfXWPXbWvITcevLbipIlBYwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775418933; c=relaxed/simple;
	bh=Zg2g677nmurmhC7XNg86Lu9KhPEcUkcMY2FfaqoLZ90=;
	h=To:Subject:From:Message-Id:Date; b=fXgc160jNpbJOJ5jslClrCtkIjrsSlOgguikaPz3KL7TxtDCgvz1huBia2ZJTvktkqbLZ+kQ/Lt2qyxUmFjFYFkz/0VrdKhF2qWOK/SAJL7xmin/vkO3rp5WKibnk2+aiLhR6q5m6fuKW6MASLWyeLVDGxBBBQcNG96Z/M7U7WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuWtLSSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuWtLSSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD021C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775418933;
	bh=Zg2g677nmurmhC7XNg86Lu9KhPEcUkcMY2FfaqoLZ90=;
	h=To:Subject:From:Date:From;
	b=JuWtLSSCbqRktZJTQfIdo3F/bq5wEAszrEZYqAMLgT9W8NAQjMgj9iv5Yl9b6zP6m
	 /GGUj+NylnIdXUbAiTTlCc1TTHfdusMV66xBGf7E8/U1xf38LwnhJiaAtV0EO/KBuG
	 GOiguQj1BnZ6av+7gSh3rKpDGkpOS7zZJdc2imIFf3dL3KyDXI1L7VEhEjj21cCHs/
	 ELJEWo5yvR1qwiJsW6p/KiB/hVlQDDl+5RMu5xRgozrjRocWnh/Y7QREaXneA3LO8j
	 RVWbdd6S0wWzQpi/4pDoqZQ/3L39HAqvpjNUuA3fOAYnEtVIjqI18HJKUEJu6vaIQp
	 Pj98BadtkfH/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD38E9D812
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541893369.28821.11573927030201523863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a126c6d7592ac5c27f7c8f4d15f668f3c80363129e4921c4e756df2240749a
Date: Sun, 05 Apr 2026 19:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775418933
