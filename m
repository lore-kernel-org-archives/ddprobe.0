Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1EF189BBA
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732262754; cv=none; b=ScNHq8WAHZLAS9zc4oO6pl8boXi9j4/abCl5ws0iMUQlsV9R1+5dJy8s5CczG9wORsTyhyPQTOcJ6AUwVd6rNxqtq3CXS1ak1s4CmCaiNaLcDrvgopmchINUG3yK6G2couyfUBVE3KONux2CDn9KmDRQ2agVMjM0grAmcankfTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732262754; c=relaxed/simple;
	bh=5Ez+YEmLRvc5rdtwRzcxoVpXEQPlS6Zbunr4DF94oe0=;
	h=To:Subject:From:Message-Id:Date; b=eEtX7i1ba/ASRHObvo13kUAc4ccf3iSvtR5Lf0W+Vk9KT6ziJFZ4Yo9ImsLKGCwkRE3yqxEd/4xjn6Iu5yTo4drXDGYqQovu+0hmE//ykhvHz4/dKxu+g301en9PdIgOOddm1L594dKbJuehKivNgwINwgXmmEQcjBIgGlc65LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKw/2JYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKw/2JYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1150C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732262753;
	bh=5Ez+YEmLRvc5rdtwRzcxoVpXEQPlS6Zbunr4DF94oe0=;
	h=To:Subject:From:Date:From;
	b=XKw/2JYlsOuiB4TjFELf+5dni4A+oDGVxX/3AxMM97SPX15S/W0wxxbY2ZacX+sqk
	 4p8sUDTfdvRZLMS/MH69yyWbx2DtpDu7yB985YiNZdZhy+nbIRKo1j9DiwOvqdtioW
	 R97GS+Tt7SCcmNUfoSZ/9QrSVBC3Z5Q8AArFXoDTvhe4WwiQtMVkhgOHvdUlvvPTmQ
	 6Ek9kIhzD4j+6v+7zxEO66jFJ6CgYDAZEkfzC8wc8Bos3Jj6s/8L4YFsQvJjfbWMnF
	 JuHsuo4sUsYs5+27IdNWX1gyAvTkXi7ZBwYJj/cqHHjv5YmK4MYPAtO0RxxOlkC6vW
	 +gO6h29b1Yv+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975B6E65D2F
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173226275359.24859.18013080282477472236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29d42d36cb0481d43bf7c3b12627c2679f0b01bd8ef2dc38622d689b6401b22
Date: Fri, 22 Nov 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732262753
