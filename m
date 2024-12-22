Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB5913C3CD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734862554; cv=none; b=UThzq7Zg3y+aEPne4og/fYWIbcbAN1m4Wp2CdnABRbM6iSYK1P+BaFs8r371RipKp967BMher+31Z6RUsGov2KSNr4XApvqEKTW4wvn57kC4T4GHWavDhPwGUzAF09Qt76GosqMfRFHEhZXFkB9vhOVuxHZIh5ntvwiU6OkXSiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734862554; c=relaxed/simple;
	bh=i5AZ5glja2eBKH/XAR/glnYdBogNIM7KQUCdGpNdf6s=;
	h=To:Subject:From:Message-Id:Date; b=nmONsRhipUqaWzB6lzpEMnf8OubcgT04spkpozGyrgiwO3ofGlA8LcO80WWth4qgs1iIYOOvanC1E+9ahu0IT91EnV9lVIX/0UTsJFWHTxY2LPRY/hpAEe/vHRO9AJ0eSFw6rQUlLOjXTFTwQAe7H0XgWjaO9izFj+sRqLrFsVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eH0CW6Vd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eH0CW6Vd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3657C4CED4
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734862553;
	bh=i5AZ5glja2eBKH/XAR/glnYdBogNIM7KQUCdGpNdf6s=;
	h=To:Subject:From:Date:From;
	b=eH0CW6Vd3ed8MtdGOabRlwvpZfSX2ptzkXibJYUL7SxpxPFWMCCWOggw/quLHON/q
	 cT4rpB105sPIUY9Zv3Zm4bwT9cDPoDlgb+DqxleCC5XLM9E4+5qoFULuWdb4nsS4Mg
	 +umQ2ziDJR8LI/kkcNgu5JxcMoP9OfH8tzzHDjh5roUMw6noDoNzvAeet5TgAVo9lr
	 qJWCfi9CasUvaWIMxv3wba772CuDzXYvUl0qO+8xqdMqjb73fmI5WalGyeCnlSQOx2
	 L8RCGUz4mV4U3R5DdvdHtDat0D/8iQikdh9OEYnw+/SEu7GLjsr/pOZD/yKXguNb5C
	 0m5TFprmnZCNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11FDE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173486255362.3940.12683925213128046913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0634d14c54632a653bde0ee233913f91363ba71a70e93e1693809bd878ce15c
Date: Sun, 22 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734862553
