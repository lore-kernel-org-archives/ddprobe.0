Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2AB2F260C
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789249834; cv=none; b=dhSgZUH1ExsrcTmIFKdyq2rZzQZJ0N9R/NCtWsVfdJLaV9Frn3hAM+DEf3xzndagiJxzS6HDZ+3eJ9Ux1jA1fh2fDTLR0GGysMZOrdZ/kYUqUPdWOvgD6B6D015qmtXkQX6hct0OiU6fnSp4mpcC17LKzK+Bqng8JlMX0JMCUiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789249834; c=relaxed/simple;
	bh=iTnjjGeSBBYKRoipdASOcqKGnMgEA834H0q6p+m1i9Q=;
	h=To:Subject:From:Message-Id:Date; b=mtT7HknJ9yW26/r1qCnvHvjLCFBRMHhn7W+1mYqlJQRTPHO0tmdOFv7+205AeCc7OC/OIh8MYtBJQFn2NkfrdxeyWMasaRp2gEqXUWOHeI+ZAb1AgH5/D2yeAEpPBgNOxQayEArS8MjtulHhDP0h29Inci3y0fwAdbMsPBAeSRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k82JyE6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k82JyE6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAA7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789249833;
	bh=iTnjjGeSBBYKRoipdASOcqKGnMgEA834H0q6p+m1i9Q=;
	h=To:Subject:From:Date:From;
	b=k82JyE6y26EYzZ4qjcqFX+OjwafehcE/fWMiDXUX6lhsJ5YLgimI9+PKGIw+gpWpK
	 ek7NbYggIitt7Ezlq88DtMg1iNeo+M+PAkzQ0I92JECDl6cUam96p4vlm8QOqVjdeK
	 m2mc5Xaze4zncM8uh8wrRlip++NvTyAONlmTbK9eL2RWgNDsDrV6W6ArlIT4dXF/O3
	 o4xvpKoOjF5ILT2P04q8cCcq718s6MlrpQMLUoAMi7z7GqnjBUNy2Go7VJFZj9jiKk
	 MxAA2Xm+LJhVtmae4tVOMJ6fU/G4MSW7iXgFlJdKvl8/8pwlmsd2Ml6XQTfzjRkM9C
	 Vo64WRQEJVmOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B8DC88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924983368.4505.385597285442662248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621a4d54e8f96fbfc4bf0b71a5ecc8005dbdfc3aa1b38ebf0791dcbfc3715f59
Date: Sat, 12 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789249833
