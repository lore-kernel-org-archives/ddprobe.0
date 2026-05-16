Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD1C3E3C46
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778946634; cv=none; b=N3Fml4UgVePtMuZlh4rI6BQxVFXkYN7xqV48L0y1nelegBWpsgxFbdR184BFsZi8XfRNyHyEmlm4CSgEFfezZnMTFBCwKUPDzRFtTcczzCzS1w3KujeQ5Z545pDsBrZoYozP5s5mskNvq15AhGx66d3s8dWEAeFB6srRIY/LS6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778946634; c=relaxed/simple;
	bh=OVjoB/iqvGOiC85Mt6yGP+/2jdkKOEtFvEB85nJGdfw=;
	h=To:Subject:From:Message-Id:Date; b=pBJwakaiV7y0f4siEpo4uKduxZxB/QG8xK/rpNbaoha8EDaD5m928xLVZ4DCE5Lb4kVVVhndkDr07y97lpm6HrQ2eANnzhKGmy+EQQQOn6tjnSTON9Jsv9xKdeYfesgZRpQpNsiohTe2gice8I4jRbTqgkZNAMk6Brksj4I3tJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFy+N9GH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFy+N9GH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C470FC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778946633;
	bh=OVjoB/iqvGOiC85Mt6yGP+/2jdkKOEtFvEB85nJGdfw=;
	h=To:Subject:From:Date:From;
	b=SFy+N9GHU12MUmarrK3pQF0+QfWdDgCM7OHXb59+QII8MT5Km5dBCssPz2vlfM0tq
	 tc3cOI1+Sirh1JnHdfF+Gnxa0TQCZuiUdxRnlFmlglpUiYjpAmVaTfhI2XSfYPAWVX
	 ywN81W0l1ttxN/H5P7LZvOKNLZwKP0/SP9n3Wwkp86S497HT6TPTHMDMczo9+lducR
	 UgWxeqvU11KPZ4Z/+XuzI5Mz225tKRrnFL47meRUYKBjMYKg6ibRCT2V551Q2AZHed
	 81DlPvBW05Iz0Ncl2vkfi1Jir3fWlrjmP7XY6ja9zI0RQV0ZAMNxInQG2sdw/ZtlM9
	 j2kzyU+xmiyTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1085CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894663369.964.7912243300011894653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673e1faed5f28da338d9eec7c1c84e2c81a11ffdf4d197178bb0c115efe67f39
Date: Sat, 16 May 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778946633
