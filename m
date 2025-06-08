Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3554D266B65
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749424794; cv=none; b=pnjdJnsqVY35q1khWv10+ge9cP4JoNzQ4UJ1+0A6WE/chcsxQL9AE+BfVSdBI+CZrATbXXG4VJYDjlRg+L3E4sbb+tRRA/F5ww/fZt8C+8uN7kxP6szM3SUmH44a/n9WOTQ55V7Tr3UpsfYfU9Eifw+hlc/yNrEkK8Gh6Secwbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749424794; c=relaxed/simple;
	bh=QptO6HO15RaiV33f4vriyP4gbK8Me7dEZK/1StbXEb8=;
	h=To:Subject:From:Message-Id:Date; b=fEUGurm2fQhF+JyTkFZ4X/9IbQa/CP31BzaqcIZtEM2GG22UAQYk4wFBFobKTRlJn2E5crxX5YCYiGebb9NwOQqWiHIAcx4nYWVTiBQ2d972p7iCni03/bfyE82AqRCIYS2Olejcc91YAdJ956/ibfwRZFgAbB4zzVCQxKrKCHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlpSR2kN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlpSR2kN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B9AC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749424793;
	bh=QptO6HO15RaiV33f4vriyP4gbK8Me7dEZK/1StbXEb8=;
	h=To:Subject:From:Date:From;
	b=DlpSR2kNI2Zeg7DfIjb+ve67+rPgqfso8kQiKlL/naZiB6Za/6zrkPuJH0ZaWOaEV
	 Jb6ZwxMh8lGWbLnO5iR3xOPJHrt6p/BY3UtdS8gG5T4Zx05xwymViU1tkGr261Os8a
	 MI7ATyscXAZlkr6oZR/zCxLhCxceSUyphwFwS7T0yUjvUjiXwyUlM0PL71GEvXh0X9
	 MB76jJ4Tw3FO+fx5KA4f3RKscku3b84txLBlH2oNonYkTyBBcQJ5yhoGq6PALxXTD5
	 F2x8KOH/Wv8E4tWAwfTNu1POlpq1K6108z2QAq9DZanNO5r2dWnZ0PtSr2HU2MwJco
	 KHKXWRN9et1Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB24C61CE7
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942479357.20191.12014316199496926771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b413aed3ac3313334d2cfd0675dceebd54205c82d27344c621edb40ac51e2530
Date: Sun, 08 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749424793
