Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E34F3B6C05
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788018034; cv=none; b=hun5d5UBDrXvxAmf4exquFHBijbS5FgN0n0Jy2w3bs3YeraSDtNpRlZ+lKd9CtQp54G4VF9aPSA3P1cBJvULhqJwJH7R9+gdtwY7yEQVLD+MPgEwH9vokSJnFMkAJIZQ+kgCz8XqSKTPyc2OEJSnYSg3FZAs9Tmi/Ib97GjVu7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788018034; c=relaxed/simple;
	bh=SXfMSuQf/PXaHayEpDcRXBVotmCcdxKq03bDMuHxYlg=;
	h=To:Subject:From:Message-Id:Date; b=ha9bdrzEz5h/UeJrIsCo0wgl+/y8n5bhn7RmxoQ3K1OprTBshqxbsgUiYU9rGQl306HsEtnMQHJbFLraNzKWp8n0zselPEgYjWXG5mqELyac+nHF1YeTMun1V6XjfCVsqYYTDFLAyUllWQ7eFgCFgAh2OIQKTrnrhwEcZhMRQtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2qH+0Ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2qH+0Ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4097C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788018033;
	bh=SXfMSuQf/PXaHayEpDcRXBVotmCcdxKq03bDMuHxYlg=;
	h=To:Subject:From:Date:From;
	b=s2qH+0CacPm8Gf01YJOWX3MBUZzKmkS2zCahcCY0BHtv87DHtWELozBydGSnIkNoU
	 MmtNN/++87UeRfjRLUYZ+//qwfUT4689eo/MWgwcz8odIiVN9u53Jp6Ehf7p2/ffas
	 aADGi3VviAlFFOyN9pWvSF0l2i6tXRL4s5eb7s/oXIh7d4sjV9BsygTVQLkh6wky+z
	 1WfiJCfsnmN/WnD+i1vEEEOsJl1btme2smcIloHYiPjPerm+0qD3y6DfHet6OrF+DQ
	 0XG4tMuEjN+Y0ZVz0QTFSjvbuwubZVRnDrLQ3GbKq4ZR+bW2KCHgzY9phg5XtKWw27
	 0oaU2o8X8dfwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD892C61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801803368.1304.17615239924818317552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002c0fa8cf8a9c094234ac9df1ca8dc0107541c89e1c246e2cbf76628f06ee2d
Date: Sat, 29 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788018033
