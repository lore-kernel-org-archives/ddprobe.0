Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDD04207F
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759577994; cv=none; b=KKduWZxZ5wrkPxu639YODmaqfg01bdeeJ1lOpoQ3lpVi1KXZt3YxQUIhn2q7oc9R1u0qVAmOLVJYl4R0z6wRruFt6RcjcVP+39UfEj7cupOtWmIPcG99Er5Qu3LoLlEZCSJ5tfOhqYklCIxccNcz8QwlhHTHQT847mVZ7q5ZW+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759577994; c=relaxed/simple;
	bh=/mSIXwPoV/WHuKN1uPND7225sO91yFDq2dA2bQtafKw=;
	h=To:Subject:From:Message-Id:Date; b=mw6Wps0LpsXmc0VPRcIynmrEHp+JWJen5wRpYD3P/wDl/JNLwgFidlAjjZm0bBpWgcdrT04ADLqz2ziVYDiF9u9nw00q+rORBjO2X6rJ3ImhJMQo5k7HTU/63U+yTlnTgbb35SRLYNPsCoAGAM8vHPklY1Z0U7lKj9IuoTsK3P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJ2MrnfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJ2MrnfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D35C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759577993;
	bh=/mSIXwPoV/WHuKN1uPND7225sO91yFDq2dA2bQtafKw=;
	h=To:Subject:From:Date:From;
	b=lJ2MrnfMUYoXdRlDjI9GKM+p3HoLBzoxX/zEFaggcJ3Nl47BN4qFfub3de2F6LF/J
	 +lHN8Vp9xQYadkK9Q8WeRle/BcEt0OMU/DN1D68AjV+JC1uMALiuTDYpMqJhoeyl3O
	 516hPggO97ZEofkyzJkv60Vj24H5xHTpCblxlQR6bcdFPepb4+gJoQsdUU3mh2PwZE
	 D7rFw03Bz9LzueJ9J5aVbD32pev6iGuVmk9XVzWQHTwIDjjg0Epcra5/Z4Ub0K9ruA
	 Z0ZSmvVTTkftcql5weKJW9vPctuziLmlurAZS0f+lOZXuplfK+9pvWg3T8s5ALwdrl
	 zd+qe9XuM3LPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F6CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957799357.23795.10030899178821798881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48bfe07cd9392ce1d2fa449383b396531e2539d8a24b91156e8e48b6f4c3ed13
Date: Sat, 04 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759577993
