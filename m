Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2C84A0A
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733895354; cv=none; b=gG2nBU06bI8RC8R3j3KCKkdYynEf8BsCz3OrDJVAk8CeppMO4+MDZBJeJc8vscQVnzl0OstQAwzfRdfDM2nUHiXt0UpiSwBXKZ0vSwqVi8qZxV37EQUsk1kuYiyKY5vTuop7NNf1p+qCY6YLsUPm9dHzMUDrjaN9wVFaDTndBq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733895354; c=relaxed/simple;
	bh=6P6NgLwtHojxC8+4DtzMu62pXQf5Crq4TsCl+hNZ/Ls=;
	h=To:Subject:From:Message-Id:Date; b=KZBWtkLjBfN1ZbcN6D+z0FVAPbnWI5s0zi23E3l/QtRczdkuEdxvUok1piBppZttaH2Ah9L4sIqDtDNb7I1kL0tsI8bp1r9y1SVKuia2oSo52XNIpOYuDSlAv7wplFgWW23IAtDkZzYiDLXEmo/vKTATMkkVrvxS1a/YKlwz3mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQSfxiZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQSfxiZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF943C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733895353;
	bh=6P6NgLwtHojxC8+4DtzMu62pXQf5Crq4TsCl+hNZ/Ls=;
	h=To:Subject:From:Date:From;
	b=NQSfxiZKstOxekxDOnL862pD9urfNoWhmOXbF67MHlLqc40Hopy+QxNc+5Bao6Ccs
	 7GpupQNJW7jGGaQnFP+M1l6/dGInIfEfAj4eJm1ATOVXePKGCA6XFQxbmJC6cfAoNh
	 M4PYkMfQO5OpwbTWowkdoH//OIpiFXROyirfsHKt2PXjT/kMci8//b5jGsbFFoHUTT
	 C/Oa9EH6J9nk9d9UIfi3ZaXDZ3Vecw1UZ+w+4HJ/Q4GMUewY5lT/NKpIczdDYM1ozI
	 r7ykwaDSmUQFPt6MNHKuZQniwi/85udp8+XbCAV/OoGI5L7OBY/waIUh7eWlyTVwcB
	 f1yVrxp1y3e8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD46E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173389535363.20178.14574203393964399484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e771bd76b47d2c7bacfba382ecba0edb74de0b4be93a09ba52130a48084c476b
Date: Wed, 11 Dec 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733895353
