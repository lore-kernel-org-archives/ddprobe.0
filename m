Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E8D2DFF04
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751994594; cv=none; b=Fg+J//l3p7jsoAUGWqyH/YTDDPmGbNDjJmh/wvZqQi08sYkc/QKfhcqf6sicae1R1V79E+ILTMJ+FaW3mg5Vk4G8PGdn+EWRxV7+6/Ep30pUf9UtHeY1WUWn4ZrsAk8j6mGAKMtYcT7wW0hv3wb0daKZaiy2GHSSFr+WC28ezDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751994594; c=relaxed/simple;
	bh=LjrTC2BkpmtSpyuW4LLCaZkqPL0X0zwSZalRGlflqEA=;
	h=To:Subject:From:Message-Id:Date; b=GXtIIvPRSFCOc1cNx+sDQkoZpEZ1o7bwevJ5fmFok+AsSsfyuHbYWavk5V5urDVNNPD5cddtVFB5sjpVtywXnTvYdzdEd60p+EYfmmGpsQYALoUEUJxoENrn4HmpyBm6xSJLe9rX7YlRXeqWKgjJF0CHwFAykOE/v5MZlkj1cEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2kFrrd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2kFrrd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48E0C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751994593;
	bh=LjrTC2BkpmtSpyuW4LLCaZkqPL0X0zwSZalRGlflqEA=;
	h=To:Subject:From:Date:From;
	b=f2kFrrd1ElM4Z+OizuPbzXWm5HswopYKqZTc5yeA8I0SeXL+p5h/5BZym4KyLh8Kf
	 jyUkCroDU2Kb6pjAVauXKi1Uf8J2RDXYESwfWYz/zCPYIs1VbsXoDMZg8EFap3U/Mp
	 DOsofNSyiO3I+NgSpz5BrBKJKOkKjWHdU1wgd/ito02Sj7bY1Y/OxK2/VhLhUYW1aJ
	 GxkXhRpqJ0hb5MgJodRYXL9cqirVFRCPw0qlVDH3NlD/9lRNUJj6Ol2Omc+7M0db2r
	 atzkp/z6OQq9WGWblmRdfmHiBbJ6zq609Ax7vvrli5vETdjQv6gtaO9mkiFV8KdI+x
	 IsEWQDvBwsHOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E69C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199459358.25351.8492361488810422172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965c5ae29f0b91330d5655713689b4196c5815687c298cfc1b6b94a83c9f54a2
Date: Tue, 08 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751994593
