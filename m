Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA573E8C6F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783497515; cv=none; b=i8A3nQ/D37YbefBE8unTIYsgEhQgFdee5igF+AFteCXdsturvuAKhv1KpjXD9DehgV3P46Xzu0j/6PbkNRIfjMu9x9DqjEXz5odCk6pzNlfw6ElLd8FxvsvcftbNdV78Gj7Pdjcb+LByKOhpGv6LYhfxQ1XoWsi9pn6EAcZkcOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783497515; c=relaxed/simple;
	bh=KS+ZnLbArfkS5/3EeGWkJnQajQQ09ItAkUMlHmsOCsk=;
	h=To:Subject:From:Message-Id:Date; b=dKLXqUpI7svc4Tb0D+R/3x6HinW1R2LI3VufeqmVVRzPfMnJZt8XzHHTGd1lT7awBHVFioYAp5QU9volrmErTNjEA9zVi2NsAvtpmAxl4QtwU0sxuBdvQtgaMkRK1WCwEA96A28Tg0jpAA4rdbZMDMqt8OfP1g84SFHQm4grnCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4EBKUmw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4EBKUmw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5B9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783497513;
	bh=KS+ZnLbArfkS5/3EeGWkJnQajQQ09ItAkUMlHmsOCsk=;
	h=To:Subject:From:Date:From;
	b=e4EBKUmwr7sUVIb1ecWlr+M4ibY2m9EHyVaDzDQpyhpGbmlwdUMLRw+yw7H/+emNU
	 rY5TiOUBbUsddZvzCMdpUhI10SPejx6bfmNy0XypLh3x2RC0zJtV5WUwZ9mTVouDsN
	 3o0qlotvhc5RGPHRQDlfetOoLIBZZUvHdfEqtb9Pyc9huluEzzw74jf/ouzsf5gMbP
	 L4IrQzbqzri4dKyo6L5RIWpGwelfjGJq7V8wF4wCBBpieVp43M03rgCP8/1r2kNJHF
	 JjoUwrthaM3rdUUufQSN643wm89X/gO8iGZ+gfH4jNX9dqu9vwXZs8nztvHfRhswG5
	 UhpMzyZiNtIkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8698C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349751368.24594.10379002569837962864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343e8412b70b9d5b353b8e6e57a36427c2b2c59b32199200662442aa9754fbd5
Date: Wed, 08 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783497513
