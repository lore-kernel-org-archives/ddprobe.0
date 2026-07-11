Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4938425A321
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783759714; cv=none; b=cbqTofX1PrRBioW0YCFb8USlfVobL4JxYqgeVZt0miyoHdLeWbJdzP8cXalEcV0Es/HveuZtJRNTuJm19wcBJOZyGcw03HZbdpy/ZVIu4Aq5ZwYctW320beeM0LTmNXDlx7JQTjFmyGlCG8f7+YNOZLPS3uf5+ywjEjA80TngMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783759714; c=relaxed/simple;
	bh=rXIhPvxJ2iK1C4Ww00g0Ltuayhb1KCJAnesgltEkPew=;
	h=To:Subject:From:Message-Id:Date; b=uEITSWKrFexayMc0QpqQKzMY7jG3MEUBkhKTH58SxbKyrFgxxUL+hGvXxJ9OJjyd7uA3IRdUf9DOig0ccC6gK4A6sthEKE0A4X57cx/tUNGItA9PVdLk1idPxZUCmu2MZ5Jpt51Gxog/NIlWJgtkWq4hHFhN2tqAIW53XxYl4C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGUKaD4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGUKaD4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA13DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783759713;
	bh=rXIhPvxJ2iK1C4Ww00g0Ltuayhb1KCJAnesgltEkPew=;
	h=To:Subject:From:Date:From;
	b=AGUKaD4kSjfiSRCZXtDpqoDslU7FmO2ZKbdVDl0faCR/c2ctIWucMT8q/DmdqwvUM
	 TJW7THDrI0L2oBSPCob59Y8w/vVcXyb4O+bqAfw/wG5yLzqhC3rhqW1gLzi5KDzk6w
	 XcbXecNQ1t8oAod30pm5YbDw/9wrBi6vHWN38FQdzAZlGuS4qn+xXcIT67tuWWEE7i
	 MS14q6PbX+g1JRG1yZSy8EokjDmRrNnop8LMXJ8VIKSXa05hyw27lLC4cognUR/bbR
	 OykqwfF/yoNVW44RjRp2t+f5cux4oCyB/X4tA0eCvPqO4NHSsUCdnHCjxT7MPbNsNE
	 5RNkejFtuxs7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87BBC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375971368.23043.14158643953827779582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b598fdaf1c1f14de0bf48ed4608a3e08d7468261c5f1a0149440861effe3ac9
Date: Sat, 11 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783759713
