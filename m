Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACDE13C3F2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746683394; cv=none; b=fQPohRJ7NTK3BVKL027a9FXeFjVd+elHkCg6zkrVJQ2EkTDswjQslToVaKI4+TujnS+8SQYjIiYySpdAxjjMc6EMJ+tMCvoesCbPirOplWDaUBt6bWCqpicoQc3rAPQpIq2C+vZxnv4Heh5Gtvo4EDiVUoLKB9iuITR6QqV5p68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746683394; c=relaxed/simple;
	bh=rFi6UFZE850B7jX2ffrU+XSTbv1G/4tZp9RTwlMbc6o=;
	h=To:Subject:From:Message-Id:Date; b=XLf0468b1xo1cyVrqFljjowViuFT1x6GHlszCrP7xs3KuH1A2Ou/EUnEnJimv0y9aJ2+bcv5hqY2OFsocScjU06NF4yTYV5qu3KZOSlhW7cJHbhTflNv9LkfRvbgwAit1vEuaSoyyv4vA0thG8Mnb0tkxrhwFbj19Qhrer0aMUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGtRnPhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGtRnPhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8DFC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746683393;
	bh=rFi6UFZE850B7jX2ffrU+XSTbv1G/4tZp9RTwlMbc6o=;
	h=To:Subject:From:Date:From;
	b=AGtRnPhD5kc3/1YjqluxzAyaTaUxEnOtFpVQrpJIXNHj96JBE4hScvLqJm4ncgWc1
	 60oqJXMxtUhsV/wXfKOf12Di+R6BCrm3L+mwOkZK8cSbxLs436zftxZdCOUppi7gtI
	 Umn6kbuHVU3PE/ct5o461LUY79M65tZfAR/lPN8/T3d2/PQXotX08Nr1op6yqFhtJa
	 v1kXUbplZe7ns0VJS3pX+U8R5Orp+PujKbpLaIKRdQtiCUS3Z5+gAOKF11GkKxCsWp
	 Xw6fsU/7M6llngvlraGBzV8Awu+pBPZBi3vKY2x/xfBV0Zh/jAD6Alm7i5NbaLFHQu
	 rYjryslovkmnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E97FC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668339357.17212.1184473064204582368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a7267cb7116734ebb4c0d217d4ecd1e89cad2ef1215c49639862ffb15da06d
Date: Thu, 08 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746683393
