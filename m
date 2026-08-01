Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3489136197C
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785564634; cv=none; b=GJaciOuh8fGXnggAU/QPifGeqVFKhSY1EeRkZVr7byt/UpJ8GUgGgztDaCewlRJ7FL1ljD7gAjh/sLgtDhOllrmD2+UHMNHgRsvrTO6cHpVzzfFReXccMJYhmgx7okDYooJlZb7cIrrW67x7FWHdEb+SZ6GgDBF9hw9qD30ViUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785564634; c=relaxed/simple;
	bh=dPVihoO/Gj6x2g67o6KwNvluJTVMppRp/4vtbXZRerE=;
	h=To:Subject:From:Message-Id:Date; b=dzU/P+KCbx7JzZt7/y/l75Nb2xZEjZDgp6sloxFqEQiUNQMdo1AAD23USlKSG2zOx5K/yGOdmgj9MjSyZPiuCozYvq2oja9DmP/Kazna9PkkmrQOrWW66Pw1N2E1nNDyVlRZKZpGnENnjQ+eqpRkEf7RiM9xG89FUcOGxS+o1Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLHbJ6ox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLHbJ6ox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2F6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785564633;
	bh=dPVihoO/Gj6x2g67o6KwNvluJTVMppRp/4vtbXZRerE=;
	h=To:Subject:From:Date:From;
	b=kLHbJ6ox3+7q+R3FXYVE/jBhpq4HWRm3Q8Xq340+PAIfwmOvUkiJDkT64kADxBFFD
	 aZ68MzfaYxYd7CvN+vFBbWegNYJWpaY9dhsSbWwhIis69V8M3qvRVfSMIPAnTXLeFe
	 ThLvAYlTy+f5KqdGyu3CeBKkApUulZH/N55Qyerp7au17GWz97IUCm8jHvtT3K9Ha6
	 e6KzMBmhIb/D5c8OOHtOVdT9M0c5auVW0xRUmIH603QMqpmh/5Eh4VPDIVJ/5t8QGj
	 OPVchkHWPNDmgntogExZXeyx1uKiLMQT2JN4RnzgnUHf2jK+xatFGcOZba/JzM0qYT
	 5tXntPntJVyNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64CEC54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556463372.31886.7357379207144710894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3014d420e6868565ef8b6a40cb8a6e98eacf8dd5cf6218059e00f2035216d5b5
Date: Sat, 01 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785564633
