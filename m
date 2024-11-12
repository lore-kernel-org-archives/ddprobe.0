Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE8C2139A1
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731433554; cv=none; b=T1hdiKPqi0nEgpxWo3rb3zfZnEY3zUk05bSGakZw7KtcVbSH/e0MVOhs86Jj8/XYNT8poPi6tvTNWbm/97BFDWFUYb3iw8+7omi6eV4TehMyfQxVTG0RTpner59fN6hSYLXM4bkT3EfiA/9HoT2kOko5vYd43bDsKBChSttu+FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731433554; c=relaxed/simple;
	bh=IR1EP1aLFk3AkJwFj2sZZvyBJfJxaE7/7G0wDq51M2Q=;
	h=To:Subject:From:Message-Id:Date; b=WGS4ttbaVTHu4PbJIJbazi1E9nf0QreY6k/jm4u6tfejtGJD3oTDeZZ2yKPGDLEytYRD9iCojb2qqbFVnVcaY6knhjk9Ayl6SnMWfvaBi7oppZ7BN44kpvbP738JMf3wrO8OBdMBJ3lFpikMfOjnP+HMNqRsiyA3/D293aYd55Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLqJpqF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLqJpqF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBDBC4CED5
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731433553;
	bh=IR1EP1aLFk3AkJwFj2sZZvyBJfJxaE7/7G0wDq51M2Q=;
	h=To:Subject:From:Date:From;
	b=kLqJpqF8mh6HAkptcwTB0ltLuCZVmGTAF8fZPfqhRkLhpuBy/LYpT9mCYLVs8NR1Y
	 Gv+ZrhdzQNoNITt0nBmhbe7d9AjA2js2erh1vs5J2Ehakebw1H03IvjprOP/LuDBUn
	 sfgjZHOCetStXrqMEJO+W7kNTgsib2fBXRF4ld6KdKQ1+KOjXJUDt3UPvDts8ThtSk
	 uByGTOWIXH2cT5CTXVNwAmPfwbqLv0E9tTbohFq6fTWSFswaoEVqelIrDFje9JhyhJ
	 jqTjeOoEUL6u9UdNE2SnljOuskm/arnDsnV5+ZGdmhzG/qgOZXebdbk5QQQu49ludU
	 BnwFFO+Z3N2Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A893BD42BB7
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173143355367.19608.7862126703656148384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c4e14176e6cc8a90ef332d527076d55f96caded9c17d117d458e188c6456c4
Date: Tue, 12 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731433553
