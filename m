Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513A123BD06
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786764034; cv=none; b=FqePwKBFlqBk4VV79Thg94xloqCLtbnpQcby655wyYeb9xsxJ+fEScKUHbpTg7TLUYBY0LrhNzKSSWE6BC+HEUu5TrBXz4dXzpRfCX7NJ0uAe58WNIhCaoxFtrfOHS5dY9LQJEqMAYQbEdPfc7ThM1YAmTfy0HRTa1sPDJ0PMXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786764034; c=relaxed/simple;
	bh=+43Zqe5exaOmf4fp0JCkVyQnINAf18OX/1roFRXkZDg=;
	h=To:Subject:From:Message-Id:Date; b=Ox434Axk3cKApxqi8WzHSY2BFS4NSu6aiaLyOteA8KTjZASNzWVrHUtt+xjc12Q9csf2ikVQvzQHw39BnYyf9GmaPizOK9VrjNswYrZOXV/MiaKUWVC2KHrToKf7lb7nEX5JjIzW1mTQQvnhluFHjrbGylJHbjkKbpDW2vA7slA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9i2S1J4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9i2S1J4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C19C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786764033;
	bh=+43Zqe5exaOmf4fp0JCkVyQnINAf18OX/1roFRXkZDg=;
	h=To:Subject:From:Date:From;
	b=L9i2S1J4p+Ol4yCrNvlwDCIbyPwqiCW3hctGcUA/g3TkzmBK3dcgyH0nuJ7+iaMwS
	 kHCiFJyES3L21Q+QUf2OUoA3xAjlCowNeaLjnaYxBaThjnLtTlT1Wog4JEAmeAYTZU
	 upFUMNWHZnvWOz6LxmAP+CoYtNA/r+wZQ4x9erc+zQPh/ek2v/FEeKfcVbAih35/jC
	 PDoLuhB2PdDcNOcMce0I6odsT/m6/4QGX/LK9FVs93CAGvtsYSwPLQuxjWYjNZXff1
	 Un9/FXFHxFa3hq9QlwDNg3f2DK2eIpb/tjTZM1c+tXqlpMySNM600Pk6MoxNWvoWNE
	 5XD6TjEvBCThw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD845C5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676403369.30412.9132125919268132223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f481b865f6484ea0fec8f3be54a67130cdc1ddeee61f7b481edd5bf971bd1e
Date: Sat, 15 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786764033
