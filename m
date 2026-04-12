Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB9381ACA
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775974654; cv=none; b=cOsHgE/t0h6dmzMxhEDQN6nQ4Nk2+CbktAe/BZwzvFLbUpKbixXBAoFu9KkaEA+cz/X7NlBTzUBiIlvIRkSaN+bfGsQET5IyegPTXMA8LxsHmLq47eGYn3mY5KvaekWoqTsINver3zVdlSUNb+grwt6sDi2dCBkCu/FNucnA2T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775974654; c=relaxed/simple;
	bh=IsNn8E5d0gqG6LPGqXGKO27EPpVEmJt3ap4buntR2Uc=;
	h=To:Subject:From:Message-Id:Date; b=C6JYOuEAxKY6gT7IKFQd9oPbIEuUCi8DhifR0zvtrNoiL7cGhY3aIX7z6f1LhVlmWvJLliVbej/HLG0sv24+jvl3yJj+UtRYu0J3w26LU1e7ZcyZm50LuDsuh7TTLEpj/LjzElBqJow1W07JB0oIQm6p5ulMGXPPZm32tOUJywA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPm0iqNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPm0iqNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4779C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775974653;
	bh=IsNn8E5d0gqG6LPGqXGKO27EPpVEmJt3ap4buntR2Uc=;
	h=To:Subject:From:Date:From;
	b=iPm0iqNStuPBNMDCl965RyyrMleFtKwA/maV7+Ftu8qBSvjk+5FpN+NWKUWEPABvu
	 SR4cjC+WcsLEmA0rnFURGxx0VG/SD7oaICyeoKaDlSjO9cDWYW9B1C5gOP2rcfzLK8
	 wukfY5cqOc5fhibB55VjA1F/20R8TGPzLw/1qco7VbwIoc/QcYSv08qzJN+ohHVsE4
	 dLbv0AcwetlcjLpuSXeCxGADCflMVeilYSqVXvavRPmPXrUb494LXEu5qcjrVAQ+Vj
	 I0kNh8drBSUumSp2bXY4BOUDDVoU5l24malHMP3tAz2DwDmG5k/n3+U5DoS382AdHq
	 tJO2yT9nizd8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AD6F3ED6D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597465369.4846.1677233435506064469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3eb704f42fcb43c4ef07c24a61f1b19dbecc9b9ba5bfd5dca57014d731f976
Date: Sun, 12 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775974653
