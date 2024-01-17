Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008349473
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705470497; cv=none; b=pFa5QVWcdUNekCFUVaYuXDLAkV4Fon1mk8Lz5+fALMwWZos5YHgjKYpEFIkNvndpd4r+uuh+9yQrXAAoinz5zmryot/QHolUzaaBWIMODC0tC6Lla68TdeqdjgyKqBqxZy2vtF2RLAz1ylgVesFR4EJN6xIF4hkzk/MUmTr2Q9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705470497; c=relaxed/simple;
	bh=enqHFfF7rLlK21fk5AJTcKF4XH5BQtFclOxzUDTokB8=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=f3xWVYmFOVuYvWhkCILD9LJqc0UgcIJtNjMEzBH1k96o05AFY+lRJyymbd6sHe2+ob/GZg3S0quReldpiB/VCE7o7FzxGpnp2i1bkB5cTCXtJwYZX9IFjmyfmt+mWwYb4477k2hbUF2ZO1Z+1bfFLpPtbAiScAAZH3ZLi/Qaeyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjCFLIAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjCFLIAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A9DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705470496;
	bh=enqHFfF7rLlK21fk5AJTcKF4XH5BQtFclOxzUDTokB8=;
	h=To:Subject:From:Date:From;
	b=FjCFLIAg+3Po8DPdlKeuINy2mk/03OfaWiTm5AaPJ/lE1ZOcyM/djURk/WvILbEKc
	 U2Am0qOMyfj9M+kmMcPt0xjkG4CFCAhBgOcphkwLKuo3Fe6DW3MC9DKYvF7JG68p7U
	 y7dNu4QSlRsvc3rnkF05Jhklg1mbJexwHYE1ZrDZac8M8ugCquKdgfqEhKw/cDY8Dl
	 2nkNg3yJBOK4oemQ0kCYdm5OBtoKGyGWv7DGyx7qWHoRZtrjPVSGNi7kYYISlD4DUx
	 tNeeA1nU+cUtyWeRFWUDMndYdtOS1kBbDlkRnJ1ytfgIifrXVZaW7EdxmhS1Q/zdRx
	 DMbs9LrrlmDiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C5EAC47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170547049637.31382.6550802968558027496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d07dca8fe180b897e95a3f43d360a16f0e35d8b829aceea69b7781bd6cd434
Date: Wed, 17 Jan 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705470496
