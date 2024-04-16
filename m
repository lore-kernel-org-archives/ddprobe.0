Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A72867A1A
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 09:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713260963; cv=none; b=ddC7BYG6/1YK9BFL9KViOrxwlVw+Y6eAjIEHqENd7D6qAzwAJaGz1zxmY6aCb/Vdyi3j/cPOE/Heplv2V0OQK1wyR+7nEkrU0v5uqfa2sTD7OOv4hiAxVcLJuoyGZeecEnVp2O6qeFmZH1/N4v3WFuEpCezpQF/XXvVWZfCEPRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713260963; c=relaxed/simple;
	bh=acwO9lRud/8ZFA1koZ+Y+QWquI/DONZMxPD7QnHNrp8=;
	h=To:Subject:From:Message-Id:Date; b=qQkLA62fHAa3UVQQqVvj3dy3e8fw67HOFSSBOnCHDVLDX+l8LtonpCyeBsgGNeWmtRKlRe6pxkOH0nFa5pwPpQsoGK/XzgDDXvPUvn5gRy2cU/fCH296wPDSTfbUBMwxUjFqhmggdLYOLiHa909GTyzwwsDl2KPoO8gy2E9L374=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtImk8Rm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtImk8Rm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58C4C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 09:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713260962;
	bh=acwO9lRud/8ZFA1koZ+Y+QWquI/DONZMxPD7QnHNrp8=;
	h=To:Subject:From:Date:From;
	b=HtImk8Rm4xmxAmO1698Z/idKAgp2Zc/qjkJ/XfWbTH8oQJuemfwin9s+1SSNlkUOT
	 6sZmufYgSW9IMBOovHKEpd36Q0LJzXwNGMjFjfpW7zd1cz1CEXFxD2oZEy5yNT5BKO
	 4CilrZJf1mhjhoAUZtI8pKAzNq+D7WMqSxClp2quYzeiyxzoanLWJkGzB9LDOrkRSK
	 mN9KgKJaCnMg76brj4sfPdP62EF4BtvPtx2OGaO0jWsLa8nsnKEHzawBh6PZ62m0VP
	 /MgZiUixABdNQiueYQbRJmqJiYKA2da3LpwSiJoStjQ3e2K3X6JBZPu6jcWD3RSwaN
	 eqsWDPX2U0g5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F12C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 09:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171326096278.9762.8145802669057067785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115a105ea639fd2e307fbfb5e17e408d9f959a5f1aad35780f88064fc36dda17
Date: Tue, 16 Apr 2024 09:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713260962
