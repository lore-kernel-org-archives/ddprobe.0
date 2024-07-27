Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3853B4A1B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722100554; cv=none; b=ecNhDYJ9GeBPsyKjoOTQldhsTaWyIsA/L/lYxGHCprzcSJDDIWQ6HGLpvXArjoEEqwYVaWt1v+l4EB3ou0O7RPCos/4gLQjucJDzxwS99CoSE+kqqXrTTviv7V51haTfP54q6dadLek47kdcozEBdYm/MSJByfZMuFbIy66m/x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722100554; c=relaxed/simple;
	bh=Ru3BYlCfS1I2Mrj50uI4+fIicM8IoBBhtrPjimpZ564=;
	h=To:Subject:From:Message-Id:Date; b=qZEdcI2XTxC+BbUkf+LjBBBhcZbdFbeJjxHT7DFL3NIFk9Mx8slmg3Dvi9ngXKYHUrNRwtmC8AqevdVeGSuwpcKM2qAUWgAbW6QXAGKlXf8Taj0uNljf14CapYrSyrWprX91Biu2cCpGPBV3vF/G7Wv5ayqXglr0U8UJMRc1yBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGYPwK3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGYPwK3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66CFC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722100553;
	bh=Ru3BYlCfS1I2Mrj50uI4+fIicM8IoBBhtrPjimpZ564=;
	h=To:Subject:From:Date:From;
	b=rGYPwK3OYhm9z8cWujEoJzxAfGHWcoXArIPbMIKVFR0ewMN6JsEhUPEvyN0y6OO5o
	 2N56EzNOVH/RYBdBe00nHplszof0490OvN8Oko2cb/Ts1o4n4PalNy9TcJxhhQMB+e
	 zh/fb4DY6E7Oi005zCUT8Gd15IxYBTog2KFbTljjlSlzwPUoH2b+Yn308dOA3Qyv4A
	 oiDvRTOnkI831RC47DpFVQAr36ltMUbbTknODkLVCb5dmEv4nRfEE+oq1fu1LN2zuY
	 IvitlUNJSWHHUOM5Pav7n7Vx4QSXusBujLeLcPfeQqTx9Nh+V9mMuOWxnpj3kL1tcP
	 u6azBtJ/zMUgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D00C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172210055359.22638.2012707189531118144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b19e9e3889a21e22d00e45e8de1773a6c24ba86334bab4f911e86d711ef658
Date: Sat, 27 Jul 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722100553
