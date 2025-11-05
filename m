Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB1A28B7EA
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762328994; cv=none; b=ADPdBp9m0ae7P3AxOCW9/glympWVTEm/qwcoeIl6HesqTii2jyPzNNtEGJ3/pO9oWJp1ihN7+1flfFdN40I6/WAICSinfbGXjdjj7TiPMl4yRUR3wGFanOCCy08gxGOJXAQenuC4bNZB/aY9dnPiw309iDcLfY+M+D13Ul9BJDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762328994; c=relaxed/simple;
	bh=rNn7WNLNDJlDSXm82d7pDepW7s7iHBb7T3VgFj6sPUc=;
	h=To:Subject:From:Message-Id:Date; b=Rx++RGs/GdqW+t9gQdYHmwlqunO5wqu2lcLY5WgmlhCZPVg9JLqkvnGqJPYasEYZUe+LZiKRxtYmr2beDK7pbKG5Uh45H0mVOf4q10uaszwG1ek5UdB0SVSDMcdR2CAwFcaLNcRgIcFPTiZkkRpmgEz1FoCzrxSbNB2jSDAgWzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjEN/gTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjEN/gTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E8EC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762328993;
	bh=rNn7WNLNDJlDSXm82d7pDepW7s7iHBb7T3VgFj6sPUc=;
	h=To:Subject:From:Date:From;
	b=CjEN/gTBa7Tb6n4eMZzmNnO4q5BtUX4A6nJLljb3zhFeAFUUBqesRxRQJVpW0EfR3
	 PTqdeg7/HGoK0MfVQzP+Mwsu4gtCXVcKpGNivk4BWE5+2isbGscPYdzC4E5VyqU6sc
	 1exAshXKKZUWhGTmG4ArwfIteF43/Lcg+2+EMls1VnEbZEUmDlHOFHGH+XAGFkiZc2
	 3Rg3/MD+cKvTT9FmF6uoQ0viyepF7f5Re84LkTfTg89iCGof7N9hczHQI9wwICunCk
	 8sEM6GkYcllOMj8JaW0nzwrLUMCuLLzTwkjZuxlCNF2HJ3LPe+YhugDol5+Ck9VSUS
	 eoQ1l/0NlEXBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B29CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232899359.6610.10347478001205676511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ffbf3a67b2704555793413ba98cde2cefe10f67c350c4bccf4657205e70cd5
Date: Wed, 05 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762328993
