Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423CF3612E8
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791012034; cv=none; b=DT/akoQ1N6DkTBW9h2UUalMUh/51R3dtR/qmcF00Lc6gZxikXE8e40MDg3X8HOmjlhaUCJQHjFy0HSlP+8erlpn7huLELywcGoAADGTIhrBrdBNjXK83/84GOhifggxBpNXpAknnfxiLs4I3v93XR3CGIVQYZ/f5DUHULKpU4co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791012034; c=relaxed/simple;
	bh=ESLlR5hHU5onRneSuYVtAnZJ9RrsSyDBW6yRT5pUfM4=;
	h=To:Subject:From:Message-Id:Date; b=cftfQB/6XqNUHQm8Rr9/HFXhNWpWqPfk36uxRE9YAEH62BUV1ArWEqffdtmjAQ6/XiDhG6kj2haoVp36RcisVES9ikfqkAxSUu1XSKVrdRIfapx4yFE3qY2Z6zkOPht0geoxahHaR7jAaBDQQ9MnKfv1IqYaALTsZ367xuTcAT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cASzeEkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cASzeEkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC260C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791012033;
	bh=ESLlR5hHU5onRneSuYVtAnZJ9RrsSyDBW6yRT5pUfM4=;
	h=To:Subject:From:Date:From;
	b=cASzeEkYh9iEa998FPoz7i5DR2CGS1GcUn44P4h7ZMPW8UlYoPvkj/l7xdW60UWmw
	 TDLqQcFHMWnxD6LtKGEyi1CHzncv/dVTzXJlSV7spjADwyaiAsJaz6CLyhEozlS73r
	 YbeMV8eBR411j3UsMnBdtu7gVL+ApJasPAXL20xXuQJqMpTtsBDP12N4RImFfH/wf6
	 RdyUWMqzZb0zOZRRrz95z04Vkffez+1D6VbgFilkpKQXcYSaxMr7PxK6dj+iYc7XGX
	 rwPJBjto2w2nTJLW92gDrMiOydtUP/MR2zVBMYULryA6v9Qe3+M+Pf6G+pUD3sIXDf
	 A8x9Y+mIBiHIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A957FCA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101203368.1528.115516554725008338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fa4046500e74fd3e029fc930e9de5dc8fdeea4d96dc3b2c9e50dbdceb3914d
Date: Sat, 03 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791012033
