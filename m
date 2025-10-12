Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D0021D3CD
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760299194; cv=none; b=gQUWZjncOcXqTcGwPrwnEOayPgNGdF/6iq7+n1hLp6hxq9rL810q4ak45QlTmUyeTrP/Nc+N1NAOlLcchun8KHmDBWRD7YtYUsaP3E4loy4b/RbgRgDg2Gu8crikwGp65qnThKA5/8ABu9y6AB7oMqVijiKq7ptF3u8em3rk2Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760299194; c=relaxed/simple;
	bh=+cAAlmOVKqMWisz7nGxD8+N61dOBDUVloup+MWuy7dI=;
	h=To:Subject:From:Message-Id:Date; b=W2X9HOnKCZPG0p5BIIux3CF9zbXxQLaj+wq5Jczh2xo4CkwChEXN5BOhVEPMDBA+5k3OkvH+Z0s/hGWBDJ0uK8dCGGl2HEPBJVMtE8WUbA32xcR0h3KW3YlAa1NZHzDFdy55OHJNB+HL21VRz5V85IRi5DzXOb0Y2jssiN1/5Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1bVmjwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1bVmjwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB96C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760299193;
	bh=+cAAlmOVKqMWisz7nGxD8+N61dOBDUVloup+MWuy7dI=;
	h=To:Subject:From:Date:From;
	b=J1bVmjwHFLUXN0BUGPtY3dF7yct8Ym1KciKyQHhThHm6a+QSklx/lAkJBlKNMnQzO
	 mvHKmmyubJ0Vab3MW39g2XInm31InAB6rTsuREA/uPDBNu7lNCGgx1i3torfv73X+w
	 +iX/fPMHWU6dkvu4q9+exCqL2zcsDytl0loQw4Bp67ITo2vYz54l05eW9RuSk2iDXU
	 0hslYr8oRxAx7Otk0VrCiicJsFLfiT/i3ObFQdhrwiqxWic8TQkjbBpNDYTgGHSOUj
	 9T3uNilGJCTQ9TjN3yqlAZzL/ijk8C/r/gp3dbuwI/soRiPJoiKln8q6GTih7K4IYy
	 QiM4+U8aPC8BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E325CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029919357.24268.17080664627510416588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4884b6192067b6f8eea70732babd94e4ea2ec4226365b474eed13d1d10e2500
Date: Sun, 12 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760299193
