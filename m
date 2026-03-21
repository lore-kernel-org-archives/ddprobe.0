Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3158A3246FE
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774064694; cv=none; b=Pm7x6pucDFgcmJZPF7yEZzaiH21b+vv9sKeNfDdKiVeu/wMwBhSzCSf3fSnJcNl3glgl/KRU88q4sPGY8CEymybNlF0yDckgOjLCyawyEtY4i43FzBcxjD7sdL3KbXVgBFeWV+Yx0gUirnMCkYSrfB68HuOx3dcHRjb9213j4X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774064694; c=relaxed/simple;
	bh=cfBZHPhNH8wmORkPpQ+UtbeFiZzEIgoZNqbcuVQ8aQQ=;
	h=To:Subject:From:Message-Id:Date; b=hOPBo/k9aa+GqWApNK5gnKL1ga9eIbWjocIf/UyvUVYD5mgbiuU07ntSFHjmGSRt6gIwctgtEZvbHGYox1+WnI3cVimJTOhmWp0g3g8uvj9WhMECniusZ/Jcy2mZJSlbfMlD6SUdEvTZdeX2rZ17QZhEgVwh9K6W2pKvDnzsCGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4jOiNRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4jOiNRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A423CC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774064693;
	bh=cfBZHPhNH8wmORkPpQ+UtbeFiZzEIgoZNqbcuVQ8aQQ=;
	h=To:Subject:From:Date:From;
	b=V4jOiNRqRhYO5IlWSeMtvvPNRp6cWtvbZqemzSPA46zIaq97QsI2s9Zy34OgVY+BI
	 1qocM2Ny2WIpoHaHcXxIaR8id4a2SC+gGwPiNSLVGkp+KDagtvjyv3dPx/bLyPqSS7
	 0PsOg6E7dbZnwhJPEYME21k2XDuGKP/dyNFldYtPKZaAohs3U1Gk857xSuUBOLnC9l
	 KD8vpvZhlwq/M7iXkuEnaDYZl2VPiAiQWurMHPJ/eYt9sLLDnD6NqBQRLoNhO+Sdnk
	 K6nySTdd85+JGAUY04EeWWyfrGm5p4eOD/slNLNM/mFntMtswG0MUWqayUYI8rUSsR
	 Lo5ELzRnh9zMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9127E1093170
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406469357.22547.14897212400351858477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5648a2085ef7383fd4f560819f7c67490e2b2ccd147cf24dbbfbb0893fbdc639
Date: Sat, 21 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774064693
