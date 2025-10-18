Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D51F1C28E
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760798394; cv=none; b=YHcSBDq3G3N046BRD7jTzfCTw67a0f4+twdu8u9ys3APxseA7krCo0/byfxeuy14mk6gl6Uv42+YcJ3yfhJSzLyF9UKT0b7S0RVuetcjeAD3ZHEHlLjk1ZiBC5OM5GO9QtXB2VVA+BWa6fSZ9pIZpUufbzeHgSLUMLoQJKbwdcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760798394; c=relaxed/simple;
	bh=Ms3icycnQmeMOqduH4AydNNX+/i2EwReKK9b6ZthDU0=;
	h=To:Subject:From:Message-Id:Date; b=L3J5ia3Yil8Mscx7Tc3L69CBeSDvGjW0SLgJN9asNh4Uq1TlIKeve9oQ9J4tSvAE5HxOp9XGoVb8XAhlJMHw/MurOoZl9Z+wjI1KwAhMuUymFcX7U9QjPpCPDyQ2huAGNVlCeS7Ee9I5JahbfxHDcSDVrDVdg/M9nWO31S1xdR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjQ0B9va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjQ0B9va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DDFC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760798393;
	bh=Ms3icycnQmeMOqduH4AydNNX+/i2EwReKK9b6ZthDU0=;
	h=To:Subject:From:Date:From;
	b=SjQ0B9varcgJW9bl0liCpRJLLSaOVqaw+u9g5WQdjAJDbUTvW7TPsjeDsdWsM5yFv
	 fxtgtjVVAX2oe+uIqH5cQyusmtqqAUbdPYcbGsmVVYfQ+Zv6LcfXcstuI0/ks988N4
	 63Cqh+HC3cz6YkBQjs32tBoFmHfW0U/UyHZCzkBqlDbuh/0HdFgabt4UTympbgO/cx
	 pQTM5noeUiyAxT7DmPdlTjfpMRrmioWDdzOBlHVwHuHvYpfNIx2NBLCF7UMCoLuEpB
	 oZH+ZoA+bvUQTthci1qvwyGwkfUnSsKYuWSw0zziU68zv2/iUJY9t6KESnjDBsXKiV
	 h9Orj7quHRO/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A1CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079839357.21631.17824202340163984812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22cb688de5c1c22ca14a4431e924d4cbb98d1d6e392cf81fb4c07c13b99227c
Date: Sat, 18 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760798393
