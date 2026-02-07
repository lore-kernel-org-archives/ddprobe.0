Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B22330B13
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770430434; cv=none; b=a83myje+KeaM4IRCazcdOEx0/TLtPUO9CXhUzwtF4vYdriogjHHCsoHFi9Nmi54qx3dhvDcITev67QG4YC3YNC5a8858AXEEZiWjGa4Q4+69cl9BXVZmOZb77RiOKREh+dsdnEz9pxvbyK7cna/ykJY4ISDCoRXZSnecKXG7Sxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770430434; c=relaxed/simple;
	bh=qh560WMQj5WY8y+LpL7o1YvhljcEd6CRmOQTefUTFjc=;
	h=To:Subject:From:Message-Id:Date; b=AgC0byt/f2D/aAVQC6Ac+Vo0BDiZUq17FAVZ8UAJYFX6VnVJpOyxItiqpzWKU/HOHzwbhlts/1nEqvn789eeNzUHgyt5w9618CZFIGTkCg+6axZxg3ufPrFnqQlh2plnjV4nhB2zphEW4ie+pSH3i2IJf9XXBOugURvEJwkOyag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPsYAsfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPsYAsfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0B5C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770430433;
	bh=qh560WMQj5WY8y+LpL7o1YvhljcEd6CRmOQTefUTFjc=;
	h=To:Subject:From:Date:From;
	b=qPsYAsfxdRVIIVL/Hezc4HoI5s2mggVNcKhdeLopkEPQmVgE3mOuDdQnCzP9Bxgbr
	 lPNtiNGzcACa6LY3TsepFMtlq9kdcrWjhkW2GDah4+UHtmtYn459LBPT3ZQgRtK3La
	 QCrdNzZDHVYPARiyjhBuYKKJHJ9fkfKCUAZ0gP5/mEtKbKqlMQ+mc949SAoC57Ea2d
	 DkCXUFSDk/5DZ6UGWsVOzt81l4LEfcPZ5x5P1hxePq903nYb4oAPdKAt+7rW10pbPs
	 wJje5b18BtPI53eTJbgPs9bS7Br7qUbs8ssZAtYxYoYv7q4rW5NWQXkniUIpLtGjFv
	 MlMWdhkhBNraQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A47AEEE6B6F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043043366.17970.10178783287995090646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be1b80c7da6833386db2fa9ae7a6f1bcb076981a10fa9b1263dd9bda8291596
Date: Sat, 07 Feb 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770430433
