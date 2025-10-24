Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1011FC3
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761283795; cv=none; b=UuYcJUMThnsD6Px3q6PoWTVGC465CG3Nlzy6/f2jQ4Gpm8RfZ6+E32m8lN/bcHWlw5ofwI4r5Em1dKyQX21zKUJ9tcDmLOUmXdoNCg9lyFAdrB0mSBw4QoBesIHygj3LOk236V/8QaGWuZTGDEglK+eAuRceJd6jGRZtSVUJAUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761283795; c=relaxed/simple;
	bh=H296Uwlzd+tHIHAxkIpvYX90IuyUZQTv5CPxxDvTJ1E=;
	h=To:Subject:From:Message-Id:Date; b=Akb3NQt/fnIQpyi29jYtBZihLxibsPZqvIJd2SLcha4e1dPbXvbT108oI76ri31HHZwJ3hUDGYsQN93hvl6AGYlnmXpQs1GgQzDl4ZvgPrM9bfkwtvypNKKqfniP5xazP9dPcoXlJTBrcZVxzLqQmB5F/LYo+CvBkcRIB76sX6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMHvXgf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMHvXgf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A029BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761283793;
	bh=H296Uwlzd+tHIHAxkIpvYX90IuyUZQTv5CPxxDvTJ1E=;
	h=To:Subject:From:Date:From;
	b=QMHvXgf1Ek1D3bs3GPO7VBsCrkt/EmNScfDF9PdooEcAfsVhQmDqVNucYLzXq6fQC
	 l/kDYN/Ud0V44oDJjO8dQoXQUyLr0WexZ8+SNJtCAY+ZZs3E3cnCwuqp1L6Lj2jPeJ
	 /nvZGnLTFa2I1DfxqWgfS1PvKjcEIEVROOPDyw8Y/8ICo6T0sMVkIpwulEuA9EnXvZ
	 kt1YcEZ6iTAq4un0LJVK2tuOphvxaU5yeKuUCRfl+/alQ7W4v42yryT1LyqYt9tmps
	 uZM8ZkIMJS9OH3FxyBt5BLMSVJuRcFSE5k6W/EtRxhzU93aIW3e0r+r54wqXXSKK2d
	 bqjhO0/nJD4Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D4CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128379357.28813.12525994414383625990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa1b9b3d5784236b20cb98aaa87850afca4846436bd2e66ce8946ba7384ab61
Date: Fri, 24 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761283793
